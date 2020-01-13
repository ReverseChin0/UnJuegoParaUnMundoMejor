using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SonPololosIK : MonoBehaviour
{
    public Animator anim;
    public Transform LeftHandTgt,RightHandTgt;
    //public float distance = 0.0f, verticalOffset;
    public float initiallHIKweight, initialrHIKweight;
    float lHIKweight=0, rHIKweight=0;
    //float lHIKweight = 1, rHIKweight = 1;


    public void SwitchWeights(bool _isIk)
    {
        if (!_isIk)
        {
            lHIKweight = rHIKweight = 0.0f;
        }
        else
        {
            lHIKweight = initiallHIKweight;
            rHIKweight = initialrHIKweight;
        }
    }

    private void OnAnimatorIK(int layerIndex)
    {
        anim.SetIKPositionWeight(AvatarIKGoal.LeftHand, lHIKweight);
        anim.SetIKPosition(AvatarIKGoal.LeftHand, LeftHandTgt.position);
        
        anim.SetIKPositionWeight(AvatarIKGoal.RightHand, rHIKweight);
        anim.SetIKPosition(AvatarIKGoal.RightHand, RightHandTgt.position);
    }

   
}
