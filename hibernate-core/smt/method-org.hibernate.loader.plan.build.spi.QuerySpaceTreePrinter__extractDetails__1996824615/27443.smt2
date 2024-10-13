(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3790 0)
(declare-sort var2078 0)
(declare-sort var1495 0)
(declare-sort var1724 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1495!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1724) Bool)
(declare-fun cast-from-var2078-to-var1724 (var2078) var1724)
(declare-fun cast-from-var2078-to-var1495 (var2078) var1495)
(declare-fun arr-var1724-init () (Array Int var1724))
(declare-fun getClass/1258963082 (var1724) ClassObject)
(declare-fun cast-from-var1495-to-var1724 (var1495) var1724)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1724 (String) var1724)
(declare-fun var2078_getUid/-1971155046 (var2078) String)
(declare-fun cast-from-var1495-to-var2078 (var1495) var2078)
(declare-fun var1495_getEntityPersister/1093624528 (var1495) var2466)
(declare-fun var2466_getEntityName/-1914780628 (var2466) String)
(declare-fun String_format/1339386452 (String (Array Int var1724)) String)
(declare-const null-var3790 var3790)
(declare-const null-var2078 var2078)
(declare-const null-__Array__Int__var1724__ (Array Int var1724))
(declare-const var2394 var3790) ; Statement: r24 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var2394 null-var3790)))
(declare-const var3451 var2078) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var3451 null-var2078)))
(define-const var307 ClassObject var1495!class) ; Statement: $r1 = class "Lorg/hibernate/loader/plan/spi/EntityQuerySpace;" 
(assert true)
(define-const var64 Bool (isInstance/451912363 var307 (cast-from-var2078-to-var1724 var3451))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Lorg/hibernate/loader/plan/spi/CompositeQuerySpace;" 
(assert (not (= (ite var64 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2128 var1495 (cast-from-var2078-to-var1495 var3451)) ; Statement: r25 = (org.hibernate.loader.plan.spi.EntityQuerySpace) r0 
(define-const var833 (Array Int var1724) arr-var1724-init) ; Statement: $r17 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var780 ClassObject (getClass/1258963082 (cast-from-var1495-to-var1724 var2128))) ; Statement: $r18 = virtualinvoke r25.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var589 String (getSimpleName/-390194377 var780)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var833!1 (Array Int var1724))
(assert (not (= var833!1 null-__Array__Int__var1724__)))
(assert (= (select var833!1 0) (cast-from-String-to-var1724 var589))) ; Statement: $r17[0] = $r19 
(define-const var2989 String (var2078_getUid/-1971155046 (cast-from-var1495-to-var2078 var2128))) ; Statement: $r20 = interfaceinvoke r25.<org.hibernate.loader.plan.spi.EntityQuerySpace: java.lang.String getUid()>() 
(declare-const var833!2 (Array Int var1724))
(assert (not (= var833!2 null-__Array__Int__var1724__)))
(assert (= (select var833!2 1) (cast-from-String-to-var1724 var2989))) ; Statement: $r17[1] = $r20 
(define-const var425 var2466 (var1495_getEntityPersister/1093624528 var2128)) ; Statement: $r21 = interfaceinvoke r25.<org.hibernate.loader.plan.spi.EntityQuerySpace: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var3481 String (var2466_getEntityName/-1914780628 var425)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var833!3 (Array Int var1724))
(assert (not (= var833!3 null-__Array__Int__var1724__)))
(assert (= (select var833!3 2) (cast-from-String-to-var1724 var3481))) ; Statement: $r17[2] = $r22 
(define-const var1221 String (String_format/1339386452 "%s(uid=%s, entity=%s)" var833!3)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(uid=%s, entity=%s)", $r17) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2078-to-var1724=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.Object), cast-from-var2078-to-var1495=([org.hibernate.loader.plan.spi.QuerySpace], org.hibernate.loader.plan.spi.EntityQuerySpace), arr-var1724-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1495-to-var1724=([org.hibernate.loader.plan.spi.EntityQuerySpace], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1724=([java.lang.String], java.lang.Object), var2078_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), cast-from-var1495-to-var2078=([org.hibernate.loader.plan.spi.EntityQuerySpace], org.hibernate.loader.plan.spi.QuerySpace), var1495_getEntityPersister/1093624528=([org.hibernate.loader.plan.spi.EntityQuerySpace], org.hibernate.persister.entity.EntityPersister), var2466_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3790=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var2394=r24, var2078=org.hibernate.loader.plan.spi.QuerySpace, var3451=r0, var1495=org.hibernate.loader.plan.spi.EntityQuerySpace, var307=$r1, var1724=java.lang.Object, var64=$z0, var2128=r25, var833=$r17, var780=$r18, var589=$r19, var2989=$r20, var2466=org.hibernate.persister.entity.EntityPersister, var425=$r21, var3481=$r22, var1221=$r23}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var3790, r24=var2394, org.hibernate.loader.plan.spi.QuerySpace=var2078, r0=var3451, org.hibernate.loader.plan.spi.EntityQuerySpace=var1495, $r1=var307, java.lang.Object=var1724, $z0=var64, r25=var2128, $r17=var833, $r18=var780, $r19=var589, $r20=var2989, org.hibernate.persister.entity.EntityPersister=var2466, $r21=var425, $r22=var3481, $r23=var1221}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r24 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	$r1 = class "Lorg/hibernate/loader/plan/spi/EntityQuerySpace;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Lorg/hibernate/loader/plan/spi/CompositeQuerySpace;";	r25 = (org.hibernate.loader.plan.spi.EntityQuerySpace) r0;	$r17 = newarray (java.lang.Object)[3];	$r18 = virtualinvoke r25.<java.lang.Object: java.lang.Class getClass()>();	$r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getSimpleName()>();	$r17[0] = $r19;	$r20 = interfaceinvoke r25.<org.hibernate.loader.plan.spi.EntityQuerySpace: java.lang.String getUid()>();	$r17[1] = $r20;	$r21 = interfaceinvoke r25.<org.hibernate.loader.plan.spi.EntityQuerySpace: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r22 = interfaceinvoke $r21.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r17[2] = $r22;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(uid=%s, entity=%s)", $r17);	return $r23
;block_num 2