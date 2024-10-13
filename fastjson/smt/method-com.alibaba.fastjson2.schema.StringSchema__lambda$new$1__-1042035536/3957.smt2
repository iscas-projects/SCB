(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var409 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var409 null-String)))
 ; Statement: if r0 == null goto return 0 
(assert (not (= var409 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var997 Bool (isEmpty/-1285796103 var409)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>(r0) 
(assert (not (= (ite var997 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var409=r0, var397=null_type, var997=$z0}
; {r0=var409, null_type=var397, $z0=var997}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto return 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>(r0);	return 0
;block_num 3