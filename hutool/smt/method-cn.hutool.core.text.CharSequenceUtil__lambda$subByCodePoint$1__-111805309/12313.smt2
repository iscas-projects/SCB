(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2642_toChars/-1738819595 (Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2122 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2122 null-String)))
(declare-const var2321 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2321 null-Int)))
(define-const var3870 (Array Int Int) (var2642_toChars/-1738819595 var2321)) ; Statement: $r1 = staticinvoke <java.lang.Character: char[] toChars(int)>(i0) 
(assert true)
;(assert (append/109888945 var2122 var3870)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r1) 
(declare-const var2122!1 String)
(assert (str.prefixof var2122 var2122!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2642_toChars/-1738819595=([int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder)}
; {var2122=r0, var2321=i0, var2642=java.lang.Character, var3870=$r1}
; {r0=var2122, i0=var2321, java.lang.Character=var2642, $r1=var3870}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r1 = staticinvoke <java.lang.Character: char[] toChars(int)>(i0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r1);	return
;block_num 1