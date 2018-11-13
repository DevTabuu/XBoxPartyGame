using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XBOXParty;

namespace PartyPopper
{
    public class MinigameManager : Singleton<MinigameManager>
    {
        [SerializeField]
        private Scoreboard _scoreboard;

        [SerializeField]
        private List<StageScript> _stages;

        [SerializeField]
        private float _secondsPerStage;

        [SerializeField]
        private float _gameDuration;

        private GlobalGameManager _globalGameManager;
        private List<TeamMember> _players;
        private Ball _ball;
        private float _gameTime = 0f;
        private int _currentStage;

        protected override void Awake()
        {
            base.Awake();
            _globalGameManager = GlobalGameManager.Instance;
        }

        private void Start()
        {
            _players = new List<TeamMember>();
            foreach (GameObject gameObject in GameObject.FindGameObjectsWithTag(Tag.PLAYER.GetTagId()))
            {
                TeamMember player = gameObject.GetComponent<TeamMember>();

                if (player.GetPlayerID() < _globalGameManager.PlayerCount)
                {
                    _players.Add(player);
                    player.gameObject.SetActive(true);
                }
                else
                    player.gameObject.SetActive(false);
            }

            _ball = GameObject.FindGameObjectWithTag(Tag.BALL.GetTagId()).GetComponent<Ball>();

            StartStage(0);
        }

        private void Update()
        {
            float deltaTime = Time.deltaTime;

            if((int)Mathf.Round(_gameTime / _secondsPerStage) != (int)Mathf.Round((_gameTime + deltaTime) / _secondsPerStage))
                NextStage();

            _gameTime += deltaTime;

            if (_gameTime >= _gameDuration)
                EndGame();
        }

        public List<TeamMember> GetPlayers()
        {
            return _players;
        }

        public void NextStage()
        {
            int nextStageIndex = _currentStage + 1;

            // Wraping the number
            nextStageIndex = (nextStageIndex % _stages.Count + _stages.Count) % _stages.Count;

            StartStage(nextStageIndex);
        }

        public void StartStage(int stageIndex)
        {
            _currentStage = stageIndex;
            StageScript stage = _stages[_currentStage];

            // Collecting respawnable objects.
            List<RespawnScript> players = new List<RespawnScript>();
            foreach (TeamMember member in _players)
                players.Add(member.GetComponent<RespawnScript>());
            RespawnScript ball = _ball.GetComponent<RespawnScript>();

            // Setting new respawn locations.
            for (int i = 0; i < players.Count; i++)
                players[i].SetSpawnLocation(stage.GetPlayerSpawnLocations()[i]);
            ball.SetSpawnLocation(stage.GetBallSpawnLocation());

            // Respawn respawnable objects.
            players.ForEach(player => player.Respawn());
            ball.Respawn();

            Camera.main.transform.position = stage.GetCameraLocation();
        }

        public void EndGame()
        {
            // Sorting player scores, parsing them to acceptable results and submitting the results.
            List<int> results = new List<int>(_globalGameManager.PlayerCount);
            List<KeyValuePair<TeamMember, int>> sortedScores = _scoreboard.GetScores();

            sortedScores.Sort((pair1, pair2) => pair2.Value.CompareTo(pair1.Value));

            int placement = 0;
            for (int i = 0; i < sortedScores.Count; i++)
            {
                KeyValuePair<TeamMember, int> pair = sortedScores[i];
                if(results.Count - 1 >= pair.Key.GetPlayerID())
                    results.Insert(pair.Key.GetPlayerID(), placement);
                else
                    results.Add(placement);

                if (i < sortedScores.Count - 1)
                {
                    KeyValuePair<TeamMember, int> nextPair = sortedScores[i + 1];
                    if (nextPair.Value > pair.Value)
                        placement++;
                }
            }

            _globalGameManager.SubmitGameResults(results);
        }

        public Scoreboard GetScoreboard()
        {
            return _scoreboard;
        }
    }
}
