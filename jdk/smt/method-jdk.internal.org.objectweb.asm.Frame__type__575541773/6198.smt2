(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var2770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var2909 var2909)
(declare-const null-String String)
(declare-const var816 var2909) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var816 null-var2909)))
(declare-const var3933 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3933 null-String)))
(assert (and true (and (> (str.len var3933) 0) (<= 0 0))))
(define-const var1790 Int (charAt/698050440 var3933 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1492 Int (cast-from-Int-to-Int var1790)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (not (= var1492 40)))) ; Negate: Cond: $i21 != 40  
(assert true)
(define-const var933 Int (indexOf/-1037706067 var3933 41)) ; Statement: $i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var2516 Int (+ var933 1)) ; Statement: $i15 = $i14 + 1 
 ; Statement: goto [?= i1 = $i15] 
(assert true) ; Non Conditional
(define-const var1185 Int var2516) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var3933) var2516) (<= 0 var2516))))
(define-const var1951 Int (charAt/698050440 var3933 var2516)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var2618 Int (cast-from-Int-to-Int var1951)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var2618 74) (and (not (= var2618 73)) (and (not (= var2618 72)) (and (not (= var2618 71)) (and (not (= var2618 70)) (and (not (= var2618 69)) (and (not (= var2618 68)) (and (not (= var2618 67)) (and (not (= var2618 66)) true)))))))))) ; Intersect: Cond: $i22 == 74  and Intersect: Negate: Cond: $i22 == 73   and Intersect: Negate: Cond: $i22 == 72   and Intersect: Negate: Cond: $i22 == 71   and Intersect: Negate: Cond: $i22 == 70   and Intersect: Negate: Cond: $i22 == 69   and Intersect: Negate: Cond: $i22 == 68   and Intersect: Negate: Cond: $i22 == 67   and Intersect: Negate: Cond: $i22 == 66   and Non Conditional         
 ; Statement: return 16777220 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2909=jdk.internal.org.objectweb.asm.ClassWriter, var816=r1, var3933=r0, var2770=null_type, var1790=$c0, var1492=$i21, var933=$i14, var2516=$i15, var1185=i1, var1951=$c2, var2618=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var2909, r1=var816, r0=var3933, null_type=var2770, $c0=var1790, $i21=var1492, $i14=var933, $i15=var2516, i1=var1185, $c2=var1951, $i22=var2618}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i15 = $i14 + 1;	goto [?= i1 = $i15];	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 16777220
;block_num 4