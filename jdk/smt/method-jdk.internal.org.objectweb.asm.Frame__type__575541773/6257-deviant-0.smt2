(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3611 0)
(declare-sort var446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3611 var3611)
(declare-const null-String String)
(declare-const var190 var3611) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var190 null-var3611)))
(declare-const var1440 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1440 null-String)))
(assert (not (and true (and (> (str.len var1440) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3611=jdk.internal.org.objectweb.asm.ClassWriter, var190=r1, var1440=r0, var446=null_type, var1860=$c0, var14=$i21, var1728=$i15, var3716=i1, var2412=$c2, var871=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var3611, r1=var190, r0=var1440, null_type=var446, $c0=var1860, $i21=var14, $i15=var1728, i1=var3716, $c2=var2412, $i22=var871}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i15 = 0;	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777219
;block_num 4