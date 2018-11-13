using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace PartyPopper
{
    [RequireComponent(typeof(Rigidbody))]
    public class RespawnScript : MonoBehaviour
    {

        public delegate void ObjectRespawn(Vector3 respawnLocation);
        public event ObjectRespawn RespawnEvent;

        [SerializeField]
        private bool _automaticSpawnpointDetection;

        [SerializeField]
        private Vector3 _spawnLocation;

        private float _respawnTime;


        void Start()
        {
            if (_automaticSpawnpointDetection)
                _spawnLocation = transform.position;

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
            if (collision.gameObject.CompareTag(Tag.TILE_DEATH.GetTagId()))
                Respawn(2f);
        }

        public Vector3 GetSpawnLocation()
        {
            return _spawnLocation;
        }

        public void SetSpawnLocation(Vector3 location)
        {
            _spawnLocation = location;
        }

        public void Respawn()
        {
            transform.position = _spawnLocation;
            GetComponent<Rigidbody>().velocity = Vector3.zero;
            if (RespawnEvent != null)
                RespawnEvent(_spawnLocation);
        }

        public void Respawn(float time)
        {
            if (_respawnTime == 0)
                _respawnTime = time;
        }
    }
}
