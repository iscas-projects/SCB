(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var784 0)
(declare-sort var1853 0)
(declare-sort var1480 0)
(declare-sort var3929 0)
(declare-sort var2279 0)
(declare-sort var1583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1853_readU16bit/-514445618 ((Array Int Int) Int) Int)
(declare-fun cpool/-2024160490 (var784) var1480)
(declare-fun getFieldrefType/319379866 (var1480 Int) String)
(declare-fun stackTop/-2024160490 (var784) Int)
(declare-fun var3929_dataSize/-1845471460 (String) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun stackTypes/-2024160490 (var784) (Array Int var2279))
(declare-fun var784_getFieldClassName/1235392457 (String Int) String)
(declare-fun classPool/-2024160490 (var784) var1583)
(declare-fun setType/-322830877 (var2279 String var1583) void)
(declare-fun setFieldTarget/273076085 (var784 Bool Int) void)
(declare-const null-var784 var784)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var822 var784) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var822 null-var784)))
(declare-const var3673 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3673 null-Int)))
(declare-const var425 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var425 null-__Array__Int__Int__)))
(declare-const var3924 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3924 null-Bool)))
(define-const var2826 Int (+ var3673 1)) ; Statement: $i1 = i0 + 1 
(define-const var3953 Int (var1853_readU16bit/-514445618 var425 var2826)) ; Statement: i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1) 
(define-const var2249 var1480 (cpool/-2024160490 var822)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool> 
(assert true)
(define-const var1271 String (getFieldrefType/319379866 var2249 var3953)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefType(int)>(i2) 
(define-const var3116 Int (stackTop/-2024160490 var822)) ; Statement: $i3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(define-const var2206 Int (var3929_dataSize/-1845471460 var1271)) ; Statement: $i4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int dataSize(java.lang.String)>(r3) 
(define-const var3868 Int (- var3116 var2206)) ; Statement: $i5 = $i3 - $i4 
(declare-const var822!1 var784)
(assert (not (= var822!1 null-var784)))
(assert (= (stackTop/-2024160490 var822!1) var3868)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i5 
(assert (and true (and (> (str.len var1271) 0) (<= 0 0))))
(define-const var3623 Int (charAt/698050440 var1271 0)) ; Statement: c6 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0) 
(define-const var12 Int (cast-from-Int-to-Int var3623)) ; Statement: $i9 = (int) c6 
 ; Statement: if $i9 != 76 goto $i10 = (int) c6 
(assert (not (not (= var12 76)))) ; Negate: Cond: $i9 != 76  
(define-const var2814 (Array Int var2279) (stackTypes/-2024160490 var822!1)) ; Statement: $r7 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes> 
(define-const var2800 Int (stackTop/-2024160490 var822!1)) ; Statement: $i8 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(define-const var454 var2279 (select var2814 var2800)) ; Statement: $r8 = $r7[$i8] 
(define-const var2510 String (var784_getFieldClassName/1235392457 var1271 0)) ; Statement: $r10 = staticinvoke <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: java.lang.String getFieldClassName(java.lang.String,int)>(r3, 0) 
(define-const var1043 var1583 (classPool/-2024160490 var822!1)) ; Statement: $r9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true)
;(assert (setType/-322830877 var454 var2510 var1043)) ; Statement: virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: void setType(java.lang.String,org.apache.ibatis.javassist.ClassPool)>($r10, $r9) 

(declare-const var454!1 var2279)
(declare-const var2510!1 String)
(declare-const var1043!1 var1583)
 ; Statement: goto [?= specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setFieldTarget/273076085 var822!1 var3924 var3953)) ; Statement: specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2) 

(declare-const var822!2 var784)
(declare-const var3924!1 Bool)
(declare-const var3953!1 Int)
 ; Statement: return 3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1853_readU16bit/-514445618=([byte[], int], int), cpool/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.ConstPool), getFieldrefType/319379866=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int), var3929_dataSize/-1845471460=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), stackTypes/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), var784_getFieldClassName/1235392457=([java.lang.String, int], java.lang.String), classPool/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.ClassPool), setType/-322830877=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData, java.lang.String, org.apache.ibatis.javassist.ClassPool], void), setFieldTarget/273076085=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer, boolean, int], void)}
; {var784=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var822=r1, var3673=i0, var425=r0, var3924=z0, var2826=$i1, var1853=org.apache.ibatis.javassist.bytecode.ByteArray, var3953=i2, var1480=org.apache.ibatis.javassist.bytecode.ConstPool, var2249=$r2, var1271=r3, var3116=$i3, var3929=org.apache.ibatis.javassist.bytecode.Descriptor, var2206=$i4, var3868=$i5, var3623=c6, var12=$i9, var2279=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var2814=$r7, var2800=$i8, var454=$r8, var2510=$r10, var1583=org.apache.ibatis.javassist.ClassPool, var1043=$r9}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var784, r1=var822, i0=var3673, r0=var425, z0=var3924, $i1=var2826, org.apache.ibatis.javassist.bytecode.ByteArray=var1853, i2=var3953, org.apache.ibatis.javassist.bytecode.ConstPool=var1480, $r2=var2249, r3=var1271, $i3=var3116, org.apache.ibatis.javassist.bytecode.Descriptor=var3929, $i4=var2206, $i5=var3868, c6=var3623, $i9=var12, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var2279, $r7=var2814, $i8=var2800, $r8=var454, $r10=var2510, org.apache.ibatis.javassist.ClassPool=var1583, $r9=var1043}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	i0 := @parameter0: int;	r0 := @parameter1: byte[];	z0 := @parameter2: boolean;	$i1 = i0 + 1;	i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1);	$r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool>;	r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefType(int)>(i2);	$i3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int dataSize(java.lang.String)>(r3);	$i5 = $i3 - $i4;	r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i5;	c6 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0);	$i9 = (int) c6;	if $i9 != 76 goto $i10 = (int) c6;	$r7 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i8 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$r8 = $r7[$i8];	$r10 = staticinvoke <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: java.lang.String getFieldClassName(java.lang.String,int)>(r3, 0);	$r9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.ClassPool classPool>;	virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: void setType(java.lang.String,org.apache.ibatis.javassist.ClassPool)>($r10, $r9);	goto [?= specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2)];	specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2);	return 3
;block_num 3