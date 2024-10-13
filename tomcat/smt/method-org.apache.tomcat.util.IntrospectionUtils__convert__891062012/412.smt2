(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3331 0)
(declare-sort var584 0)
(declare-sort var3736 0)
(declare-sort var3112 0)
(declare-sort var1382 0)
(declare-sort var2854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var584 (String) var584)
(declare-fun var3736-init () var3736)
(declare-fun arr-var2854-init () (Array Int var2854))
(declare-fun cast-from-String-to-var2854 (String) var2854)
(declare-fun getString/-496799379 (var3112 String (Array Int var2854)) String)
(declare-fun <init>/875830710 (var3736 String) void)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var584 var584)
(declare-const var1382-sm var3112)
(declare-const null-__Array__Int__var2854__ (Array Int var2854))
(declare-const var3275 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3275 null-String)))
(declare-const var1024 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1024 null-ClassObject)))
(define-const var3849 var584 null-var584) ; Statement: r30 = null 
(define-const var969 String "java.lang.String") ; Statement: $r2 = "java.lang.String" 
(assert true)
(define-const var535 String (getName/-1958580599 var1024)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3068 Bool (= var969 var535)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "java.lang.Integer" 
(assert (not (= (ite var3068 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3849!1 var584 (cast-from-String-to-var584 var3275)) ; Statement: r30 = r5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r30 != null goto return r30 
(assert (not (not (= var3849!1 null-var584)))) ; Negate: Cond: r30 != null  
(define-const var164 var3736 var3736-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2188 var3112 var1382-sm) ; Statement: $r8 = <org.apache.tomcat.util.IntrospectionUtils: org.apache.tomcat.util.res.StringManager sm> 
(define-const var1572 (Array Int var2854) arr-var2854-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var1572!1 (Array Int var2854))
(assert (not (= var1572!1 null-__Array__Int__var2854__)))
(assert (= (select var1572!1 0) (cast-from-String-to-var2854 var3275))) ; Statement: $r7[0] = r5 
(assert true)
(define-const var3939 String (getName/-1958580599 var1024)) ; Statement: $r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1572!2 (Array Int var2854))
(assert (not (= var1572!2 null-__Array__Int__var2854__)))
(assert (= (select var1572!2 1) (cast-from-String-to-var2854 var3939))) ; Statement: $r7[1] = $r9 
(assert true)
(define-const var1315 String (getString/-496799379 var2188 "introspectionUtils.conversionError" var1572!2)) ; Statement: $r10 = virtualinvoke $r8.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("introspectionUtils.conversionError", $r7) 
(assert true)
;(assert (<init>/875830710 var164 var1315)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var164!1 var3736)
(declare-const var1315!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var584=([java.lang.String], java.io.Serializable), var3736-init=([], java.lang.IllegalArgumentException), arr-var2854-init=([], java.lang.Object[]), cast-from-String-to-var2854=([java.lang.String], java.lang.Object), getString/-496799379=([org.apache.tomcat.util.res.StringManager, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3275=r5, var3331=null_type, var1024=r0, var584=java.io.Serializable, var3849=r30, var969=$r2, var535=$r1, var3068=$z0, var3736=java.lang.IllegalArgumentException, var164=$r6, var3112=org.apache.tomcat.util.res.StringManager, var1382=org.apache.tomcat.util.IntrospectionUtils, var2188=$r8, var2854=java.lang.Object, var1572=$r7, var3939=$r9, var1315=$r10}
; {r5=var3275, null_type=var3331, r0=var1024, java.io.Serializable=var584, r30=var3849, $r2=var969, $r1=var535, $z0=var3068, java.lang.IllegalArgumentException=var3736, $r6=var164, org.apache.tomcat.util.res.StringManager=var3112, org.apache.tomcat.util.IntrospectionUtils=var1382, $r8=var2188, java.lang.Object=var2854, $r7=var1572, $r9=var3939, $r10=var1315}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Class;	r30 = null;	$r2 = "java.lang.String";	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "java.lang.Integer";	r30 = r5;	goto [?= (branch)];	if r30 != null goto return r30;	$r6 = new java.lang.IllegalArgumentException;	$r8 = <org.apache.tomcat.util.IntrospectionUtils: org.apache.tomcat.util.res.StringManager sm>;	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r5;	$r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r7[1] = $r9;	$r10 = virtualinvoke $r8.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("introspectionUtils.conversionError", $r7);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 4