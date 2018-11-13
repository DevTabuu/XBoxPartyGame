using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XBOXParty;


namespace PartyPopper
{
    [RequireComponent(typeof(Rigidbody))]
    public class PlayerController : MonoBehaviour
    {
        [SerializeField]
        private float _speed;

        [SerializeField]
        private float _kickForce;

        [SerializeField]
        private float _bounceForce;

        [SerializeField]
        private GameObject _playerCircle;

        private TeamMember _teamMember;

        private Vector3 _movement;
        private float _kickForceMultiplier;

        private Rigidbody _rigidBody;
        private Ball _touchingBall;

        private void Start()
        {
            _teamMember = GetComponent<TeamMember>();

            InputManager.Instance.BindAxis("PartyPopper_Movement_Horizontal",   _teamMember.GetPlayerID(), ControllerAxisCode.LeftStickX);
            InputManager.Instance.BindAxis("PartyPopper_Movement_Vertical",     _teamMember.GetPlayerID(), ControllerAxisCode.LeftStickY);
            InputManager.Instance.BindAxis("PartyPopper_Movement_LTrigger",     _teamMember.GetPlayerID(), ControllerAxisCode.LeftTrigger);
            InputManager.Instance.BindAxis("PartyPopper_Movement_RTrigger",     _teamMember.GetPlayerID(), ControllerAxisCode.RightTrigger);

            _rigidBody                  = GetComponent<Rigidbody>();
            _kickForceMultiplier        = 0;
            _movement                   = Vector3.zero;
            _touchingBall               = null;

            // Registering the OnScore function to the Score event of each goal in the scene.
            GameObject[] goalObjects = GameObject.FindGameObjectsWithTag(Tag.GOAL.GetTagId());
            foreach (GameObject goalObject in goalObjects)
            {
                Goal goal = goalObject.GetComponent<Goal>();
                goal.TeamMemberScoredEvent += OnScore;
            }

            _playerCircle.GetComponent<Renderer>().material.color = _teamMember.GetColor();
        }

        private void FixedUpdate()
        {
            // Calculating the facing direction based on the x and y input of a single joystick
            if(_movement.x != 0 || _movement.z != 0)
            {
                float angle = Mathf.Atan2(-_movement.x, -_movement.z) * Mathf.Rad2Deg;
                transform.rotation = Quaternion.Euler(0, angle, 0);
                transform.position += -transform.forward * _speed * Time.fixedDeltaTime;
            }

            Kick(_kickForceMultiplier);
        }

        private void Update()
        {
            //float x = Input.GetAxis("Horizontal");   // Debug purposes
            //float z = -Input.GetAxis("Vertical");     // Debug purposes

            float x = InputManager.Instance.GetAxis("PartyPopper_Movement_Horizontal");
            float z = InputManager.Instance.GetAxis("PartyPopper_Movement_Vertical");

            float lTrigger = InputManager.Instance.GetAxis("PartyPopper_Movement_LTrigger");
            float rTrigger = InputManager.Instance.GetAxis("PartyPopper_Movement_RTrigger");

            _kickForceMultiplier = Mathf.Max(lTrigger, rTrigger);
            _movement = new Vector3(x, 0, z);

            if (Input.GetKeyDown(KeyCode.Space))
            {
                VibrateController(1f, 1f, 1f);
            }
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag(Tag.BALL.GetTagId()))
                _touchingBall = other.gameObject.GetComponent<Ball>();
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag(Tag.BALL.GetTagId()))
                _touchingBall = null;
        }

        private void Kick(float forceMultiplier)
        {
            if (_touchingBall != null && forceMultiplier > 0)
            {
                Rigidbody ballBody = _touchingBall.gameObject.GetComponent<Rigidbody>();

                ballBody.AddForce(-transform.forward * _kickForce);
                ballBody.AddForce(transform.up * (_kickForce * 0.1f));
            }
        }

        private void OnScore(TeamMember team)
        {
            if (gameObject.GetComponent<TeamMember>().GetTeamID().Equals(team.GetTeamID()))
            {
                VibrateController(1f, 1f, 1f);
            }
        }

        private void VibrateController(float left, float right, float time)
        {
            ControllerInput.SetVibration(_teamMember.GetPlayerID(), left, right, time);
        }
    }

}
