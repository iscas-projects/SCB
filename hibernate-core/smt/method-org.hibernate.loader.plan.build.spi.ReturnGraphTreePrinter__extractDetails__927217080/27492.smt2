(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort var1868 0)
(declare-sort var2682 0)
(declare-sort var3560 0)
(declare-sort var408 0)
(declare-sort var1934 0)
(declare-sort var2022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2682-init () (Array Int var2682))
(declare-fun getClass/1258963082 (var2682) ClassObject)
(declare-fun cast-from-var1868-to-var2682 (var1868) var2682)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2682 (String) var2682)
(declare-fun var408_getFetchedType/-1361940106 (var408) var3560)
(declare-fun cast-from-var1868-to-var408 (var1868) var408)
(declare-fun var3560_getReturnedClass/-1468116676 (var3560) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1934_getQuerySpaceUid/-553952173 (var1934) String)
(declare-fun cast-from-var1868-to-var1934 (var1868) var1934)
(declare-fun var408_getPropertyPath/-594848048 (var408) var2022)
(declare-fun getFullPath/-627774443 (var2022) String)
(declare-fun String_format/1339386452 (String (Array Int var2682)) String)
(declare-const null-var3524 var3524)
(declare-const null-var1868 var1868)
(declare-const null-__Array__Int__var2682__ (Array Int var2682))
(declare-const var3370 var3524) ; Statement: r11 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter 
(assert (not (= var3370 null-var3524)))
(declare-const var1552 var1868) ; Statement: r1 := @parameter0: org.hibernate.loader.plan.spi.CompositeFetch 
(assert (not (= var1552 null-var1868)))
(define-const var2555 (Array Int var2682) arr-var2682-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1120 ClassObject (getClass/1258963082 (cast-from-var1868-to-var2682 var1552))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3245 String (getSimpleName/-390194377 var1120)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2555!1 (Array Int var2682))
(assert (not (= var2555!1 null-__Array__Int__var2682__)))
(assert (= (select var2555!1 0) (cast-from-String-to-var2682 var3245))) ; Statement: $r0[0] = $r3 
(define-const var1010 var3560 (var408_getFetchedType/-1361940106 (cast-from-var1868-to-var408 var1552))) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: org.hibernate.type.Type getFetchedType()>() 
(define-const var3471 ClassObject (var3560_getReturnedClass/-1468116676 var1010)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var1423 String (getName/-1958580599 var3471)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2555!2 (Array Int var2682))
(assert (not (= var2555!2 null-__Array__Int__var2682__)))
(assert (= (select var2555!2 1) (cast-from-String-to-var2682 var1423))) ; Statement: $r0[1] = $r6 
(define-const var3981 String (var1934_getQuerySpaceUid/-553952173 (cast-from-var1868-to-var1934 var1552))) ; Statement: $r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: java.lang.String getQuerySpaceUid()>() 
(declare-const var2555!3 (Array Int var2682))
(assert (not (= var2555!3 null-__Array__Int__var2682__)))
(assert (= (select var2555!3 2) (cast-from-String-to-var2682 var3981))) ; Statement: $r0[2] = $r7 
(define-const var1293 var2022 (var408_getPropertyPath/-594848048 (cast-from-var1868-to-var408 var1552))) ; Statement: $r8 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
(define-const var3840 String (getFullPath/-627774443 var1293)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(declare-const var2555!4 (Array Int var2682))
(assert (not (= var2555!4 null-__Array__Int__var2682__)))
(assert (= (select var2555!4 3) (cast-from-String-to-var2682 var3840))) ; Statement: $r0[3] = $r9 
(define-const var1925 String (String_format/1339386452 "%s(composite=%s, querySpaceUid=%s, path=%s)" var2555!4)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(composite=%s, querySpaceUid=%s, path=%s)", $r0) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2682-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1868-to-var2682=([org.hibernate.loader.plan.spi.CompositeFetch], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2682=([java.lang.String], java.lang.Object), var408_getFetchedType/-1361940106=([org.hibernate.loader.plan.spi.Fetch], org.hibernate.type.Type), cast-from-var1868-to-var408=([org.hibernate.loader.plan.spi.CompositeFetch], org.hibernate.loader.plan.spi.Fetch), var3560_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var1934_getQuerySpaceUid/-553952173=([org.hibernate.loader.plan.spi.FetchSource], java.lang.String), cast-from-var1868-to-var1934=([org.hibernate.loader.plan.spi.CompositeFetch], org.hibernate.loader.plan.spi.FetchSource), var408_getPropertyPath/-594848048=([org.hibernate.loader.plan.spi.Fetch], org.hibernate.loader.PropertyPath), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3524=org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, var3370=r11, var1868=org.hibernate.loader.plan.spi.CompositeFetch, var1552=r1, var2682=java.lang.Object, var2555=$r0, var1120=$r2, var3245=$r3, var3560=org.hibernate.type.Type, var408=org.hibernate.loader.plan.spi.Fetch, var1010=$r4, var3471=$r5, var1423=$r6, var1934=org.hibernate.loader.plan.spi.FetchSource, var3981=$r7, var2022=org.hibernate.loader.PropertyPath, var1293=$r8, var3840=$r9, var1925=$r10}
; {org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter=var3524, r11=var3370, org.hibernate.loader.plan.spi.CompositeFetch=var1868, r1=var1552, java.lang.Object=var2682, $r0=var2555, $r2=var1120, $r3=var3245, org.hibernate.type.Type=var3560, org.hibernate.loader.plan.spi.Fetch=var408, $r4=var1010, $r5=var3471, $r6=var1423, org.hibernate.loader.plan.spi.FetchSource=var1934, $r7=var3981, org.hibernate.loader.PropertyPath=var2022, $r8=var1293, $r9=var3840, $r10=var1925}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter;	r1 := @parameter0: org.hibernate.loader.plan.spi.CompositeFetch;	$r0 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: org.hibernate.type.Type getFetchedType()>();	$r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r0[1] = $r6;	$r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: java.lang.String getQuerySpaceUid()>();	$r0[2] = $r7;	$r8 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CompositeFetch: org.hibernate.loader.PropertyPath getPropertyPath()>();	$r9 = virtualinvoke $r8.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r0[3] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(composite=%s, querySpaceUid=%s, path=%s)", $r0);	return $r10
;block_num 1