(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1504 0)
(declare-sort var2952 0)
(declare-sort var1725 0)
(declare-sort var1260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1725-init () (Array Int var1725))
(declare-fun getClass/1258963082 (var1725) ClassObject)
(declare-fun cast-from-var2952-to-var1725 (var2952) var1725)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1725 (String) var1725)
(declare-fun var2952_getName/-1823716057 (var2952) String)
(declare-fun var2952_getType/-1705539051 (var2952) var1260)
(declare-fun var1260_getName/-1292724027 (var1260) String)
(declare-fun String_format/1339386452 (String (Array Int var1725)) String)
(declare-const null-var1504 var1504)
(declare-const null-var2952 var2952)
(declare-const null-__Array__Int__var1725__ (Array Int var1725))
(declare-const var2071 var1504) ; Statement: r8 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter 
(assert (not (= var2071 null-var1504)))
(declare-const var1205 var2952) ; Statement: r1 := @parameter0: org.hibernate.loader.plan.spi.ScalarReturn 
(assert (not (= var1205 null-var2952)))
(define-const var2392 (Array Int var1725) arr-var1725-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1096 ClassObject (getClass/1258963082 (cast-from-var2952-to-var1725 var1205))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3963 String (getSimpleName/-390194377 var1096)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2392!1 (Array Int var1725))
(assert (not (= var2392!1 null-__Array__Int__var1725__)))
(assert (= (select var2392!1 0) (cast-from-String-to-var1725 var3963))) ; Statement: $r0[0] = $r3 
(define-const var1928 String (var2952_getName/-1823716057 var1205)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.ScalarReturn: java.lang.String getName()>() 
(declare-const var2392!2 (Array Int var1725))
(assert (not (= var2392!2 null-__Array__Int__var1725__)))
(assert (= (select var2392!2 1) (cast-from-String-to-var1725 var1928))) ; Statement: $r0[1] = $r4 
(define-const var3937 var1260 (var2952_getType/-1705539051 var1205)) ; Statement: $r5 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.ScalarReturn: org.hibernate.type.Type getType()>() 
(define-const var570 String (var1260_getName/-1292724027 var3937)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.String getName()>() 
(declare-const var2392!3 (Array Int var1725))
(assert (not (= var2392!3 null-__Array__Int__var1725__)))
(assert (= (select var2392!3 2) (cast-from-String-to-var1725 var570))) ; Statement: $r0[2] = $r6 
(define-const var1967 String (String_format/1339386452 "%s(name=%s, type=%s)" var2392!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(name=%s, type=%s)", $r0) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1725-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2952-to-var1725=([org.hibernate.loader.plan.spi.ScalarReturn], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1725=([java.lang.String], java.lang.Object), var2952_getName/-1823716057=([org.hibernate.loader.plan.spi.ScalarReturn], java.lang.String), var2952_getType/-1705539051=([org.hibernate.loader.plan.spi.ScalarReturn], org.hibernate.type.Type), var1260_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1504=org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, var2071=r8, var2952=org.hibernate.loader.plan.spi.ScalarReturn, var1205=r1, var1725=java.lang.Object, var2392=$r0, var1096=$r2, var3963=$r3, var1928=$r4, var1260=org.hibernate.type.Type, var3937=$r5, var570=$r6, var1967=$r7}
; {org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter=var1504, r8=var2071, org.hibernate.loader.plan.spi.ScalarReturn=var2952, r1=var1205, java.lang.Object=var1725, $r0=var2392, $r2=var1096, $r3=var3963, $r4=var1928, org.hibernate.type.Type=var1260, $r5=var3937, $r6=var570, $r7=var1967}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r8 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter;	r1 := @parameter0: org.hibernate.loader.plan.spi.ScalarReturn;	$r0 = newarray (java.lang.Object)[3];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.ScalarReturn: java.lang.String getName()>();	$r0[1] = $r4;	$r5 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.ScalarReturn: org.hibernate.type.Type getType()>();	$r6 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.String getName()>();	$r0[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(name=%s, type=%s)", $r0);	return $r7
;block_num 1