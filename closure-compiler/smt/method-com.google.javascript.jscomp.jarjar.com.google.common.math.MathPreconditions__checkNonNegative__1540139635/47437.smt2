(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3648 0)
(declare-sort var516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun signum/-1960206851 (var516) Int)
(declare-const null-String String)
(declare-const null-var516 var516)
(declare-const var2797 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2797 null-String)))
(declare-const var387 var516) ; Statement: r0 := @parameter1: java.math.BigInteger 
(assert (not (= var387 null-var516)))
(assert true)
(define-const var706 Int (signum/-1960206851 var387)) ; Statement: $i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>() 
 ; Statement: if $i0 >= 0 goto return r0 
(assert (>= var706 0)) ; Cond: $i0 >= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {signum/-1960206851=([java.math.BigInteger], int)}
; {var2797=r3, var3648=null_type, var516=java.math.BigInteger, var387=r0, var706=$i0}
; {r3=var2797, null_type=var3648, java.math.BigInteger=var516, r0=var387, $i0=var706}
;seq 
;cnt {}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.math.BigInteger;	$i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>();	if $i0 >= 0 goto return r0;	return r0
;block_num 2