(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAbsolute/-1391432365 (var1902) Bool)
(declare-const null-var1902 var1902)
(declare-const var2378 var1902) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var2378 null-var1902)))
(assert true)
(define-const var2972 Bool (isAbsolute/-1391432365 var2378)) ; Statement: $z0 = virtualinvoke r0.<java.net.URI: boolean isAbsolute()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2972 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isAbsolute/-1391432365=([java.net.URI], boolean)}
; {var1902=java.net.URI, var2378=r0, var2972=$z0}
; {java.net.URI=var1902, r0=var2378, $z0=var2972}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URI;	$z0 = virtualinvoke r0.<java.net.URI: boolean isAbsolute()>();	if $z0 == 0 goto return;	return
;block_num 2