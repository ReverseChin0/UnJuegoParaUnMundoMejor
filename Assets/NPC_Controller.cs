using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC_Controller : MonoBehaviour
{
    public float VelMov = 1;
    public float turnSpeed = 1.0f;// yOffsetHands=0.04f;
    public Transform Gncheck;
    bool Airborne = false;
    public Transform PointToFollow = null, GuyFollowingMe=null, ActualGuyTrans=null, desiredPos=null, MyHand=null;
    Rigidbody rb;
    Vector3 direccion = Vector3.zero, direccionFinal = Vector3.zero;
    Quaternion targetRotation;
    Collider Col;
    public bool isGrabbingNPC = false,isFollowingNPC=false;
    public Animator ACon;
    float speed = 0;

    Transform manoDcha = null;
    SonPololosIK Iksmios;
    public LayerMask npcs;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        Col = GetComponent<Collider>();
        if (rb == null)
        {
            Debug.LogError("No hay rigibody BOOOOOOOOOOI");
            enabled = false;
        }

        if (Col == null)
        {
            Debug.LogError("No hay Collider BOOOOOOOOOOI");
            enabled = false;
        }
        targetRotation = transform.rotation;
        direccion = Vector3.zero;

        Iksmios = GetComponent<SonPololosIK>();
        manoDcha = Iksmios.RightHandTgt;
    }

    void Update()
    {
        CalculateDirection();
       
        if (direccion.sqrMagnitude > 1)
        {
            if (!Airborne)//Si no esta en el aire
            {
                direccionFinal = direccion;
                direccionFinal.Set(direccionFinal.x, 0, direccionFinal.z);
               
                if (direccionFinal.sqrMagnitude > 1.0f)
                    direccionFinal.Normalize();

                
                speed = direccionFinal.sqrMagnitude/1;
                ACon.SetFloat("Speed", speed);
                targetRotation = PointToFollow.rotation;
            }
            else
            {
                direccionFinal = direccion;
                direccionFinal.Set(direccionFinal.x, 0, direccionFinal.z);


                targetRotation = PointToFollow.rotation;
                //direccionFinal = previousDirection + (direccionFinal * 0.4f);
            }

        }
        else
        {
            if (!Airborne)
                direccionFinal = Vector3.zero;
            ACon.SetFloat("Speed", 0);
        }

        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);

        if (isGrabbingNPC)
        {
            PositionHands();
        }
        JumpBehaviour();
    }

    private void FixedUpdate()
    {
        rb.MovePosition((transform.position + (direccionFinal * VelMov) * Time.fixedDeltaTime));
    }


    private bool GndCheck()
    {
        Debug.DrawLine(Gncheck.position, Gncheck.position + (Vector3.down * 0.2f), Color.red);
        if (Physics.Raycast(Gncheck.position, Vector3.down, 0.2f))
        {
            ACon.SetBool("Land", true);
            return true;
        }

        ACon.SetBool("Land", false);
        return false;
    }

    void JumpBehaviour()
    {
        if (GndCheck())
        {
            Airborne = false;
        }
        else
        {
            Airborne = true;
            //ACon.SetBool("Land", !Airborne);
        }
    }

    void CalculateDirection()
    {
        if (PointToFollow)
        {
            direccion = PointToFollow.position - transform.position;
            Vector3 posicionManos = ActualGuyTrans.position;
            //posicionManos.y = transform.position.y + 1;
            Iksmios.LeftHandTgt.position = posicionManos;
        }
        else
        {
            direccion = Vector3.zero;
        }
    }

    public void findNPCs()
    {
        if (!isGrabbingNPC)
        {
            Collider[] enepeces = Physics.OverlapSphere(transform.position + Vector3.up, 1.5f, npcs);
            Debug.Log(enepeces.Length);
            int indets = 0; bool encontrado = false;
            if (enepeces.Length != 0)
            {
                while (!encontrado)
                {
                    if (enepeces[indets] == Col)
                    {
                        indets++;
                    }
                    else
                    {
                        encontrado = true;

                    }
                }
                Iksmios.SwitchWeights(true);
                GuyFollowingMe = enepeces[indets].transform;

                enepeces[indets].GetComponent<SonPololosIK>().SwitchWeights(true);
                NPC_Controller _ref = enepeces[indets].GetComponent<NPC_Controller>();

                _ref.PointToFollow = desiredPos;
                _ref.ActualGuyTrans = MyHand;
                _ref.isFollowingNPC=true;
                isGrabbingNPC = true;

            }
            else
            {
                GuyFollowingMe = null;

                return;
            }
        }

        return;
    }


    void PositionHands()
    {
        Vector3 posicionManos = GuyFollowingMe.position + transform.position;
        posicionManos *= 0.5f;
        posicionManos.y = transform.position.y + 1.0f;
        manoDcha.transform.position = posicionManos;
    }

    /* private void OnDrawGizmos()
     {

         Gizmos.DrawWireSphere(transform.position+Vector3.up, 1.5f);

     }*/
}
