(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3458 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3458 null-Int)))
(declare-const var3941 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3941 null-String)))
(define-const var3701 Int (ite (> var3458 0) 1 (ite (< var3458 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var2187 Int (cast-from-Int-to-Int var3701)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return l0 
(assert (>= var2187 0)) ; Cond: $i2 >= 0 
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int)}
; {var3458=l0, var3941=r2, var981=null_type, var3701=$b1, var2187=$i2}
; {l0=var3458, r2=var3941, null_type=var981, $b1=var3701, $i2=var2187}
;seq 
;cnt {}
;stmts l0 := @parameter0: long;	r2 := @parameter1: java.lang.String;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto return l0;	return l0
;block_num 2