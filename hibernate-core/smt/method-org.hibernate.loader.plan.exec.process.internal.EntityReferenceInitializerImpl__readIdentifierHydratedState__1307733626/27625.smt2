(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var988 0)
(declare-sort var2136 0)
(declare-sort var2454 0)
(declare-sort var1253 0)
(declare-sort var2220 0)
(declare-sort var1992 0)
(declare-sort var158 0)
(declare-sort var3336 0)
(declare-sort var1370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2220-init () var2220)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityReference/1428728031 (var988) var1992)
(declare-fun var1992_getEntityPersister/-872151685 (var1992) var158)
(declare-fun append/-1031950772 (String var3336) String)
(declare-fun cast-from-var158-to-var3336 (var158) var3336)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2220 String var1370) void)
(declare-fun cast-from-var1253-to-var1370 (var1253) var1370)
(declare-fun cast-from-var2220-to-var1370 (var2220) var1370)
(declare-const null-var988 var988)
(declare-const null-var2136 var2136)
(declare-const null-var2454 var2454)
(declare-const null-var1253 var1253)
(declare-const var713 var988) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl 
(assert (not (= var713 null-var988)))
(declare-const var2839 var2136) ; Statement: r3 := @parameter0: java.sql.ResultSet 
(assert (not (= var2839 null-var2136)))
(declare-const var1270 var2454) ; Statement: r6 := @parameter1: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext 
(assert (not (= var1270 null-var2454)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1273 var1253) ; Statement: $r11 := @caughtexception 
(assert (not (= var1273 null-var1253)))
(define-const var2603 var2220 var2220-init) ; Statement: $r21 = new org.hibernate.HibernateException 
(define-const var1815 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1815)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1815!1 String)
(assert (= var1815!1 ""))
(assert true)
(define-const var711 String (append/672562846 var1815!1 "Encountered problem trying to hydrate identifier for entity [")) ; Statement: $r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered problem trying to hydrate identifier for entity [") 
(declare-const var1815!2 String)
(assert (= var1815!2 (str.++ var1815!1 "Encountered problem trying to hydrate identifier for entity [")))
(define-const var2945 var1992 (entityReference/1428728031 var713)) ; Statement: $r14 = r0.<org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.hibernate.loader.plan.spi.EntityReference entityReference> 
(define-const var2859 var158 (var1992_getEntityPersister/-872151685 var2945)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(assert true)
(define-const var3798 String (append/-1031950772 var711 (cast-from-var158-to-var3336 var2859))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var711!1 String)
(assert (str.prefixof var711 var711!1))
(assert true)
(define-const var1289 String (append/672562846 var3798 "]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3798!1 String)
(assert (= var3798!1 (str.++ var3798 "]")))
(assert true)
(define-const var2913 String (toString/-2075883882 var1289)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2603 var2913 (cast-from-var1253-to-var1370 var1273))) ; Statement: specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r11) 

(declare-const var2603!1 var2220)
(declare-const var2913!1 String)
(declare-const var1273!1 var1253)
(define-const var1294 var1370 (cast-from-var2220-to-var1370 var2603!1)) ; Statement: $r22 = (java.lang.Throwable) $r21 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2220-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityReference/1428728031=([org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl], org.hibernate.loader.plan.spi.EntityReference), var1992_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var158-to-var3336=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1253-to-var1370=([java.lang.Exception], java.lang.Throwable), cast-from-var2220-to-var1370=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var988=org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl, var713=r0, var2136=java.sql.ResultSet, var2839=r3, var2454=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, var1270=r6, var1253=java.lang.Exception, var1273=$r11, var2220=org.hibernate.HibernateException, var2603=$r21, var1815=$r20, var711=$r16, var1992=org.hibernate.loader.plan.spi.EntityReference, var2945=$r14, var158=org.hibernate.persister.entity.EntityPersister, var2859=$r15, var3336=java.lang.Object, var3798=$r17, var1289=$r18, var2913=$r19, var1370=java.lang.Throwable, var1294=$r22}
; {org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl=var988, r0=var713, java.sql.ResultSet=var2136, r3=var2839, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext=var2454, r6=var1270, java.lang.Exception=var1253, $r11=var1273, org.hibernate.HibernateException=var2220, $r21=var2603, $r20=var1815, $r16=var711, org.hibernate.loader.plan.spi.EntityReference=var1992, $r14=var2945, org.hibernate.persister.entity.EntityPersister=var158, $r15=var2859, java.lang.Object=var3336, $r17=var3798, $r18=var1289, $r19=var2913, java.lang.Throwable=var1370, $r22=var1294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl;	r3 := @parameter0: java.sql.ResultSet;	r6 := @parameter1: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext;	$r11 := @caughtexception;	$r21 = new org.hibernate.HibernateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered problem trying to hydrate identifier for entity [");	$r14 = r0.<org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.hibernate.loader.plan.spi.EntityReference entityReference>;	$r15 = interfaceinvoke $r14.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r11);	$r22 = (java.lang.Throwable) $r21;	throw $r22
;block_num 2