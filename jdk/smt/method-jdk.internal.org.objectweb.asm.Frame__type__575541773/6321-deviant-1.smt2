(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2069 var2069)
(declare-const null-String String)
(declare-const var3373 var2069) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var3373 null-var2069)))
(declare-const var1374 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1374 null-String)))
(assert (and true (and (> (str.len var1374) 0) (<= 0 0))))
(define-const var2712 Int (charAt/698050440 var1374 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var399 Int (cast-from-Int-to-Int var2712)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (= var399 40))) ; Cond: $i21 != 40 
(define-const var3808 Int 0) ; Statement: $i15 = 0 
(assert true) ; Non Conditional
(define-const var2462 Int var3808) ; Statement: i1 = $i15 
(assert (not (and true (and (> (str.len var1374) var3808) (<= 0 var3808)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2069=jdk.internal.org.objectweb.asm.ClassWriter, var3373=r1, var1374=r0, var2963=null_type, var2712=$c0, var399=$i21, var3808=$i15, var2462=i1, var636=$c2, var2604=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var2069, r1=var3373, r0=var1374, null_type=var2963, $c0=var2712, $i21=var399, $i15=var3808, i1=var2462, $c2=var636, $i22=var2604}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i15 = 0;	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 0
;block_num 4