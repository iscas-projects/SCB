(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var813 0)
(declare-sort var2179 0)
(declare-sort var2338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parents/66204529 (var356) var813)
(declare-fun var813_add/-1142548109 (var813 var2179) Bool)
(declare-fun cast-from-ClassObject-to-var2179 (ClassObject) var2179)
(declare-fun var2338-init () var2338)
(declare-fun arr-var2179-init () (Array Int var2179))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2179 (String) var2179)
(declare-fun String_format/1339386452 (String (Array Int var2179)) String)
(declare-fun <init>/-760309220 (var2338 String) void)
(declare-const null-var356 var356)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var2179__ (Array Int var2179))
(declare-const var2394 var356) ; Statement: r0 := @this: org.junit.runners.model.RunnerBuilder 
(assert (not (= var2394 null-var356)))
(declare-const var2728 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2728 null-ClassObject)))
(define-const var2717 var813 (parents/66204529 var2394)) ; Statement: $r2 = r0.<org.junit.runners.model.RunnerBuilder: java.util.Set parents> 
(define-const var989 Bool (var813_add/-1142548109 var2717 (cast-from-ClassObject-to-var2179 var2728))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (not (= (ite var989 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1533 var2338 var2338-init) ; Statement: $r3 = new org.junit.runners.model.InitializationError 
(define-const var2116 (Array Int var2179) arr-var2179-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var41 String (getName/-1958580599 var2728)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2116!1 (Array Int var2179))
(assert (not (= var2116!1 null-__Array__Int__var2179__)))
(assert (= (select var2116!1 0) (cast-from-String-to-var2179 var41))) ; Statement: $r4[0] = $r5 
(define-const var2981 String (String_format/1339386452 "class \u0027%s\u0027 (possibly indirectly) contains itself as a SuiteClass" var2116!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("class \'%s\' (possibly indirectly) contains itself as a SuiteClass", $r4) 
(assert true)
;(assert (<init>/-760309220 var1533 var2981)) ; Statement: specialinvoke $r3.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r6) 

(declare-const var1533!1 var2338)
(declare-const var2981!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {parents/66204529=([org.junit.runners.model.RunnerBuilder], java.util.Set), var813_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-ClassObject-to-var2179=([java.lang.Class], java.lang.Object), var2338-init=([], org.junit.runners.model.InitializationError), arr-var2179-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2179=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-760309220=([org.junit.runners.model.InitializationError, java.lang.String], void)}
; {var356=org.junit.runners.model.RunnerBuilder, var2394=r0, var2728=r1, var813=java.util.Set, var2717=$r2, var2179=java.lang.Object, var989=$z0, var2338=org.junit.runners.model.InitializationError, var1533=$r3, var2116=$r4, var41=$r5, var2981=$r6}
; {org.junit.runners.model.RunnerBuilder=var356, r0=var2394, r1=var2728, java.util.Set=var813, $r2=var2717, java.lang.Object=var2179, $z0=var989, org.junit.runners.model.InitializationError=var2338, $r3=var1533, $r4=var2116, $r5=var41, $r6=var2981}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.runners.model.RunnerBuilder;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.junit.runners.model.RunnerBuilder: java.util.Set parents>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto return r1;	$r3 = new org.junit.runners.model.InitializationError;	$r4 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("class \'%s\' (possibly indirectly) contains itself as a SuiteClass", $r4);	specialinvoke $r3.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r6);	throw $r3
;block_num 2