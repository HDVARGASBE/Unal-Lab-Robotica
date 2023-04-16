MODULE Module1
    CONST robtarget Target_10:=[[11.408,21.128,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[91.752,21.128,0],[1,0,0,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[55.284,21.128,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[55.284,51.041,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[90.456,51.041,0],[1,0,0,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[13.741,51.041,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_160:=[[13.741,103.21,-45.054858672],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[13.741,103.21,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[13.741,73.405,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[89.938,73.405,0],[1,0,0,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[89.938,100.359,0],[1,0,0,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_170:=[[84.551,113.159,-45.663414909],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110:=[[84.551,113.159,0],[1,0,0,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_120:=[[84.551,144.863,0],[1,0,0,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_130:=[[84.551,129.011,0],[1,0,0,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_140:=[[13.741,129.011,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_150:=[[13.741,113.159,0],[1,0,0,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget MyHome:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget MyClose:=[[0,20,3.3,0,10,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget mantenimiento:=[[89.181625918,49.017623143,-47.807764969,6.276855196,-39.135032261,-2.814514098],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  
    
    PROC main()

        IF escrIn = 1 THEN
            SetDO ESCOUT,1;
            escritura;
            SetDO ESCOUT, 0;
        ENDIF
        IF MantenIn = 1 THEN
            irMantenimiento;
        ENDIF
        
    ENDPROC
    
    PROC escribir()
        MoveL Target_10,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_20,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_30,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_40,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_50,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_60,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_160,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_70,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_80,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_90,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_100,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_170,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_110,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_120,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_130,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_140,v100,z5,MyMarker\WObj:=Workobject_1;
        MoveL Target_150,v100,z5,MyMarker\WObj:=Workobject_1;
    ENDPROC
    
    PROC escritura()
        irhome;
        ircerca;
        escribir;
        ircerca;
        irhome;
    ENDPROC
    
    PROC irhome()
        MoveAbsJ MyHome,v1000,z100,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC ircerca()
        MoveAbsJ MyClose,v1000,z100,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC irMantenimiento()
        MoveAbsJ mantenimiento,v1000,z100,MyMarker\WObj:=Workobject_1;
    ENDPROC
    
ENDMODULE