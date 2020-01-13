using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SonPololosIK : MonoBehaviour
{
    public Animator anim;
    public Transform LeftHandTgt,RightHandTgt;
    public bool isIKactive = false;
    //public float distance = 0.0f, verticalOffset;
    public LayerMask layer;
    public float lHIKweight, rHIKweight;


    private void OnAnimatorIK(int layerIndex)
    {
        anim.SetIKPositionWeight(AvatarIKGoal.LeftHand, lHIKweight);
        anim.SetIKPosition(AvatarIKGoal.LeftHand, LeftHandTgt.position);

        anim.SetIKPositionWeight(AvatarIKGoal.RightHand, rHIKweight);
        anim.SetIKPosition(AvatarIKGoal.RightHand, RightHandTgt.position);
    }
}
