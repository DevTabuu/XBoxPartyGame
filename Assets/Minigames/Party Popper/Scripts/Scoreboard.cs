using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace PartyPopper
{
    public class Scoreboard : MonoBehaviour
    {

        Dictionary<TeamMember, int> _scores;

        private void Awake()
        {
            _scores = new Dictionary<TeamMember, int>();
            _scores.ToList();
        }

        public List<KeyValuePair<TeamMember, int>> GetScores()
        {
            return _scores.ToList();
        }

        public int GetTeamScore(Team team)
        {
            int score = 0;

            foreach (KeyValuePair<TeamMember, int> pair in _scores)
            {
                if (pair.Key.GetTeam().Equals(team))
                    score += pair.Value;
            }

            return score;
        }

        public int GetTeamMemberScore(TeamMember teamMember)
        {
            return _scores[teamMember];
        }

        public void AddScore(TeamMember teamMember, int score)
        {
            _scores[teamMember] += score;
        }
    }
}
