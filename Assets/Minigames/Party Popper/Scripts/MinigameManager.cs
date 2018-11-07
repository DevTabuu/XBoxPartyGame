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

        public void EndGame()
        {
            List<int> results = new List<int>();

            List<KeyValuePair<TeamMember, int>> sortedScores = _scoreboard.GetScores();
            sortedScores.Sort((pair1, pair2) => pair1.Value.CompareTo(pair2.Value));


            for (int i = 0; i < _globalGameManager.PlayerCount; i++)
            {
                results.Add();
            }

            _globalGameManager.SubmitGameResults();


        }
    }
}
