(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1481 0)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1481 var1481)
(declare-const null-String String)
(declare-const var2223 var1481) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var2223 null-var1481)))
(declare-const var3466 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3466 null-String)))
(assert (and true (and (> (str.len var3466) 0) (<= 0 0))))
(define-const var614 Int (charAt/698050440 var3466 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var304 Int (cast-from-Int-to-Int var614)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (= var304 40))) ; Cond: $i21 != 40 
(define-const var211 Int 0) ; Statement: $i15 = 0 
(assert true) ; Non Conditional
(define-const var3302 Int var211) ; Statement: i1 = $i15 
(assert (not (and true (and (> (str.len var3466) var211) (<= 0 var211)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1481=jdk.internal.org.objectweb.asm.ClassWriter, var2223=r1, var3466=r0, var2908=null_type, var614=$c0, var304=$i21, var211=$i15, var3302=i1, var3420=$c2, var695=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var1481, r1=var2223, r0=var3466, null_type=var2908, $c0=var614, $i21=var304, $i15=var211, i1=var3302, $c2=var3420, $i22=var695}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i15 = 0;	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777220
;block_num 4