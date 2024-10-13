(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var115 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var115 null-String)))
(declare-const var995 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var995 null-Bool)))
(assert true)
(define-const var2204 Int (length/-134980193 var115)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 1 goto return 0 
(assert (< var2204 1)) ; Cond: $i0 < 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var115=r0, var3833=null_type, var995=z3, var2204=$i0}
; {r0=var115, null_type=var3833, z3=var995, $i0=var2204}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 1 goto return 0;	return 0
;block_num 2