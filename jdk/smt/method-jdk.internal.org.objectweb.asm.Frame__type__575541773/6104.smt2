(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3618 0)
(declare-sort var2821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var3618 var3618)
(declare-const null-String String)
(declare-const var2453 var3618) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var2453 null-var3618)))
(declare-const var2475 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2475 null-String)))
(assert (and true (and (> (str.len var2475) 0) (<= 0 0))))
(define-const var1436 Int (charAt/698050440 var2475 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2765 Int (cast-from-Int-to-Int var1436)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (not (= var2765 40)))) ; Negate: Cond: $i21 != 40  
(assert true)
(define-const var2087 Int (indexOf/-1037706067 var2475 41)) ; Statement: $i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var1070 Int (+ var2087 1)) ; Statement: $i15 = $i14 + 1 
 ; Statement: goto [?= i1 = $i15] 
(assert true) ; Non Conditional
(define-const var201 Int var1070) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var2475) var1070) (<= 0 var1070))))
(define-const var1943 Int (charAt/698050440 var2475 var1070)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var1148 Int (cast-from-Int-to-Int var1943)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var1148 66) true)) ; Intersect: Cond: $i22 == 66  and Non Conditional 
 ; Statement: return 16777217 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var3618=jdk.internal.org.objectweb.asm.ClassWriter, var2453=r1, var2475=r0, var2821=null_type, var1436=$c0, var2765=$i21, var2087=$i14, var1070=$i15, var201=i1, var1943=$c2, var1148=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var3618, r1=var2453, r0=var2475, null_type=var2821, $c0=var1436, $i21=var2765, $i14=var2087, $i15=var1070, i1=var201, $c2=var1943, $i22=var1148}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i15 = $i14 + 1;	goto [?= i1 = $i15];	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777217
;block_num 4