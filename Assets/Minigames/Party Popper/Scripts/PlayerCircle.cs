using PartyPopper;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PartyPopper
{
    public class PlayerCircle : MonoBehaviour
    {

        [SerializeField]
        private TeamMember _player;

        private float _yPos;

        private void Start()
        {
            _yPos = transform.position.y;
            GetComponent<Renderer>().material.color = _player.GetColor();
        }

        void Update()
        {
            transform.position = new Vector3(_player.transform.position.x, _yPos, _player.transform.position.z);
            // transform.rotation = _Player.transform.rotation;
        }
    }
}
