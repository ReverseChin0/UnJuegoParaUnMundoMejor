using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovement : MonoBehaviour
{
    public float InpuX = 0, InpuY = 0;
    public float VelMov = 1;
    public float turnSpeed = 1.0f;
    public Transform camara,Gncheck;
    public float jumpStrength = 5.0f;
    bool Airborne = false;

    Rigidbody rb;
    Vector3 direccion = Vector3.zero, direccionFinal = Vector3.zero, previousDirection;
    Quaternion targetRotation;
    Collider Col;

    public Animator ACon;
    int animState=0;
    float speed=0;
    


    void Start()
    {
        rb = GetComponent<Rigidbody>();
        Col = GetComponent<Collider>();
        if(rb == null){
            Debug.LogError("No hay rigibody BOOOOOOOOOOI");
            enabled = false;
        }

        if(Col == null){
            Debug.LogError("No hay Collider BOOOOOOOOOOI");
            enabled = false;
        }
        targetRotation = transform.rotation;
    }

    void Update()
    {
        InpuX = Input.GetAxis("Horizontal");
        InpuY = Input.GetAxis("Vertical");

        direccion.x = InpuX;
        direccion.z = InpuY;

        if (direccion.sqrMagnitude > 0.01f)
        {
            animState = 1;
            //ACon.SetInteger("MoveState", animState);
            if (!Airborne)//Si no esta en el aire
            {
                direccionFinal = camara.TransformDirection(direccion);
                direccionFinal.Set(direccionFinal.x, 0, direccionFinal.z);

                if (direccionFinal.sqrMagnitude > 1.0f)
                    direccionFinal.Normalize();

                speed = direccionFinal.sqrMagnitude;
                //if (speed < 0.1f) speed = 0.1f;
                ACon.SetFloat("Speed", speed);
                targetRotation = Quaternion.LookRotation(direccionFinal);
            }
            else
            {
                direccionFinal = camara.TransformDirection(direccion);
                direccionFinal.Set(direccionFinal.x, 0, direccionFinal.z);


                targetRotation = Quaternion.LookRotation(direccionFinal.normalized);
                direccionFinal = previousDirection + (direccionFinal * 0.4f);
            }
            
        }
        else
        {
            if(!Airborne)
            direccionFinal = Vector3.zero;
            animState = 0;
            ACon.SetFloat("Speed", 0);
            //Debug.LogError("quieto");
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
        Debug.DrawLine(Gncheck.position, Gncheck.position+ (Vector3.down*0.2f), Color.red);
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
            //ACon.SetBool("Land",!Airborne);
            if (Input.GetButtonDown("Jump"))
            {
                rb.AddForce(Vector3.up * jumpStrength, ForceMode.Impulse);
                Airborne = true;
                //ACon.SetBool("Land", !Airborne);
                ACon.SetTrigger("Jumped");
            }
        }
        else
        {
            if (!Airborne)
                previousDirection = direccionFinal;
            Airborne = true;
            //ACon.SetBool("Land", !Airborne);
        }
    }
}
