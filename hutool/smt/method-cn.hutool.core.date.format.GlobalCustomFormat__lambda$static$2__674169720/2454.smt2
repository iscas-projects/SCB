(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTime/1283854862 (var1857) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var1857 var1857)
(declare-const var465 var1857) ; Statement: r0 := @parameter0: java.util.Date 
(assert (not (= var465 null-var1857)))
(assert true)
(define-const var1625 Int (getTime/1283854862 var465)) ; Statement: $l0 = virtualinvoke r0.<java.util.Date: long getTime()>() 
(define-const var1236 String (String_valueOf/-107395227 var1625)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getTime/1283854862=([java.util.Date], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var1857=java.util.Date, var465=r0, var1625=$l0, var1236=$r1}
; {java.util.Date=var1857, r0=var465, $l0=var1625, $r1=var1236}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @parameter0: java.util.Date;	$l0 = virtualinvoke r0.<java.util.Date: long getTime()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 1