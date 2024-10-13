(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3528 0)
(declare-sort var3166 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var123-init () var123)
(declare-fun arr-var3166-init () (Array Int var3166))
(declare-fun getClass/1258963082 (var3166) ClassObject)
(declare-fun cast-from-var3528-to-var3166 (var3528) var3166)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3166 (String) var3166)
(declare-fun String_format/1339386452 (String (Array Int var3166)) String)
(declare-fun <init>/-630064361 (var123 String) void)
(declare-const null-var3528 var3528)
(declare-const null-var3166 var3166)
(declare-const null-__Array__Int__var3166__ (Array Int var3166))
(declare-const var3600 var3528) ; Statement: r2 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var3600 null-var3528)))
(declare-const var3181 var3166) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var3181 null-var3166)))
(define-const var213 var123 var123-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1615 (Array Int var3166) arr-var3166-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2793 ClassObject (getClass/1258963082 (cast-from-var3528-to-var3166 var3600))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var715 String (getName/-1958580599 var2793)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1615!1 (Array Int var3166))
(assert (not (= var1615!1 null-__Array__Int__var3166__)))
(assert (= (select var1615!1 0) (cast-from-String-to-var3166 var715))) ; Statement: $r1[0] = $r4 
(define-const var474 String (String_format/1339386452 "Operation not supported: %s.remove()" var1615!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Operation not supported: %s.remove()", $r1) 
(assert true)
;(assert (<init>/-630064361 var213 var474)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var213!1 var123)
(declare-const var474!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var123-init=([], java.lang.UnsupportedOperationException), arr-var3166-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3528-to-var3166=([org.hibernate.event.internal.MergeContext], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3166=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3528=org.hibernate.event.internal.MergeContext, var3600=r2, var3166=java.lang.Object, var3181=r6, var123=java.lang.UnsupportedOperationException, var213=$r0, var1615=$r1, var2793=$r3, var715=$r4, var474=$r5}
; {org.hibernate.event.internal.MergeContext=var3528, r2=var3600, java.lang.Object=var3166, r6=var3181, java.lang.UnsupportedOperationException=var123, $r0=var213, $r1=var1615, $r3=var2793, $r4=var715, $r5=var474}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.event.internal.MergeContext;	r6 := @parameter0: java.lang.Object;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r1[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Operation not supported: %s.remove()", $r1);	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1