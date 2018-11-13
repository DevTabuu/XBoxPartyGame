using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

namespace PartyPopper
{
    public class Scoreboard : MonoBehaviour
    {

        [SerializeField]
        private Text _display;

        private float _displayTimer;

        Dictionary<TeamMember, int> _scores;

        private void Awake()
        {
            _scores = new Dictionary<TeamMember, int>();
        }

        private void Start()
        {
            MinigameManager.Instance.GetPlayers().ForEach(member => _scores.Add(member, 0));

            GameObject[] goalObjects = GameObject.FindGameObjectsWithTag(Tag.GOAL.GetTagId());
            foreach (GameObject goalObject in goalObjects)
            {
                Goal goal = goalObject.GetComponent<Goal>();
                goal.TeamMemberScoredEvent += (TeamMember member) => AddScore(member, 1);
            }
        }

        private void Update()
        {
            if (_displayTimer > 0)
            {
                _display.gameObject.SetActive(true);
                _displayTimer -= Time.deltaTime;
            }
            else
                _display.gameObject.SetActive(false);

        }

        public List<KeyValuePair<TeamMember, int>> GetScores()
        {
            return _scores.ToList();
        }

        public int GetTeamScore(int teamId)
        {
            int score = 0;

            foreach (KeyValuePair<TeamMember, int> pair in _scores)
            {
                if (pair.Key.GetTeamID().Equals(teamId))
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
            _display.text = "Player" + teamMember.GetPlayerID() + " scored!";
            _display.color = teamMember.GetColor();
            _displayTimer = 5f;
            _scores[teamMember] += score;
        }
    }
}
