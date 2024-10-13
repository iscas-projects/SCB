(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1378 0)
(declare-sort var1698 0)
(declare-sort var707 0)
(declare-sort var2049 0)
(declare-sort var801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2049-init () (Array Int var2049))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2049 (String) var2049)
(declare-fun getName/-1644825713 (var1698) String)
(declare-fun String_format/1339386452 (String (Array Int var2049)) String)
(declare-fun <init>/-8765015 (var801 String) void)
(declare-fun cast-from-var1378-to-var801 (var1378) var801)
(declare-const null-var1378 var1378)
(declare-const null-var1698 var1698)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var2049__ (Array Int var2049))
(declare-const var882 var1378) ; Statement: r0 := @this: org.junit.internal.runners.rules.ValidationError 
(assert (not (= var882 null-var1378)))
(declare-const var2250 var1698) ; Statement: r4 := @parameter0: org.junit.runners.model.FrameworkMember 
(assert (not (= var2250 null-var1698)))
(declare-const var2259 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2259 null-ClassObject)))
(declare-const var1684 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1684 null-String)))
(define-const var2939 (Array Int var2049) arr-var2049-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3225 String (getSimpleName/-390194377 var2259)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2939!1 (Array Int var2049))
(assert (not (= var2939!1 null-__Array__Int__var2049__)))
(assert (= (select var2939!1 0) (cast-from-String-to-var2049 var3225))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var1808 String (getName/-1644825713 var2250)) ; Statement: $r5 = virtualinvoke r4.<org.junit.runners.model.FrameworkMember: java.lang.String getName()>() 
(declare-const var2939!2 (Array Int var2049))
(assert (not (= var2939!2 null-__Array__Int__var2049__)))
(assert (= (select var2939!2 1) (cast-from-String-to-var2049 var1808))) ; Statement: $r1[1] = $r5 
(declare-const var2939!3 (Array Int var2049))
(assert (not (= var2939!3 null-__Array__Int__var2049__)))
(assert (= (select var2939!3 2) (cast-from-String-to-var2049 var1684))) ; Statement: $r1[2] = r6 
(define-const var1788 String (String_format/1339386452 "The @%s \u0027%s\u0027 %s" var2939!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The @%s \'%s\' %s", $r1) 
(assert true)
;(assert (<init>/-8765015 (cast-from-var1378-to-var801 var882) var1788)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r7) 

(declare-const var882!1 var1378)
(declare-const var1788!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2049-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2049=([java.lang.String], java.lang.Object), getName/-1644825713=([org.junit.runners.model.FrameworkMember], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var1378-to-var801=([org.junit.internal.runners.rules.ValidationError], java.lang.Exception)}
; {var1378=org.junit.internal.runners.rules.ValidationError, var882=r0, var1698=org.junit.runners.model.FrameworkMember, var2250=r4, var2259=r2, var1684=r6, var707=null_type, var2049=java.lang.Object, var2939=$r1, var3225=$r3, var1808=$r5, var1788=$r7, var801=java.lang.Exception}
; {org.junit.internal.runners.rules.ValidationError=var1378, r0=var882, org.junit.runners.model.FrameworkMember=var1698, r4=var2250, r2=var2259, r6=var1684, null_type=var707, java.lang.Object=var2049, $r1=var2939, $r3=var3225, $r5=var1808, $r7=var1788, java.lang.Exception=var801}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.internal.runners.rules.ValidationError;	r4 := @parameter0: org.junit.runners.model.FrameworkMember;	r2 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.String;	$r1 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r1[0] = $r3;	$r5 = virtualinvoke r4.<org.junit.runners.model.FrameworkMember: java.lang.String getName()>();	$r1[1] = $r5;	$r1[2] = r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The @%s \'%s\' %s", $r1);	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r7);	return
;block_num 1