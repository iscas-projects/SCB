(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var3241 0)
(declare-sort var832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var522 var522)
(declare-const null-String String)
(declare-const null-var832 var832)
(declare-const var3643 var522) ; Statement: r7 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols 
(assert (not (= var3643 null-var522)))
(declare-const var404 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var404 null-String)))
(declare-const var3483 var832) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3483 null-var832)))
(assert true)
(define-const var481 Bool (isEmpty/-1285796103 var404)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert (not (= (ite var481 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var522=com.google.javascript.jscomp.RescopeGlobalSymbols, var3643=r7, var404=r0, var3241=null_type, var832=com.google.javascript.jscomp.NodeTraversal, var3483=r1, var481=$z0}
; {com.google.javascript.jscomp.RescopeGlobalSymbols=var522, r7=var3643, r0=var404, null_type=var3241, com.google.javascript.jscomp.NodeTraversal=var832, r1=var3483, $z0=var481}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.NodeTraversal;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	return 0
;block_num 2