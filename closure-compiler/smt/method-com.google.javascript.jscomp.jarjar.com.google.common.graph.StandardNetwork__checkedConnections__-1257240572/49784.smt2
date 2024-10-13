(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var647 0)
(declare-sort var1350 0)
(declare-sort var3817 0)
(declare-sort var3884 0)
(declare-sort var1864 0)
(declare-sort var477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodeConnections/527978693 (var647) var3817)
(declare-fun get/-853137407 (var3817 var1350) var1350)
(declare-fun cast-from-var1350-to-var3884 (var1350) var3884)
(declare-fun var1864_checkNotNull/1446102589 (var1350) var1350)
(declare-fun var477-init () var477)
(declare-fun arr-var1350-init () (Array Int var1350))
(declare-fun String_format/1339386452 (String (Array Int var1350)) String)
(declare-fun <init>/875830710 (var477 String) void)
(declare-const null-var647 var647)
(declare-const null-var1350 var1350)
(declare-const null-var3884 var3884)
(declare-const null-__Array__Int__var1350__ (Array Int var1350))
(declare-const var3157 var647) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork 
(assert (not (= var3157 null-var647)))
(declare-const var1957 var1350) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1957 null-var1350)))
(define-const var3323 var3817 (nodeConnections/527978693 var3157)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections> 
(assert true)
(define-const var525 var1350 (get/-853137407 var3323 var1957)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1696 var3884 (cast-from-var1350-to-var3884 var525)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1696 null-var3884)))) ; Negate: Cond: r4 != null  
;(assert (var1864_checkNotNull/1446102589 var1957)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var1957!1 var1350)
(define-const var3685 var477 var477-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1678 (Array Int var1350) arr-var1350-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var1678!1 (Array Int var1350))
(assert (not (= var1678!1 null-__Array__Int__var1350__)))
(assert (= (select var1678!1 0) var1957!1)) ; Statement: $r6[0] = r1 
(define-const var689 String (String_format/1339386452 "Node %s is not an element of this graph." var1678!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Node %s is not an element of this graph.", $r6) 
(assert true)
;(assert (<init>/875830710 var3685 var689)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3685!1 var477)
(declare-const var689!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nodeConnections/527978693=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object), cast-from-var1350-to-var3884=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections), var1864_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), var477-init=([], java.lang.IllegalArgumentException), arr-var1350-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var647=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork, var3157=r0, var1350=java.lang.Object, var1957=r1, var3817=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var3323=$r2, var525=$r3, var3884=com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections, var1696=r4, var1864=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var477=java.lang.IllegalArgumentException, var3685=$r5, var1678=$r6, var689=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork=var647, r0=var3157, java.lang.Object=var1350, r1=var1957, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var3817, $r2=var3323, $r3=var525, com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections=var3884, r4=var1696, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1864, java.lang.IllegalArgumentException=var477, $r5=var3685, $r6=var1678, $r7=var689}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.NetworkConnections) $r3;	if r4 != null goto return r4;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r5 = new java.lang.IllegalArgumentException;	$r6 = newarray (java.lang.Object)[1];	$r6[0] = r1;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Node %s is not an element of this graph.", $r6);	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r5
;block_num 2