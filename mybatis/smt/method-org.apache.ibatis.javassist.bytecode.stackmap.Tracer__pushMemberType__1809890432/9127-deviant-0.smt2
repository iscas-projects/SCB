(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3550 0)
(declare-sort var111 0)
(declare-sort var1295 0)
(declare-sort var2045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun stackTypes/-2024160490 (var3550) (Array Int var1295))
(declare-fun stackTop/-2024160490 (var3550) Int)
(declare-fun cast-from-var2045-to-var1295 (var2045) var1295)
(declare-const null-var3550 var3550)
(declare-const null-String String)
(declare-const var3550-LONG var2045)
(declare-const null-__Array__Int__var1295__ (Array Int var1295))
(declare-const var3550-TOP var2045)
(declare-const var3341 var3550) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var3341 null-var3550)))
(declare-const var2591 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2591 null-String)))
(define-const var2884 Int 0) ; Statement: i10 = 0 
(assert (not (and true (and (> (str.len var2591) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), stackTypes/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int), cast-from-var2045-to-var1295=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType], org.apache.ibatis.javassist.bytecode.stackmap.TypeData)}
; {var3550=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var3341=r1, var2591=r0, var111=null_type, var2884=i10, var2782=$c0, var2734=$i13, var1295=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var290=$r12, var2572=$i9, var2785=$c1, var3575=$i14, var2045=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType, var3756=$r6, var274=$i2, var2067=$r7, var3939=$i3, var3652=$i4}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var3550, r1=var3341, r0=var2591, null_type=var111, i10=var2884, $c0=var2782, $i13=var2734, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var1295, $r12=var290, $i9=var2572, $c1=var2785, $i14=var3575, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType=var2045, $r6=var3756, $i2=var274, $r7=var2067, $i3=var3939, $i4=var3652}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	r0 := @parameter0: java.lang.String;	i10 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 40 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$i14 = (int) $c1;	lookupswitch($i14) {     case 68: goto $r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 70: goto $r8 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 74: goto $r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 76: goto $r21 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     case 86: goto return;     case 91: goto $r20 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     default: goto $r11 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>; };	$r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;	$r12[$i9] = $r6;	$i2 = $i9 + 1;	$r7 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType TOP>;	$r12[$i2] = $r7;	$i3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i4 = $i3 + 2;	r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i4;	return
;block_num 3