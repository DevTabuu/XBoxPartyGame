using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PartyPopper
{
    public class TeamMember : MonoBehaviour
    {

        [SerializeField]
        Team _team;

        private void OnCollisionEnter(Collision collision)
        {
            if (!collision.gameObject.tag.Equals("Ball"))
                return;

            Ball ball = collision.gameObject.GetComponent<Ball>();

            if (ball != null)
                ball.SetTeam(_team);
        }

        public Team GetTeam()
        {
            return _team;
        }

        public void SetTeam(Team team)
        {
            _team = team;
        }
    }

    public enum Team
    {
        BLUE,
        RED,
        YELLOW,
        GREEN,
        NONE
    }

    public static class TeamMethodsExtention
    {
        public static Color GetColor(this Team team)
        {
            switch (team)
            {
                case Team.NONE:
                    return Color.white;

                case Team.BLUE:
                    return Color.blue;

                case Team.GREEN:
                    return Color.green;

                case Team.RED:
                    return Color.red;

                case Team.YELLOW:
                    return Color.yellow;

                default:
                    return Color.white;
            }
        }
    }
}
