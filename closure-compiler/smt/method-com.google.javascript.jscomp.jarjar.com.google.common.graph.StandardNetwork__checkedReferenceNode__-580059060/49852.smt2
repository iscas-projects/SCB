(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort var265 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun edgeToReferenceNode/527978693 (var285) var2350)
(declare-fun get/-853137407 (var2350 var265) var265)
(declare-const null-var285 var285)
(declare-const null-var265 var265)
(declare-const var3491 var285) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork 
(assert (not (= var3491 null-var285)))
(declare-const var906 var265) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var906 null-var265)))
(define-const var3649 var2350 (edgeToReferenceNode/527978693 var3491)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache edgeToReferenceNode> 
(assert true)
(define-const var2378 var265 (get/-853137407 var3649 var906)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2378 null-var265))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {edgeToReferenceNode/527978693=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object)}
; {var285=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork, var3491=r0, var265=java.lang.Object, var906=r1, var2350=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var3649=$r2, var2378=r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork=var285, r0=var3491, java.lang.Object=var265, r1=var906, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var2350, $r2=var3649, r3=var2378}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache edgeToReferenceNode>;	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2