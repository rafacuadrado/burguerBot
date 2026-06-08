MODULE Module1
    CONST robtarget pReposo:=[[979.496732003,0,829],[0.5,0,0.866025404,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pAproxCarne:=[[-294.1282673,577.734595344,615],[0,-0.000716141,0.999999744,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pCogidaCarne:=[[-294.1282673,577.734595344,315],[0,-0.000716141,0.999999744,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
        SetDO Sincroniz2_1,0;
         WaitDI Sincroniz1_2,1;
            MoveL pReposo,v1000,z100,Ventosa\WObj:=wobj0;
            MoveL pAproxCarne,v1000,fine,Ventosa\WObj:=wobj0;
            MoveL pCogidaCarne,v100,fine,Ventosa\WObj:=wobj0;
            SetDO SD_ActivaVentosa,1;
            WaitDI ED_Piezcogida2,1;
            MoveL pAproxCarne,v500,fine,Ventosa\WObj:=wobj0;
            MoveL pReposo,v1000,fine,Ventosa\WObj:=wobj0;
            SetDO Sincroniz2_1,1;
        
    ENDPROC
    PROC Path_10()
       
    ENDPROC
ENDMODULE