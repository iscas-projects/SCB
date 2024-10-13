(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1433 0)
(declare-sort var1726 0)
(declare-sort var3281 0)
(declare-sort var2829 0)
(declare-sort var2688 0)
(declare-sort var2503 0)
(declare-sort var3636 0)
(declare-sort var2379 0)
(declare-sort var1020 0)
(declare-sort var355 0)
(declare-sort var1488 0)
(declare-sort var3445 0)
(declare-sort var2644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jaxbEntityMapping/-1832848588 (var1433) var1726)
(declare-fun getId/-1829534322 (var1726) var3281)
(declare-fun getCompositeId/1403803894 (var1726) var2829)
(declare-fun var2688-init () var2688)
(declare-fun arr-var3636-init () (Array Int var3636))
(declare-fun getEntityNamingSource/1677741763 (var1020) var2379)
(declare-fun cast-from-var1433-to-var1020 (var1433) var1020)
(declare-fun var355_getEntityName/-119580260 (var355) String)
(declare-fun cast-from-var2379-to-var355 (var2379) var355)
(declare-fun cast-from-String-to-var3636 (String) var3636)
(declare-fun String_format/-647569892 (var2503 String (Array Int var3636)) String)
(declare-fun origin/-1264989136 (var3445) var1488)
(declare-fun cast-from-var1433-to-var3445 (var1433) var3445)
(declare-fun <init>/235758574 (var2688 String var1488) void)
(declare-fun cast-from-var2688-to-var2644 (var2688) var2644)
(declare-const null-var1433 var1433)
(declare-const null-var3281 var3281)
(declare-const null-var2829 var2829)
(declare-const var2503-ENGLISH var2503)
(declare-const null-__Array__Int__var3636__ (Array Int var3636))
(declare-const var726 var1433) ; Statement: r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl 
(assert (not (= var726 null-var1433)))
(assert true)
(define-const var341 var1726 (jaxbEntityMapping/-1832848588 var726)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert true)
(define-const var2910 var3281 (getId/-1829534322 var341)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>() 
 ; Statement: if $r2 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert (not (not (= var2910 null-var3281)))) ; Negate: Cond: $r2 != null  
(assert true)
(define-const var779 var1726 (jaxbEntityMapping/-1832848588 var726)) ; Statement: $r22 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert true)
(define-const var974 var2829 (getCompositeId/1403803894 var779)) ; Statement: $r23 = virtualinvoke $r22.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeIdType getCompositeId()>() 
 ; Statement: if $r23 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert (not (not (= var974 null-var2829)))) ; Negate: Cond: $r23 != null  
(define-const var2904 var2688 var2688-init) ; Statement: $r31 = new org.hibernate.boot.MappingException 
(define-const var1076 var2503 var2503-ENGLISH) ; Statement: $r26 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2928 (Array Int var3636) arr-var3636-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1809 var2379 (getEntityNamingSource/1677741763 (cast-from-var1433-to-var1020 var726))) ; Statement: $r27 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var529 String (var355_getEntityName/-119580260 (cast-from-var2379-to-var355 var1809))) ; Statement: $r28 = interfaceinvoke $r27.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(declare-const var2928!1 (Array Int var3636))
(assert (not (= var2928!1 null-__Array__Int__var3636__)))
(assert (= (select var2928!1 0) (cast-from-String-to-var3636 var529))) ; Statement: $r25[0] = $r28 
(define-const var2395 String (String_format/-647569892 var1076 "Entity [%s] did not define an identifier" var2928!1)) ; Statement: $r30 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r26, "Entity [%s] did not define an identifier", $r25) 
(assert true)
(define-const var2989 var1488 (origin/-1264989136 (cast-from-var1433-to-var3445 var726))) ; Statement: $r29 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.Origin origin()>() 
(assert true)
;(assert (<init>/235758574 var2904 var2395 var2989)) ; Statement: specialinvoke $r31.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r30, $r29) 

(declare-const var2904!1 var2688)
(declare-const var2395!1 String)
(declare-const var2989!1 var1488)
(define-const var2499 var2644 (cast-from-var2688-to-var2644 var2904!1)) ; Statement: $r37 = (java.lang.Throwable) $r31 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {jaxbEntityMapping/-1832848588=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType), getId/-1829534322=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType), getCompositeId/1403803894=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeIdType), var2688-init=([], org.hibernate.boot.MappingException), arr-var3636-init=([], java.lang.Object[]), getEntityNamingSource/1677741763=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var1433-to-var1020=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl), var355_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var2379-to-var355=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), cast-from-String-to-var3636=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), origin/-1264989136=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.jaxb.Origin), cast-from-var1433-to-var3445=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var2688-to-var2644=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1433=org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl, var726=r0, var1726=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType, var341=$r1, var3281=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType, var2910=$r2, var779=$r22, var2829=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeIdType, var974=$r23, var2688=org.hibernate.boot.MappingException, var2904=$r31, var2503=java.util.Locale, var1076=$r26, var3636=java.lang.Object, var2928=$r25, var2379=org.hibernate.boot.model.source.spi.EntityNamingSource, var1020=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var1809=$r27, var355=org.hibernate.boot.model.naming.EntityNaming, var529=$r28, var2395=$r30, var1488=org.hibernate.boot.jaxb.Origin, var3445=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var2989=$r29, var2644=java.lang.Throwable, var2499=$r37}
; {org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl=var1433, r0=var726, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType=var1726, $r1=var341, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType=var3281, $r2=var2910, $r22=var779, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeIdType=var2829, $r23=var974, org.hibernate.boot.MappingException=var2688, $r31=var2904, java.util.Locale=var2503, $r26=var1076, java.lang.Object=var3636, $r25=var2928, org.hibernate.boot.model.source.spi.EntityNamingSource=var2379, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var1020, $r27=var1809, org.hibernate.boot.model.naming.EntityNaming=var355, $r28=var529, $r30=var2395, org.hibernate.boot.jaxb.Origin=var1488, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3445, $r29=var2989, java.lang.Throwable=var2644, $r37=var2499}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl;	$r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>();	if $r2 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r22 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r23 = virtualinvoke $r22.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeIdType getCompositeId()>();	if $r23 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r31 = new org.hibernate.boot.MappingException;	$r26 = <java.util.Locale: java.util.Locale ENGLISH>;	$r25 = newarray (java.lang.Object)[1];	$r27 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r28 = interfaceinvoke $r27.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r25[0] = $r28;	$r30 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r26, "Entity [%s] did not define an identifier", $r25);	$r29 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.Origin origin()>();	specialinvoke $r31.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r30, $r29);	$r37 = (java.lang.Throwable) $r31;	throw $r37
;block_num 3