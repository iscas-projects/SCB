(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var406 var406)
(declare-const var3822 var406) ; Statement: r0 := @parameter0: java.net.URLClassLoader 
(assert (not (= var3822 null-var406)))
 ; Statement: if r0 == null goto $r6 = "null" 
(assert (= var3822 null-var406)) ; Cond: r0 == null 
(define-const var1672 String "null") ; Statement: $r6 = "null" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var406=java.net.URLClassLoader, var3822=r0, var1672=$r6}
; {java.net.URLClassLoader=var406, r0=var3822, $r6=var1672}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.URLClassLoader;	if r0 == null goto $r6 = "null";	$r6 = "null";	return $r6
;block_num 3