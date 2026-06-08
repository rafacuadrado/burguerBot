MODULE Module1
    CONST robtarget pReposo:=[[979.496732003,0,829],[0.5,0,0.866025404,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pAprox:=[[550,1450,-200],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pCogida:=[[550,1450,-100],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pMontajeAprox:=[[900,599.6,540],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pMontaje:=[[900,599.6,240],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPanAprox:=[[66.288,749.687,580],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPan:=[[66.288,749.687,280],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pCarne:=[[2189.782,368.901,315],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pCarneAprox:=[[2189.782,368.901,615],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! M?dulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: rafac
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
        VAR robtarget aux;
        SetDO Sicroniz1_2,0;
        
        aux:=Offs(pMontaje,0,0,30);
            WaitDI HamburguesaDetect,1;
            MoveL pReposo,v1000,z100,Ventosa\WObj:=wobj0;
            MoveL pPanAprox,v1000,fine,Ventosa\WObj:=wobj0;
            MoveL pPan,v1000,fine,Ventosa\WObj:=wobj0;
            SetDO SD_ActivaVentosa,1;
            WaitDI ED_PiezaCogida,1;
            MoveL pPanAprox,v1000,fine,Ventosa\WObj:=wobj0;
            MoveL pMontajeAprox,v1000,fine,Ventosa\WObj:=wobj0;
            MoveL aux,v1000,fine,Ventosa\WObj:=wobj0;
            SetDO SD_ActivaVentosa,0;
            WaitDI ED_PiezaCogida,0;
            MoveL pMontajeAprox,v1000,fine,Ventosa\WObj:=wobj0;
            MoveL pReposo,v1000,z100,Ventosa\WObj:=wobj0;
            SetDO Sicroniz1_2,1;       

    ENDPROC
    PROC Path_20()
     
    ENDPROC
ENDMODULE