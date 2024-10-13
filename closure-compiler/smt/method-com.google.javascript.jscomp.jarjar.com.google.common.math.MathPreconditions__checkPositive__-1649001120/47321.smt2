(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun signum/-1960206851 (var1615) Int)
(declare-const null-String String)
(declare-const null-var1615 var1615)
(declare-const var3483 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3483 null-String)))
(declare-const var3501 var1615) ; Statement: r0 := @parameter1: java.math.BigInteger 
(assert (not (= var3501 null-var1615)))
(assert true)
(define-const var3249 Int (signum/-1960206851 var3501)) ; Statement: $i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>() 
 ; Statement: if $i0 > 0 goto return r0 
(assert (> var3249 0)) ; Cond: $i0 > 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {signum/-1960206851=([java.math.BigInteger], int)}
; {var3483=r3, var1752=null_type, var1615=java.math.BigInteger, var3501=r0, var3249=$i0}
; {r3=var3483, null_type=var1752, java.math.BigInteger=var1615, r0=var3501, $i0=var3249}
;seq 
;cnt {}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.math.BigInteger;	$i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>();	if $i0 > 0 goto return r0;	return r0
;block_num 2