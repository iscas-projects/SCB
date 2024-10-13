(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var2880 var2880)
(declare-const null-String String)
(declare-const var1964 var2880) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var1964 null-var2880)))
(declare-const var621 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var621 null-String)))
(assert (and true (and (> (str.len var621) 0) (<= 0 0))))
(define-const var3647 Int (charAt/698050440 var621 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2714 Int (cast-from-Int-to-Int var3647)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (not (= var2714 40)))) ; Negate: Cond: $i21 != 40  
(assert true)
(define-const var262 Int (indexOf/-1037706067 var621 41)) ; Statement: $i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var1760 Int (+ var262 1)) ; Statement: $i15 = $i14 + 1 
 ; Statement: goto [?= i1 = $i15] 
(assert true) ; Non Conditional
(define-const var3073 Int var1760) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var621) var1760) (<= 0 var1760))))
(define-const var2198 Int (charAt/698050440 var621 var1760)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var2127 Int (cast-from-Int-to-Int var2198)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var2127 70) (and (not (= var2127 69)) (and (not (= var2127 68)) (and (not (= var2127 67)) (and (not (= var2127 66)) true)))))) ; Intersect: Cond: $i22 == 70  and Intersect: Negate: Cond: $i22 == 69   and Intersect: Negate: Cond: $i22 == 68   and Intersect: Negate: Cond: $i22 == 67   and Intersect: Negate: Cond: $i22 == 66   and Non Conditional     
 ; Statement: return 16777218 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2880=jdk.internal.org.objectweb.asm.ClassWriter, var1964=r1, var621=r0, var854=null_type, var3647=$c0, var2714=$i21, var262=$i14, var1760=$i15, var3073=i1, var2198=$c2, var2127=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var2880, r1=var1964, r0=var621, null_type=var854, $c0=var3647, $i21=var2714, $i14=var262, $i15=var1760, i1=var3073, $c2=var2198, $i22=var2127}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i15 = $i14 + 1;	goto [?= i1 = $i15];	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777218
;block_num 4