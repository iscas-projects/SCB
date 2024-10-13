(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1286 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1286 null-String)))
(declare-const var2273 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2273 null-Int)))
(define-const var3198 Int (ite (> var2273 0) 1 (ite (< var2273 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var846 Int (cast-from-Int-to-Int var3198)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 > 0 goto return l0 
(assert (> var846 0)) ; Cond: $i2 > 0 
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int)}
; {var1286=r2, var1445=null_type, var2273=l0, var3198=$b1, var846=$i2}
; {r2=var1286, null_type=var1445, l0=var2273, $b1=var3198, $i2=var846}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 > 0 goto return l0;	return l0
;block_num 2