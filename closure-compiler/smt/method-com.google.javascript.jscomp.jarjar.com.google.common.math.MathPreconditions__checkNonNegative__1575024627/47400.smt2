(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3107 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3107 null-String)))
(declare-const var1726 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1726 null-Int)))
(define-const var2266 Int (ite (> var1726 0) 1 (ite (< var1726 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var392 Int (cast-from-Int-to-Int var2266)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return l0 
(assert (>= var392 0)) ; Cond: $i2 >= 0 
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int)}
; {var3107=r2, var545=null_type, var1726=l0, var2266=$b1, var392=$i2}
; {r2=var3107, null_type=var545, l0=var1726, $b1=var2266, $i2=var392}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto return l0;	return l0
;block_num 2