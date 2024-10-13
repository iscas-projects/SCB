(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort var3372 0)
(declare-sort var2901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInstance/451912363 (ClassObject var1864) Bool)
(declare-fun var3372-init () var3372)
(declare-fun arr-var1864-init () (Array Int var1864))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1864 (String) var1864)
(declare-fun var2901_getName/1956097721 (var1864 String) String)
(declare-fun String_format/1339386452 (String (Array Int var1864)) String)
(declare-fun <init>/875830710 (var3372 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1864 var1864)
(declare-const null-__Array__Int__var1864__ (Array Int var1864))
(declare-const var2828 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2828 null-ClassObject)))
(declare-const var1048 var1864) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1048 null-var1864)))
(assert true)
(define-const var3923 Bool (isInstance/451912363 var2828 var1048)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3923 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var958 var3372 var3372-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1283 (Array Int var1864) arr-var1864-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3397 String (getName/-1958580599 var2828)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1283!1 (Array Int var1864))
(assert (not (= var1283!1 null-__Array__Int__var1864__)))
(assert (= (select var1283!1 0) (cast-from-String-to-var1864 var3397))) ; Statement: $r3[0] = $r4 
(define-const var183 String (var2901_getName/1956097721 var1048 "null")) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Object,java.lang.String)>(r1, "null") 
(declare-const var1283!2 (Array Int var1864))
(assert (not (= var1283!2 null-__Array__Int__var1864__)))
(assert (= (select var1283!2 1) (cast-from-String-to-var1864 var183))) ; Statement: $r3[1] = $r5 
(define-const var2943 String (String_format/1339386452 "Expected type: %s, actual: %s" var1283!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Expected type: %s, actual: %s", $r3) 
(assert true)
;(assert (<init>/875830710 var958 var2943)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var958!1 var3372)
(declare-const var2943!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var3372-init=([], java.lang.IllegalArgumentException), arr-var1864-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1864=([java.lang.String], java.lang.Object), var2901_getName/1956097721=([java.lang.Object, java.lang.String], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2828=r0, var1864=java.lang.Object, var1048=r1, var3923=$z0, var3372=java.lang.IllegalArgumentException, var958=$r2, var1283=$r3, var3397=$r4, var2901=org.apache.commons.lang3.ClassUtils, var183=$r5, var2943=$r6}
; {r0=var2828, java.lang.Object=var1864, r1=var1048, $z0=var3923, java.lang.IllegalArgumentException=var3372, $r2=var958, $r3=var1283, $r4=var3397, org.apache.commons.lang3.ClassUtils=var2901, $r5=var183, $r6=var2943}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto return;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[2];	$r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r3[0] = $r4;	$r5 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Object,java.lang.String)>(r1, "null");	$r3[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Expected type: %s, actual: %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2