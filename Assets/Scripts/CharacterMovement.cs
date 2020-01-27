using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovement : MonoBehaviour
{
    public float InpuX = 0, InpuY = 0;// yHandsOffset=0;
    public float VelMov = 1;
    public float turnSpeed = 1.0f;
    public Transform camara,Gncheck,FollowPoint, GuyFollowingMe = null, MyHand = null;
    public float jumpStrength = 5.0f;
    bool Airborne = false, isGrabbing=false;

    public SonPololosIK misIks;

    Rigidbody rb;
    Vector3 direccion = Vector3.zero, direccionFinal = Vector3.zero, previousDirection;
    Quaternion targetRotation;
    Collider Col;

    public Animator ACon;
    //int animState=0;
    float speed=0;

    //Iks
    Transform manoDcha = null;
    public LayerMask npcs;

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
        manoDcha = misIks.RightHandTgt;
    }

    void Update()
    {
        InpuX = Input.GetAxis("Horizontal");
        InpuY = Input.GetAxis("Vertical");

        direccion.x = InpuX;
        direccion.z = InpuY;

        MoveBehaviour();

        if (Input.GetMouseButtonDown(0))
        {
            isGrabbing = activateNPC(true); //si agarre a un wey
            ObjectPooler.instancia.SpawnFromPool("ParticulasUnion", transform.position + (Vector3.down *0.75f), transform.rotation).GetComponent<ParticleController>().activarParticulas(transform);
            
        }
        else if(Input.GetMouseButtonDown(1))//soltarwey;
        {
            activateNPC(false);
            isGrabbing = false;
            ObjectPooler.instancia.SpawnFromPool("ParticulasQuedar", transform.position + (Vector3.down * 0.75f), transform.rotation).GetComponent<ParticleController>().activarParticulas(transform);
        }
        else if (Input.GetMouseButtonDown(2))//sueltensetodosjotos
        {
            SueltenseTodos();
            ObjectPooler.instancia.SpawnFromPool("ParticulasSoltar", transform.position + (Vector3.down * 0.75f), transform.rotation).GetComponent<ParticleController>().activarParticulas(transform);
        }

        if (isGrabbing)
            PositionHands();
        
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);

        JumpBehaviour();
    }

    void MoveBehaviour()
    {
        if (direccion.sqrMagnitude > 0.01f)
        {
            //animState = 1;
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
            if (!Airborne)
                direccionFinal = Vector3.zero;
            //animState = 0;
            ACon.SetFloat("Speed", 0);
            //Debug.LogError("quieto");
        }
    }

    private void FixedUpdate()
    {
        rb.MovePosition((transform.position + (direccionFinal * VelMov) * Time.fixedDeltaTime));
    }

    private bool GndCheck()
    {
        //Debug.DrawLine(Gncheck.position, Gncheck.position+ (Vector3.down*0.2f), Color.red);
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
            if (Input.GetButtonDown("Jump"))
            {
                rb.AddForce(Vector3.up * jumpStrength, ForceMode.Impulse);
                previousDirection = direccionFinal;
                Airborne = true;
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

    bool activateNPC(bool _actve)
    {
        //Debug.Log("salu2, buscando npcs");
        Collider[] enepeces = Physics.OverlapSphere(transform.position, 1.2f, npcs);

        if (enepeces.Length != 0)
        {
            misIks.SwitchWeights(_actve);
            int indets = 0;
            NPC_Controller _ref;
            foreach (Collider _C in enepeces)
            {
                _ref = _C.GetComponent<NPC_Controller>();
                if (_ref.isFollowingNPC == false)
                    break;
                indets++;
            }
            if(indets < enepeces.Length)
            {
                GuyFollowingMe = enepeces[indets].transform;
                enepeces[indets].GetComponent<SonPololosIK>().SwitchWeights(_actve);
                _ref = enepeces[indets].GetComponent<NPC_Controller>();
                if (_actve)
                {
                    _ref.PointToFollow = FollowPoint;
                    _ref.ActualGuyTrans = MyHand;
                    //VelMov -= 1.0f;
                    return true;
                }
                else
                {
                    _ref.PointToFollow = null;
                    _ref.ActualGuyTrans = null;
                    _ref.findNPCs();
                    //VelMov += 1.0f;
                    return false;
                }
            }
            
            
        }
        else
        {
            GuyFollowingMe = null;
            
            return false;
        }


        return false;
    }


    void SueltenseTodos()
    {
        isGrabbing = false;
        misIks.SwitchWeights(false);
        Collider[] enepeces = Physics.OverlapSphere(transform.position, 1.2f, npcs);

        foreach(Collider _c in enepeces)
        {
            _c.GetComponent<NPC_Controller>().DropHands();
        }
    }
    void PositionHands()
    {
        Vector3 posicionManos = GuyFollowingMe.position+transform.position;
        posicionManos *= 0.5f;
        posicionManos.y = transform.position.y + 0.04f;
        manoDcha.transform.position = posicionManos;
    }


   /* private void OnDrawGizmos()
    {
        if (GuyFollowingMe)
        {
            Gizmos.DrawWireSphere(manoDcha.transform.position, 0.2f);
        }
    }*/
}
