(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort var2319 0)
(declare-sort var2205 0)
(declare-sort var3755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun stackTypes/-2024160490 (var3315) (Array Int var2205))
(declare-fun stackTop/-2024160490 (var3315) Int)
(declare-fun cast-from-var3755-to-var2205 (var3755) var2205)
(declare-const null-var3315 var3315)
(declare-const null-String String)
(declare-const var3315-DOUBLE var3755)
(declare-const null-__Array__Int__var2205__ (Array Int var2205))
(declare-const var3315-TOP var3755)
(declare-const var1975 var3315) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var1975 null-var3315)))
(declare-const var3416 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3416 null-String)))
(define-const var324 Int 0) ; Statement: i10 = 0 
(assert (and true (and (> (str.len var3416) 0) (<= 0 0))))
(define-const var3308 Int (charAt/698050440 var3416 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3186 Int (cast-from-Int-to-Int var3308)) ; Statement: $i13 = (int) $c0 
 ; Statement: if $i13 != 40 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes> 
(assert (not (= var3186 40))) ; Cond: $i13 != 40 
(define-const var2343 (Array Int var2205) (stackTypes/-2024160490 var1975)) ; Statement: $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes> 
(define-const var2363 Int (stackTop/-2024160490 var1975)) ; Statement: $i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> 
(assert (not (and true (and (> (str.len var3416) var324) (<= 0 var324)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), stackTypes/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), stackTop/-2024160490=([org.apache.ibatis.javassist.bytecode.stackmap.Tracer], int), cast-from-var3755-to-var2205=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType], org.apache.ibatis.javassist.bytecode.stackmap.TypeData)}
; {var3315=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var1975=r1, var3416=r0, var2319=null_type, var324=i10, var3308=$c0, var3186=$i13, var2205=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var2343=$r12, var2363=$i9, var2472=$c1, var1186=$i14, var3755=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType, var675=$r9, var1847=$i5, var3463=$r10, var3582=$i6, var1974=$i7}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var3315, r1=var1975, r0=var3416, null_type=var2319, i10=var324, $c0=var3308, $i13=var3186, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var2205, $r12=var2343, $i9=var2363, $c1=var2472, $i14=var1186, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType=var3755, $r9=var675, $i5=var1847, $r10=var3463, $i6=var3582, $i7=var1974}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	r0 := @parameter0: java.lang.String;	i10 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 40 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i9 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$i14 = (int) $c1;	lookupswitch($i14) {     case 68: goto $r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;     case 70: goto $r8 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType FLOAT>;     case 74: goto $r6 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType LONG>;     case 76: goto $r21 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     case 86: goto return;     case 91: goto $r20 = new org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;     default: goto $r11 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType INTEGER>; };	$r9 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType DOUBLE>;	$r12[$i9] = $r9;	$i5 = $i9 + 1;	$r10 = <org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType TOP>;	$r12[$i5] = $r10;	$i6 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop>;	$i7 = $i6 + 2;	r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: int stackTop> = $i7;	return
;block_num 3