using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XBOXParty;

namespace PartyPopper
{
    public class MinigameManager : Singleton<MinigameManager>
    {
        private GlobalGameManager _globalGameManager;

        [SerializeField]
        private Scoreboard _scoreboard;

        protected override void Awake()
        {
            base.Awake();
            _globalGameManager = GlobalGameManager.Instance;
        }

        private void Start()
        {
            List<TeamMember> players = new List<TeamMember>();
            foreach (GameObject gameObject in GameObject.FindGameObjectsWithTag(Tag.PLAYER.GetTagId()))
                players.Add(gameObject.GetComponent<TeamMember>());

            foreach(TeamMember player in players)
                player.gameObject.SetActive(player.GetPlayerID() < _globalGameManager.PlayerCount);
        }

        public void EndGame()
        {
            List<int> results = new List<int>();

            List<KeyValuePair<TeamMember, int>> sortedScores = _scoreboard.GetScores();
            sortedScores.Sort((pair1, pair2) => pair1.Value.CompareTo(pair2.Value));

            for (int i = 0; i < _globalGameManager.PlayerCount; i++)
            {
                int placement = 0;
                foreach (KeyValuePair<TeamMember, int> pair in sortedScores)
                {
                    if (i.Equals(pair.Key.GetPlayerID()))
                        results.Add(placement);
                    else
                        placement++;
                }
            }

            _globalGameManager.SubmitGameResults(results);
        }
    }
}
