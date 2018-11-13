using PartyPopper;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace PartyPopper
{
    public class Goal : MonoBehaviour
    {
        public delegate void TeamMemberScored(TeamMember team);
        public event TeamMemberScored TeamMemberScoredEvent;

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
            if (TeamMemberScoredEvent != null)
                TeamMemberScoredEvent(teamMember);
        }
    }
}
