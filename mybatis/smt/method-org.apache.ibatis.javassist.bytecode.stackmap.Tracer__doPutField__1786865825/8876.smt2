(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var282 0)
(declare-sort var145 0)
(declare-sort var2067 0)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var145_readU16bit/-514445618 ((Array Int Int) Int) Int)
(declare-fun cpool/-2024160490 (var282) var2067)
(declare-fun getFieldrefType/319379866 (var2067 Int) String)
(declare-fun stackTop/-2024160490 (var282) Int)
(declare-fun var485_dataSize/-1845471460 (String) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun setFieldTarget/273076085 (var282 Bool Int) void)
(declare-const null-var282 var282)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var15 var282) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var15 null-var282)))
(declare-const var3766 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3766 null-Int)))
(declare-const var1003 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var1003 null-__Array__Int__Int__)))
(declare-const var2417 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2417 null-Bool)))
(define-const var2660 Int (+ var3766 1)) ; Statement: $i1 = i0 + 1 
(define-const var1844 Int (var145_readU16bit/-514445618 var1003 var2660)) ; Statement: i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1) 
(define-const var3121 var2067 (cpool/-2024160490 var15)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool> 
(assert true)
(define-const var3955 String (getFieldrefType/319379866 var3121 var1844)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefType(int)>(i2) 
(define-const var1533 Int (stackTop/-2024160490 var15)) ; Statement: $i3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(define-const var455 Int (var485_dataSize/-1845471460 var3955)) ; Statement: $i4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int dataSize(java.lang.String)>(r3) 
(define-const var1008 Int (- var1533 var455)) ; Statement: $i5 = $i3 - $i4 
(declare-const var15!1 var282)
(assert (not (= var15!1 null-var282)))
(assert (= (stackTop/-2024160490 var15!1) var1008)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i5 
(assert (and true (and (> (str.len var3955) 0) (<= 0 0))))
(define-const var1113 Int (charAt/698050440 var3955 0)) ; Statement: c6 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0) 
(define-const var2098 Int (cast-from-Int-to-Int var1113)) ; Statement: $i9 = (int) c6 
 ; Statement: if $i9 != 76 goto $i10 = (int) c6 
(assert (not (= var2098 76))) ; Cond: $i9 != 76 
(define-const var1553 Int (cast-from-Int-to-Int var1113)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 91 goto specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2) 
(assert (not (= var1553 91))) ; Cond: $i10 != 91 
(assert true)
;(assert (setFieldTarget/273076085 var15!1 var2417 var1844)) ; Statement: specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2) 

(declare-const var15!2 var282)
(declare-const var2417!1 Bool)
(declare-const var1844!1 Int)
 ; Statement: return 3 
(check-sat)
(get-model)
(get-unsat-core)
; {var145_readU16bit/-514445618=([byte[], int], int), cpool/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.ConstPool), getFieldrefType/319379866=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int), var485_dataSize/-1845471460=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), setFieldTarget/273076085=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer, boolean, int], void)}
; {var282=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var15=r1, var3766=i0, var1003=r0, var2417=z0, var2660=$i1, var145=org.apache.ibatis.javassist.bytecode.ByteArray, var1844=i2, var2067=org.apache.ibatis.javassist.bytecode.ConstPool, var3121=$r2, var3955=r3, var1533=$i3, var485=org.apache.ibatis.javassist.bytecode.Descriptor, var455=$i4, var1008=$i5, var1113=c6, var2098=$i9, var1553=$i10}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var282, r1=var15, i0=var3766, r0=var1003, z0=var2417, $i1=var2660, org.apache.ibatis.javassist.bytecode.ByteArray=var145, i2=var1844, org.apache.ibatis.javassist.bytecode.ConstPool=var2067, $r2=var3121, r3=var3955, $i3=var1533, org.apache.ibatis.javassist.bytecode.Descriptor=var485, $i4=var455, $i5=var1008, c6=var1113, $i9=var2098, $i10=var1553}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	i0 := @parameter0: int;	r0 := @parameter1: byte[];	z0 := @parameter2: boolean;	$i1 = i0 + 1;	i2 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>(r0, $i1);	$r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.ConstPool cpool>;	r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefType(int)>(i2);	$i3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int dataSize(java.lang.String)>(r3);	$i5 = $i3 - $i4;	r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i5;	c6 = virtualinvoke r3.<java.lang.String: char charAt(int)>(0);	$i9 = (int) c6;	if $i9 != 76 goto $i10 = (int) c6;	$i10 = (int) c6;	if $i10 != 91 goto specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2);	specialinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: void setFieldTarget(boolean,int)>(z0, i2);	return 3
;block_num 3