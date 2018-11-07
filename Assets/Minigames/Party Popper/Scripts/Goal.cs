using PartyPopper;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace PartyPopper
{
    public class Goal : MonoBehaviour
    {

        [SerializeField]
        private Text _scoredMessage;

        [SerializeField]
        private float _displayTime;

        private float _displayTimer;

        public delegate void TeamMemberScored(TeamMember team);
        public event TeamMemberScored TeamMemberScoredEvent;

        private void Update()
        {
            if (_displayTimer > 0)
                _displayTimer -= Time.deltaTime;

            if (_displayTimer <= 0)
                _scoredMessage.gameObject.SetActive(false);
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.gameObject.tag.Equals(Tag.BALL.GetTagId()))
            {
                Ball ball = other.gameObject.GetComponent<Ball>();
                RespawnScript respawn = other.gameObject.GetComponent<RespawnScript>();

                Score(ball.GetLastTouchingPlayer());
                ball.SetLastTouched(null);
                respawn.Respawn();
            }
            else if (other.gameObject.tag.Equals(Tag.PLAYER.GetTagId()))
            {
                RespawnScript respawn = other.gameObject.GetComponent<RespawnScript>();
                respawn.Respawn();
            }
        }

        private void Score(TeamMember teamMember)
        {
            _scoredMessage.gameObject.SetActive(true);
            _displayTimer = _displayTime;
            _scoredMessage.text = teamMember.GetColor().ToString() + " scored!";
            _scoredMessage.color = teamMember.GetColor();

            if (TeamMemberScoredEvent != null)
                TeamMemberScoredEvent(teamMember);
        }
    }
}
