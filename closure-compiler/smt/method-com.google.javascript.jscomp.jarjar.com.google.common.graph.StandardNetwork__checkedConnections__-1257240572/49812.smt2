(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2907 0)
(declare-sort var3936 0)
(declare-sort var2997 0)
(declare-sort var1266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodeConnections/527978693 (var2907) var2997)
(declare-fun get/-853137407 (var2997 var3936) var3936)
(declare-fun cast-from-var3936-to-var1266 (var3936) var1266)
(declare-const null-var2907 var2907)
(declare-const null-var3936 var3936)
(declare-const null-var1266 var1266)
(declare-const var1746 var2907) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork 
(assert (not (= var1746 null-var2907)))
(declare-const var1984 var3936) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1984 null-var3936)))
(define-const var3646 var2997 (nodeConnections/527978693 var1746)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections> 
(assert true)
(define-const var3856 var3936 (get/-853137407 var3646 var1984)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var267 var1266 (cast-from-var3936-to-var1266 var3856)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var267 null-var1266))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nodeConnections/527978693=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object), cast-from-var3936-to-var1266=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections)}
; {var2907=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork, var1746=r0, var3936=java.lang.Object, var1984=r1, var2997=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var3646=$r2, var3856=$r3, var1266=com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections, var267=r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork=var2907, r0=var1746, java.lang.Object=var3936, r1=var1984, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var2997, $r2=var3646, $r3=var3856, com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections=var1266, r4=var267}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections) $r3;	if r4 != null goto return r4;	return r4
;block_num 2