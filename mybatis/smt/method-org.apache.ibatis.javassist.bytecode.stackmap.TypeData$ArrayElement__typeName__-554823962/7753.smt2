(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2169 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2169 null-String)))
(assert true)
(define-const var402 Int (length/-134980193 var2169)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 1 goto return "java.lang.Object" 
(assert (<= var402 1)) ; Cond: $i0 <= 1 
 ; Statement: return "java.lang.Object" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2169=r0, var2517=null_type, var402=$i0}
; {r0=var2169, null_type=var2517, $i0=var402}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 1 goto return "java.lang.Object";	return "java.lang.Object"
;block_num 2