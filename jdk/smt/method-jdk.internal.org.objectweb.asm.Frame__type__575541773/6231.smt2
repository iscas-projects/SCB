(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var560 0)
(declare-sort var2842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var560 var560)
(declare-const null-String String)
(declare-const var1412 var560) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var1412 null-var560)))
(declare-const var2737 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2737 null-String)))
(assert (and true (and (> (str.len var2737) 0) (<= 0 0))))
(define-const var1603 Int (charAt/698050440 var2737 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1927 Int (cast-from-Int-to-Int var1603)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (not (= var1927 40)))) ; Negate: Cond: $i21 != 40  
(assert true)
(define-const var618 Int (indexOf/-1037706067 var2737 41)) ; Statement: $i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var1680 Int (+ var618 1)) ; Statement: $i15 = $i14 + 1 
 ; Statement: goto [?= i1 = $i15] 
(assert true) ; Non Conditional
(define-const var1939 Int var1680) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var2737) var1680) (<= 0 var1680))))
(define-const var3666 Int (charAt/698050440 var2737 var1680)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var3930 Int (cast-from-Int-to-Int var3666)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var3930 86) (and (not (= var3930 85)) (and (not (= var3930 84)) (and (not (= var3930 83)) (and (not (= var3930 82)) (and (not (= var3930 81)) (and (not (= var3930 80)) (and (not (= var3930 79)) (and (not (= var3930 78)) (and (not (= var3930 77)) (and (not (= var3930 76)) (and (not (= var3930 75)) (and (not (= var3930 74)) (and (not (= var3930 73)) (and (not (= var3930 72)) (and (not (= var3930 71)) (and (not (= var3930 70)) (and (not (= var3930 69)) (and (not (= var3930 68)) (and (not (= var3930 67)) (and (not (= var3930 66)) true)))))))))))))))))))))) ; Intersect: Cond: $i22 == 86  and Intersect: Negate: Cond: $i22 == 85   and Intersect: Negate: Cond: $i22 == 84   and Intersect: Negate: Cond: $i22 == 83   and Intersect: Negate: Cond: $i22 == 82   and Intersect: Negate: Cond: $i22 == 81   and Intersect: Negate: Cond: $i22 == 80   and Intersect: Negate: Cond: $i22 == 79   and Intersect: Negate: Cond: $i22 == 78   and Intersect: Negate: Cond: $i22 == 77   and Intersect: Negate: Cond: $i22 == 76   and Intersect: Negate: Cond: $i22 == 75   and Intersect: Negate: Cond: $i22 == 74   and Intersect: Negate: Cond: $i22 == 73   and Intersect: Negate: Cond: $i22 == 72   and Intersect: Negate: Cond: $i22 == 71   and Intersect: Negate: Cond: $i22 == 70   and Intersect: Negate: Cond: $i22 == 69   and Intersect: Negate: Cond: $i22 == 68   and Intersect: Negate: Cond: $i22 == 67   and Intersect: Negate: Cond: $i22 == 66   and Non Conditional                     
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var560=jdk.internal.org.objectweb.asm.ClassWriter, var1412=r1, var2737=r0, var2842=null_type, var1603=$c0, var1927=$i21, var618=$i14, var1680=$i15, var1939=i1, var3666=$c2, var3930=$i22}
; {jdk.internal.org.objectweb.asm.ClassWriter=var560, r1=var1412, r0=var2737, null_type=var2842, $c0=var1603, $i21=var1927, $i14=var618, $i15=var1680, i1=var1939, $c2=var3666, $i22=var3930}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i15 = $i14 + 1;	goto [?= i1 = $i15];	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	return 0
;block_num 4