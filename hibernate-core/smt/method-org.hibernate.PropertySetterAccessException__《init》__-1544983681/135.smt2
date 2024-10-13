(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var442 0)
(declare-sort var1418 0)
(declare-sort var3557 0)
(declare-sort var1698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3557-init () (Array Int var3557))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3557 (String) var3557)
(declare-fun String_format/1339386452 (String (Array Int var3557)) String)
(declare-fun <init>/231989769 (var1698 var442 String Bool ClassObject String) void)
(declare-fun cast-from-var283-to-var1698 (var283) var1698)
(declare-const null-var283 var283)
(declare-const null-var442 var442)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3557 var3557)
(declare-const null-__Array__Int__var3557__ (Array Int var3557))
(declare-const var2399 var283) ; Statement: r0 := @this: org.hibernate.PropertySetterAccessException 
(assert (not (= var2399 null-var283)))
(declare-const var3445 var442) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var3445 null-var442)))
(declare-const var3878 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var3878 null-ClassObject)))
(declare-const var2865 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2865 null-String)))
(declare-const var1133 ClassObject) ; Statement: r6 := @parameter3: java.lang.Class 
(assert (not (= var1133 null-ClassObject)))
(declare-const var1296 var3557) ; Statement: r8 := @parameter4: java.lang.Object 
(assert (not (= var1296 null-var3557)))
(declare-const var567 var3557) ; Statement: r9 := @parameter5: java.lang.Object 
(assert (not (= var567 null-var3557)))
(define-const var1972 (Array Int var3557) arr-var3557-init) ; Statement: $r2 = newarray (java.lang.Object)[5] 
(assert true)
(define-const var2794 String (getName/-1958580599 var3878)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1972!1 (Array Int var3557))
(assert (not (= var1972!1 null-__Array__Int__var3557__)))
(assert (= (select var1972!1 0) (cast-from-String-to-var3557 var2794))) ; Statement: $r2[0] = $r4 
(declare-const var1972!2 (Array Int var3557))
(assert (not (= var1972!2 null-__Array__Int__var3557__)))
(assert (= (select var1972!2 1) (cast-from-String-to-var3557 var2865))) ; Statement: $r2[1] = r5 
(assert true)
(define-const var3578 String (getName/-1958580599 var1133)) ; Statement: $r7 = virtualinvoke r6.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1972!3 (Array Int var3557))
(assert (not (= var1972!3 null-__Array__Int__var3557__)))
(assert (= (select var1972!3 2) (cast-from-String-to-var3557 var3578))) ; Statement: $r2[2] = $r7 
(declare-const var1972!4 (Array Int var3557))
(assert (not (= var1972!4 null-__Array__Int__var3557__)))
(assert (= (select var1972!4 3) var1296)) ; Statement: $r2[3] = r8 
(declare-const var1972!5 (Array Int var3557))
(assert (not (= var1972!5 null-__Array__Int__var3557__)))
(assert (= (select var1972!5 4) var567)) ; Statement: $r2[4] = r9 
(define-const var1597 String (String_format/1339386452 "IllegalArgumentException occurred while calling setter for property [%s.%s (expected type = %s)]; target = [%s], property value = [%s]" var1972!5)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("IllegalArgumentException occurred while calling setter for property [%s.%s (expected type = %s)]; target = [%s], property value = [%s]", $r2) 
(assert true)
;(assert (<init>/231989769 (cast-from-var283-to-var1698 var2399) var3445 var1597 (ite (= 1 1) true false) var3878 var2865)) ; Statement: specialinvoke r0.<org.hibernate.PropertyAccessException: void <init>(java.lang.Throwable,java.lang.String,boolean,java.lang.Class,java.lang.String)>(r1, $r10, 1, r3, r5) 

(declare-const var2399!1 var283)
(declare-const var3445!1 var442)
(declare-const var1597!1 String)
(declare-const var3749 Int)
(declare-const var3878!1 ClassObject)
(declare-const var2865!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3557-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3557=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/231989769=([org.hibernate.PropertyAccessException, java.lang.Throwable, java.lang.String, boolean, java.lang.Class, java.lang.String], void), cast-from-var283-to-var1698=([org.hibernate.PropertySetterAccessException], org.hibernate.PropertyAccessException)}
; {var283=org.hibernate.PropertySetterAccessException, var2399=r0, var442=java.lang.Throwable, var3445=r1, var3878=r3, var2865=r5, var1418=null_type, var1133=r6, var3557=java.lang.Object, var1296=r8, var567=r9, var1972=$r2, var2794=$r4, var3578=$r7, var1597=$r10, var1698=org.hibernate.PropertyAccessException, var3749=1}
; {org.hibernate.PropertySetterAccessException=var283, r0=var2399, java.lang.Throwable=var442, r1=var3445, r3=var3878, r5=var2865, null_type=var1418, r6=var1133, java.lang.Object=var3557, r8=var1296, r9=var567, $r2=var1972, $r4=var2794, $r7=var3578, $r10=var1597, org.hibernate.PropertyAccessException=var1698, 1=var3749}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.PropertySetterAccessException;	r1 := @parameter0: java.lang.Throwable;	r3 := @parameter1: java.lang.Class;	r5 := @parameter2: java.lang.String;	r6 := @parameter3: java.lang.Class;	r8 := @parameter4: java.lang.Object;	r9 := @parameter5: java.lang.Object;	$r2 = newarray (java.lang.Object)[5];	$r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r2[0] = $r4;	$r2[1] = r5;	$r7 = virtualinvoke r6.<java.lang.Class: java.lang.String getName()>();	$r2[2] = $r7;	$r2[3] = r8;	$r2[4] = r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("IllegalArgumentException occurred while calling setter for property [%s.%s (expected type = %s)]; target = [%s], property value = [%s]", $r2);	specialinvoke r0.<org.hibernate.PropertyAccessException: void <init>(java.lang.Throwable,java.lang.String,boolean,java.lang.Class,java.lang.String)>(r1, $r10, 1, r3, r5);	return
;block_num 1