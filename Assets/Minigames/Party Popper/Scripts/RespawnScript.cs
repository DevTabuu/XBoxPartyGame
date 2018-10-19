using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace PartyPopper
{
    public class RespawnScript : MonoBehaviour
    {

        public delegate void ObjectRespawn(Vector3 respawnLocation);
        public event ObjectRespawn RespawnEvent;

        [SerializeField]
        private bool _automaticSpawnpointDetection;

        [SerializeField]
        private Vector3 _spawnpoint;

        private float _respawnTime;


        void Start()
        {
            if (_automaticSpawnpointDetection)
                _spawnpoint = transform.position;

            _respawnTime = 0f;
        }

        private void Update()
        {
            if (_respawnTime > 0)
            {
                _respawnTime -= Time.deltaTime;
            }
            else if (_respawnTime < 0)
            {
                _respawnTime = 0;
                Respawn();
            }
        }

        private void OnCollisionEnter(Collision collision)
        {
            if (collision.gameObject.CompareTag("DeathTile"))
                Respawn(2f);
        }

        public void Respawn()
        {
            transform.position = _spawnpoint;

            if (RespawnEvent != null)
                RespawnEvent(_spawnpoint);
        }

        public void Respawn(float time)
        {
            if (_respawnTime == 0)
                _respawnTime = time;
        }
    }
}
