(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2358 0)
(declare-sort var3690 0)
(declare-sort var635 0)
(declare-sort var2164 0)
(declare-sort var3861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const ClassObject!class ClassObject)
(declare-const var635!class ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun var2164-init () var2164)
(declare-fun arr-var3861-init () (Array Int var3861))
(declare-fun cast-from-String-to-var3861 (String) var3861)
(declare-fun String_format/1339386452 (String (Array Int var3861)) String)
(declare-fun <init>/-760309220 (var2164 String) void)
(declare-const null-var2358 var2358)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3690 var3690)
(declare-const null-__Array__Int__var3861__ (Array Int var3861))
(declare-const var2078 var2358) ; Statement: r15 := @this: org.junit.internal.builders.AnnotatedBuilder 
(assert (not (= var2078 null-var2358)))
(declare-const var332 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var332 null-ClassObject)))
(declare-const var799 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var799 null-ClassObject)))
(define-const var2245 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(declare-const var2245!1 (Array Int ClassObject))
(assert (not (= var2245!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2245!1 0) ClassObject!class)) ; Statement: $r1[0] = class "Ljava/lang/Class;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var99 var3690) ; Statement: $r12 := @caughtexception 
(assert (not (= var99 null-var3690)))
(define-const var873 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r13 = newarray (java.lang.Class)[2] 
(declare-const var873!1 (Array Int ClassObject))
(assert (not (= var873!1 null-__Array__Int__ClassObject__)))
(assert (= (select var873!1 0) ClassObject!class)) ; Statement: $r13[0] = class "Ljava/lang/Class;" 
(declare-const var873!2 (Array Int ClassObject))
(assert (not (= var873!2 null-__Array__Int__ClassObject__)))
(assert (= (select var873!2 1) var635!class)) ; Statement: $r13[1] = class "Lorg/junit/runners/model/RunnerBuilder;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2570 var3690) ; Statement: $r7 := @caughtexception 
(assert (not (= var2570 null-var3690)))
(assert true)
(define-const var1690 String (getSimpleName/-390194377 var332)) ; Statement: r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(define-const var2758 var2164 var2164-init) ; Statement: $r9 = new org.junit.runners.model.InitializationError 
(define-const var2936 (Array Int var3861) arr-var3861-init) ; Statement: $r10 = newarray (java.lang.Object)[2] 
(declare-const var2936!1 (Array Int var3861))
(assert (not (= var2936!1 null-__Array__Int__var3861__)))
(assert (= (select var2936!1 0) (cast-from-String-to-var3861 var1690))) ; Statement: $r10[0] = r8 
(declare-const var2936!2 (Array Int var3861))
(assert (not (= var2936!2 null-__Array__Int__var3861__)))
(assert (= (select var2936!2 1) (cast-from-String-to-var3861 var1690))) ; Statement: $r10[1] = r8 
(define-const var1793 String (String_format/1339386452 "Custom runner class %s should have a public constructor with signature %s(Class testClass)" var2936!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Custom runner class %s should have a public constructor with signature %s(Class testClass)", $r10) 
(assert true)
;(assert (<init>/-760309220 var2758 var1793)) ; Statement: specialinvoke $r9.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r11) 

(declare-const var2758!1 var2164)
(declare-const var1793!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), var2164-init=([], org.junit.runners.model.InitializationError), arr-var3861-init=([], java.lang.Object[]), cast-from-String-to-var3861=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-760309220=([org.junit.runners.model.InitializationError, java.lang.String], void)}
; {var2358=org.junit.internal.builders.AnnotatedBuilder, var2078=r15, var332=r0, var799=r3, var2245=$r1, var3690=java.lang.NoSuchMethodException, var99=$r12, var873=$r13, var635=org.junit.runners.model.RunnerBuilder, var2570=$r7, var1690=r8, var2164=org.junit.runners.model.InitializationError, var2758=$r9, var3861=java.lang.Object, var2936=$r10, var1793=$r11}
; {org.junit.internal.builders.AnnotatedBuilder=var2358, r15=var2078, r0=var332, r3=var799, $r1=var2245, java.lang.NoSuchMethodException=var3690, $r12=var99, $r13=var873, org.junit.runners.model.RunnerBuilder=var635, $r7=var2570, r8=var1690, org.junit.runners.model.InitializationError=var2164, $r9=var2758, java.lang.Object=var3861, $r10=var2936, $r11=var1793}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r15 := @this: org.junit.internal.builders.AnnotatedBuilder;	r0 := @parameter0: java.lang.Class;	r3 := @parameter1: java.lang.Class;	$r1 = newarray (java.lang.Class)[1];	$r1[0] = class "Ljava/lang/Class;";	$r12 := @caughtexception;	$r13 = newarray (java.lang.Class)[2];	$r13[0] = class "Ljava/lang/Class;";	$r13[1] = class "Lorg/junit/runners/model/RunnerBuilder;";	$r7 := @caughtexception;	r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r9 = new org.junit.runners.model.InitializationError;	$r10 = newarray (java.lang.Object)[2];	$r10[0] = r8;	$r10[1] = r8;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Custom runner class %s should have a public constructor with signature %s(Class testClass)", $r10);	specialinvoke $r9.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r11);	throw $r9
;block_num 3