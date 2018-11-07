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
        public XboxController _controller;

        [SerializeField]
        private float _speed;

        [SerializeField]
        private float _kickForce;

        [SerializeField]
        private float _bounceForce;

        [SerializeField]
        private int _index;

        private Vector3 _movement;
        private float _kickForceMultiplier;

        private Rigidbody _rigidBody;
        private Ball _touchingBall;
        private bool _isExecutingVibrateRoutine;

        private void Start()
        {
            // Hotfix binding
            InputManager.Instance.BindAxis("PartyPopper_Movement_Horizontal", _index, ControllerAxisCode.LeftStickX);
            InputManager.Instance.BindAxis("PartyPopper_Movement_Vertical", _index, ControllerAxisCode.LeftStickY);
            InputManager.Instance.BindAxis("PartyPopper_Movement_LTrigger", _index, ControllerAxisCode.LeftTrigger);
            InputManager.Instance.BindAxis("PartyPopper_Movement_RTrigger", _index, ControllerAxisCode.RightTrigger);

            _rigidBody                  = GetComponent<Rigidbody>();
            _kickForceMultiplier        = 0;
            _movement                   = Vector3.zero;
            _touchingBall               = null;
            _isExecutingVibrateRoutine  = false;

            // Registering the OnScore function to the Score event of each goal in the scene.
            GameObject[] goalObjects = GameObject.FindGameObjectsWithTag(Tag.GOAL.GetTagId());
            foreach (GameObject goalObject in goalObjects)
            {
                Goal goal = goalObject.GetComponent<Goal>();
                goal.TeamScoreEvent += OnScore;
            }
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
            

            if (IsGrounded())
                _rigidBody.AddForce(Vector3.up * _bounceForce, ForceMode.VelocityChange);

            Kick(_kickForceMultiplier);
        }

        private void Update()
        {
            // float x = Input.GetAxis("Horizontal");   // Debug purposes
            // float z = Input.GetAxis("Vertical");     // Debug purposes

            // float x = XCI.GetAxis(XboxAxis.LeftStickX, _controller);
            // float z = XCI.GetAxis(XboxAxis.LeftStickY, _controller);

            float x = InputManager.Instance.GetAxis("PartyPopper_Movement_Horizontal");
            float z = InputManager.Instance.GetAxis("PartyPopper_Movement_Vertical");

            float lTrigger = InputManager.Instance.GetAxis("PartyPopper_Movement_LTrigger");
            float rTrigger = InputManager.Instance.GetAxis("PartyPopper_Movement_RTrigger");

            _kickForceMultiplier = Mathf.Max(lTrigger, rTrigger);
            _movement = new Vector3(x, 0, z);
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

        private void OnScore(Team team)
        {
            if (gameObject.GetComponent<TeamMember>().GetTeam().Equals(team))
            {
                VibrateController(1f, 1f, 1f);
            }
        }

        private bool IsGrounded()
        {
            return Physics.Raycast(transform.position, -transform.up, 0.1f);
        }

        private void VibrateController(float left, float right, float time)
        {
            //StartCoroutine(VibrateControllerRoutine(left, right, time));
            ControllerInput.SetVibration(_index, left, right, time);
        }
    }

}
