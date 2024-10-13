(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1080 0)
(declare-sort var3400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1080 var1080)
(declare-const null-String String)
(declare-const var863 var1080) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var863 null-var1080)))
(declare-const var3129 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3129 null-String)))
(assert (and true (and (> (str.len var3129) 0) (<= 0 0))))
(define-const var742 Int (charAt/698050440 var3129 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2437 Int (cast-from-Int-to-Int var742)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (= var2437 40))) ; Cond: $i21 != 40 
(define-const var1228 Int 0) ; Statement: $i15 = 0 
(assert true) ; Non Conditional
(define-const var1687 Int var1228) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var3129) var1228) (<= 0 var1228))))
(define-const var386 Int (charAt/698050440 var3129 var1228)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var476 Int (cast-from-Int-to-Int var386)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var476 70) (and (not (= var476 69)) (and (not (= var476 68)) (and (not (= var476 67)) (and (not (= var476 66)) true)))))) ; Intersect: Cond: $i22 == 70  and Intersect: Negate: Cond: $i22 == 69   and Intersect: Negate: Cond: $i22 == 68   and Intersect: Negate: Cond: $i22 == 67   and Intersect: Negate: Cond: $i22 == 66   and Non Conditional     
 ; Statement: return 16777218 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1080=jdk.internal.org.objectweb.asm.ClassWriter, var863=r1, var3129=r0, var3400=null_type, var742=$c0, var2437=$i21, var1228=$i15, var1687=i1, var386=$c2, var476=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var1080, r1=var863, r0=var3129, null_type=var3400, $c0=var742, $i21=var2437, $i15=var1228, i1=var1687, $c2=var386, $i22=var476}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i15 = 0;	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777218
;block_num 4