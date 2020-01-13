using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC_Controller : MonoBehaviour
{
    public float VelMov = 1;
    public float turnSpeed = 1.0f;
    public Transform Gncheck;
    bool Airborne = false;
    public Transform GuyToFollow = null, GuyFollowingMe=null, ActualGuyTrans=null;
    Rigidbody rb;
    Vector3 direccion = Vector3.zero, direccionFinal = Vector3.zero;
    Quaternion targetRotation;
    Collider Col;
    bool isGrabbingNPC = false;
    public Animator ACon;
    float speed = 0;

    SonPololosIK Iksmios;

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
                targetRotation = GuyToFollow.rotation;
            }
            else
            {
                direccionFinal = direccion;
                direccionFinal.Set(direccionFinal.x, 0, direccionFinal.z);


                targetRotation = GuyToFollow.rotation;
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
        if (GuyToFollow)
        {
            direccion = GuyToFollow.position - transform.position;
            Vector3 posicionManos = (ActualGuyTrans.position + transform.position)*0.5f ;
            Iksmios.LeftHandTgt.position = posicionManos;
        }
        else
        {
            direccion = Vector3.zero;
        }
    }
}
