(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var607 0)
(declare-sort var287 0)
(declare-sort var1480 0)
(declare-sort var3356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun edgeToReferenceNode/527978693 (var3671) var287)
(declare-fun get/-853137407 (var287 var607) var607)
(declare-fun var1480_checkNotNull/1446102589 (var607) var607)
(declare-fun var3356-init () var3356)
(declare-fun arr-var607-init () (Array Int var607))
(declare-fun String_format/1339386452 (String (Array Int var607)) String)
(declare-fun <init>/875830710 (var3356 String) void)
(declare-const null-var3671 var3671)
(declare-const null-var607 var607)
(declare-const null-__Array__Int__var607__ (Array Int var607))
(declare-const var237 var3671) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork 
(assert (not (= var237 null-var3671)))
(declare-const var155 var607) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var155 null-var607)))
(define-const var16 var287 (edgeToReferenceNode/527978693 var237)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache edgeToReferenceNode> 
(assert true)
(define-const var1228 var607 (get/-853137407 var16 var155)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1228 null-var607)))) ; Negate: Cond: r3 != null  
;(assert (var1480_checkNotNull/1446102589 var155)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var155!1 var607)
(define-const var121 var3356 var3356-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var825 (Array Int var607) arr-var607-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var825!1 (Array Int var607))
(assert (not (= var825!1 null-__Array__Int__var607__)))
(assert (= (select var825!1 0) var155!1)) ; Statement: $r5[0] = r1 
(define-const var1162 String (String_format/1339386452 "Edge %s is not an element of this graph." var825!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Edge %s is not an element of this graph.", $r5) 
(assert true)
;(assert (<init>/875830710 var121 var1162)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var121!1 var3356)
(declare-const var1162!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {edgeToReferenceNode/527978693=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object), var1480_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), var3356-init=([], java.lang.IllegalArgumentException), arr-var607-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3671=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork, var237=r0, var607=java.lang.Object, var155=r1, var287=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var16=$r2, var1228=r3, var1480=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3356=java.lang.IllegalArgumentException, var121=$r4, var825=$r5, var1162=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork=var3671, r0=var237, java.lang.Object=var607, r1=var155, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var287, $r2=var16, r3=var1228, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1480, java.lang.IllegalArgumentException=var3356, $r4=var121, $r5=var825, $r6=var1162}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardNetwork: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache edgeToReferenceNode>;	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	if r3 != null goto return r3;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r4 = new java.lang.IllegalArgumentException;	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r1;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Edge %s is not an element of this graph.", $r5);	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r4
;block_num 2