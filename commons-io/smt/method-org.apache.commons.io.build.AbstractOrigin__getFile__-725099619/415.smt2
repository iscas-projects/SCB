(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1362 0)
(declare-sort var972 0)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var972-init () var972)
(declare-fun arr-var2069-init () (Array Int var2069))
(declare-fun getSimpleName/603853551 (var1362) String)
(declare-fun cast-from-String-to-var2069 (String) var2069)
(declare-fun origin/-439761164 (var1362) var2069)
(declare-fun getClass/1258963082 (var2069) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var2069)) String)
(declare-fun <init>/-630064361 (var972 String) void)
(declare-const null-var1362 var1362)
(declare-const null-__Array__Int__var2069__ (Array Int var2069))
(declare-const var3856 var1362) ; Statement: r2 := @this: org.apache.commons.io.build.AbstractOrigin 
(assert (not (= var3856 null-var1362)))
(define-const var3274 var972 var972-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var18 (Array Int var2069) arr-var2069-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var55 String (getSimpleName/603853551 var3856)) ; Statement: $r3 = specialinvoke r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>() 
(declare-const var18!1 (Array Int var2069))
(assert (not (= var18!1 null-__Array__Int__var2069__)))
(assert (= (select var18!1 0) (cast-from-String-to-var2069 var55))) ; Statement: $r1[0] = $r3 
(define-const var2780 var2069 (origin/-439761164 var3856)) ; Statement: $r4 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin> 
(assert true)
(define-const var3084 ClassObject (getClass/1258963082 var2780)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3497 String (getSimpleName/-390194377 var3084)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var18!2 (Array Int var2069))
(assert (not (= var18!2 null-__Array__Int__var2069__)))
(assert (= (select var18!2 1) (cast-from-String-to-var2069 var3497))) ; Statement: $r1[1] = $r6 
(define-const var1746 var2069 (origin/-439761164 var3856)) ; Statement: $r7 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin> 
(declare-const var18!3 (Array Int var2069))
(assert (not (= var18!3 null-__Array__Int__var2069__)))
(assert (= (select var18!3 2) var1746)) ; Statement: $r1[2] = $r7 
(define-const var3800 String (String_format/1339386452 "%s#getFile() for %s origin %s" var18!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s#getFile() for %s origin %s", $r1) 
(assert true)
;(assert (<init>/-630064361 var3274 var3800)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8) 

(declare-const var3274!1 var972)
(declare-const var3800!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var972-init=([], java.lang.UnsupportedOperationException), arr-var2069-init=([], java.lang.Object[]), getSimpleName/603853551=([org.apache.commons.io.build.AbstractOrigin], java.lang.String), cast-from-String-to-var2069=([java.lang.String], java.lang.Object), origin/-439761164=([org.apache.commons.io.build.AbstractOrigin], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1362=org.apache.commons.io.build.AbstractOrigin, var3856=r2, var972=java.lang.UnsupportedOperationException, var3274=$r0, var2069=java.lang.Object, var18=$r1, var55=$r3, var2780=$r4, var3084=$r5, var3497=$r6, var1746=$r7, var3800=$r8}
; {org.apache.commons.io.build.AbstractOrigin=var1362, r2=var3856, java.lang.UnsupportedOperationException=var972, $r0=var3274, java.lang.Object=var2069, $r1=var18, $r3=var55, $r4=var2780, $r5=var3084, $r6=var3497, $r7=var1746, $r8=var3800}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.apache.commons.io.build.AbstractOrigin;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = newarray (java.lang.Object)[3];	$r3 = specialinvoke r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>();	$r1[0] = $r3;	$r4 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	$r1[1] = $r6;	$r7 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin>;	$r1[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s#getFile() for %s origin %s", $r1);	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1