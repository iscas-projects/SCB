(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3395 null-String)))
(assert true)
(define-const var2484 Int (lastIndexOf/-1292097097 var3395 47)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3311 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 != $i3 goto $i5 = (int) -1 
(assert (not (= var2484 var3311))) ; Cond: i1 != $i3 
(define-const var2678 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 == $i5 goto $r1 = null 
(assert (= var2484 var2678)) ; Cond: i1 == $i5 
(define-const var125 String null-String) ; Statement: $r1 = null 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3395=r0, var3237=null_type, var2484=i1, var3311=$i3, var2678=$i5, var125=$r1}
; {r0=var3395, null_type=var3237, i1=var2484, $i3=var3311, $i5=var2678, $r1=var125}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if i1 != $i3 goto $i5 = (int) -1;	$i5 = (int) -1;	if i1 == $i5 goto $r1 = null;	$r1 = null;	return $r1
;block_num 4