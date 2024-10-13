(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1325 0)
(declare-sort var3916 0)
(declare-sort var912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun stackTypes/-2024160490 (var1325) (Array Int var912))
(declare-fun stackTop/-2024160490 (var1325) Int)
(declare-const null-var1325 var1325)
(declare-const null-String String)
(declare-const var3747 var1325) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var3747 null-var1325)))
(declare-const var2538 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2538 null-String)))
(define-const var2550 Int 0) ; Statement: i10 = 0 
(assert (not (and true (and (> (str.len var2538) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), stackTypes/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int)}
; {var1325=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var3747=r1, var2538=r0, var3916=null_type, var2550=i10, var213=$c0, var1501=$i13, var912=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var1900=$r12, var2602=$i9, var908=$c1, var767=$i14}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var1325, r1=var3747, r0=var2538, null_type=var3916, i10=var2550, $c0=var213, $i13=var1501, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var912, $r12=var1900, $i9=var2602, $c1=var908, $i14=var767}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	r0 := @parameter0: java.lang.String;	i10 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 40 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$i14 = (int) $c1;	lookupswitch($i14) {     case 68: goto $r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 70: goto $r8 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 74: goto $r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 76: goto $r21 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     case 86: goto return;     case 91: goto $r20 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     default: goto $r11 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>; };	return
;block_num 3