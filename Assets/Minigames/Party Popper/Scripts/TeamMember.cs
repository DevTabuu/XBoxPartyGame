using UnityEngine;
using XBOXParty;

namespace PartyPopper
{
    public class TeamMember : MonoBehaviour
    {
        [SerializeField]
        public int _playerId;

        private int _teamId;

        private Color _color;

        private void Awake()
        {
            _color = GlobalGameManager.Instance.GetPlayerColor(_playerId);
            _teamId = GlobalGameManager.Instance.GetPlayerTeamID(_playerId, MinigameMode.MODE_FFA);
        }

        private void OnCollisionEnter(Collision collision)
        {
            if (!collision.gameObject.tag.Equals(Tag.BALL.GetTagId()))
                return;

            Ball ball = collision.gameObject.GetComponent<Ball>();

            if (ball != null)
                ball.SetLastTouched(this);
        }

        public Color GetColor()
        {
            return _color;
        }

        public int GetPlayerID()
        {
            return _playerId;
        }

        public int GetTeamID()
        {
            return _teamId;
        }
    }
}
