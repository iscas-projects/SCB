(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const var1686 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1686 null-String)))
(declare-const var2418 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var2418 null-Float64)))
(define-const var2955 Int (ite (fp.gt var2418 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var2418 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 0.0 
(define-const var1886 Int (cast-from-Int-to-Int var2955)) ; Statement: $i1 = (int) $b0 
 ; Statement: if $i1 >= 0 goto return d0 
(assert (>= var1886 0)) ; Cond: $i1 >= 0 
 ; Statement: return d0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int)}
; {var1686=r2, var1227=null_type, var2418=d0, var2955=$b0, var1886=$i1}
; {r2=var1686, null_type=var1227, d0=var2418, $b0=var2955, $i1=var1886}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	d0 := @parameter1: double;	$b0 = d0 cmpl 0.0;	$i1 = (int) $b0;	if $i1 >= 0 goto return d0;	return d0
;block_num 2