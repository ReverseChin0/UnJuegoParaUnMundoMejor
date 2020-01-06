﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public float VelRotacion = 1;
    public float VelZoom = 1.0f;
    public Transform Objetivo, PosicionDeseada;
    float mouseX, mouseY;
    private Vector3 velocity = Vector3.zero;
    public bool UsingController=false;

    private void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        //Time.timeScale = 0.1f;
    }
    private void Update()
    {
        if (UsingController)
        {
            mouseX += Input.GetAxis("Horizontal_R") * VelRotacion;
            mouseY -= Input.GetAxis("Vertical_R") * VelRotacion;
        }
        else
        {
            mouseX += Input.GetAxis("Mouse X") * VelRotacion;
            mouseY -= Input.GetAxis("Mouse Y") * VelRotacion;
        }
        
        mouseY = Mathf.Clamp(mouseY, -35, 60);
        Objetivo.rotation = Quaternion.Euler(mouseY, mouseX, 0);
        //CamControl();
    }

    /*private void LateUpdate()
    {
        CamControl(); Deberia verse smooth pero ni idea
    }*/

    private void FixedUpdate()
    {
        CamControl();
    }

    void CamControl()
    {
        //Para que vaya ala posicionDeseada despacito
        Vector3 PosicionSuave = Vector3.SmoothDamp(transform.position,PosicionDeseada.position, ref velocity, VelZoom);
        //no se porque necesita una ref la funcion pero con vector3.zero jala asi que arre

        transform.position = PosicionSuave;
        transform.rotation = Quaternion.Slerp(transform.rotation, Objetivo.rotation, 10 * Time.deltaTime);
    }
}
