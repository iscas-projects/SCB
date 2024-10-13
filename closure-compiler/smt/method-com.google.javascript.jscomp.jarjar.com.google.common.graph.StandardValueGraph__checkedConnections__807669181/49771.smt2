(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3884 0)
(declare-sort var503 0)
(declare-sort var3692 0)
(declare-sort var3522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodeConnections/-952538010 (var3884) var3692)
(declare-fun get/-853137407 (var3692 var503) var503)
(declare-fun cast-from-var503-to-var3522 (var503) var3522)
(declare-const null-var3884 var3884)
(declare-const null-var503 var503)
(declare-const null-var3522 var3522)
(declare-const var3622 var3884) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph 
(assert (not (= var3622 null-var3884)))
(declare-const var3129 var503) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3129 null-var503)))
(define-const var330 var3692 (nodeConnections/-952538010 var3622)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections> 
(assert true)
(define-const var19 var503 (get/-853137407 var330 var3129)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1290 var3522 (cast-from-var503-to-var3522 var19)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1290 null-var3522))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nodeConnections/-952538010=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object), cast-from-var503-to-var3522=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections)}
; {var3884=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph, var3622=r0, var503=java.lang.Object, var3129=r1, var3692=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var330=$r2, var19=$r3, var3522=com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections, var1290=r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph=var3884, r0=var3622, java.lang.Object=var503, r1=var3129, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var3692, $r2=var330, $r3=var19, com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections=var3522, r4=var1290}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections) $r3;	if r4 != null goto return r4;	return r4
;block_num 2