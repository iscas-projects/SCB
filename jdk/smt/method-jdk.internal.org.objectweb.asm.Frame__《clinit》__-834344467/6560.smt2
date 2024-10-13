(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var140 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (int)[202] 
(define-const var1329 String "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE") ; Statement: r1 = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE" 
(define-const var1933 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var593 Int (getLength-Arr-Int-1 var140)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i3 >= $i0 goto <jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0 
(assert (not (>= var1933 var593))) ; Negate: Cond: i3 >= $i0  
(assert (and true (and (> (str.len var1329) var1933) (<= 0 var1933))))
(define-const var2922 Int (charAt/698050440 var1329 var1933)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i3) 
(define-const var1350 Int (cast-from-Int-to-Int var2922)) ; Statement: $i4 = (int) $c1 
(define-const var3080 Int (- var1350 69)) ; Statement: $i2 = $i4 - 69 
(declare-const var140!1 (Array Int Int))
(assert (not (= var140!1 null-__Array__Int__Int__)))
(assert (= (select var140!1 var1933) var3080)) ; Statement: r0[i3] = $i2 
(define-const var1933!1 Int (+ var1933 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i0 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var593!1 Int (getLength-Arr-Int-1 var140!1)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i3 >= $i0 goto <jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0 
(assert (>= var1933!1 var593!1)) ; Cond: i3 >= $i0 
(define-const var888 (Array Int Int) var140!1) ; Statement: <jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), getLength-Arr-Int-1=([int[]], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var140=r0, var1329=r1, var1933=i3, var593=$i0, var2922=$c1, var1350=$i4, var3080=$i2, var888=<jdk.internal.org.objectweb.asm.Frame: int[] SIZE>}
; {r0=var140, r1=var1329, i3=var1933, $i0=var593, $c1=var2922, $i4=var1350, $i2=var3080, <jdk.internal.org.objectweb.asm.Frame: int[] SIZE>=var888}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 = newarray (int)[202];	r1 = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE";	i3 = 0;	$i0 = lengthof r0;	if i3 >= $i0 goto <jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i3);	$i4 = (int) $c1;	$i2 = $i4 - 69;	r0[i3] = $i2;	i3 = i3 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i3 >= $i0 goto <jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0;	<jdk.internal.org.objectweb.asm.Frame: int[] SIZE> = r0;	return
;block_num 5