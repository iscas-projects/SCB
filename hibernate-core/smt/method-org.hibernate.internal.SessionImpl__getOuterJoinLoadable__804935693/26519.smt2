(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1655 0)
(declare-sort var3371 0)
(declare-sort var1658 0)
(declare-sort var675 0)
(declare-sort var3510 0)
(declare-sort var3532 0)
(declare-sort var1484 0)
(declare-sort var1326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/-712118229 (var675) var1658)
(declare-fun cast-from-var1655-to-var675 (var1655) var675)
(declare-fun var1658_getMetamodel/1171873935 (var1658) var3510)
(declare-fun var3510_entityPersister/1947554472 (var3510 String) var3532)
(declare-fun var1484-init () var1484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1484 String) void)
(declare-fun cast-from-var1484-to-var1326 (var1484) var1326)
(declare-const null-var1655 var1655)
(declare-const null-String String)
(declare-const var1220 var1655) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var1220 null-var1655)))
(declare-const var1999 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1999 null-String)))
(assert true)
(define-const var780 var1658 (getFactory/-712118229 (cast-from-var1655-to-var675 var1220))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2377 var3510 (var1658_getMetamodel/1171873935 var780)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var3104 var3532 (var3510_entityPersister/1947554472 var2377 var1999)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2) 
(define-const var2574 Bool true) ; Statement: $z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
(assert (not (not (= (ite var2574 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2542 var1484 var1484-init) ; Statement: $r12 = new org.hibernate.MappingException 
(define-const var3068 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3068)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3068!1 String)
(assert (= var3068!1 ""))
(assert true)
(define-const var821 String (append/672562846 var3068!1 "class persister is not OuterJoinLoadable: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not OuterJoinLoadable: ") 
(declare-const var3068!2 String)
(assert (= var3068!2 (str.++ var3068!1 "class persister is not OuterJoinLoadable: ")))
(assert true)
(define-const var533 String (append/672562846 var821 var1999)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var821!1 String)
(assert (= var821!1 (str.++ var821 var1999)))
(assert true)
(define-const var2264 String (toString/-2075883882 var533)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2542 var2264)) ; Statement: specialinvoke $r12.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10) 

(declare-const var2542!1 var1484)
(declare-const var2264!1 String)
(define-const var3348 var1326 (cast-from-var1484-to-var1326 var2542!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/-712118229=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1655-to-var675=([org.hibernate.internal.SessionImpl], org.hibernate.internal.AbstractSharedSessionContract), var1658_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var3510_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var1484-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1484-to-var1326=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1655=org.hibernate.internal.SessionImpl, var1220=r0, var1999=r2, var3371=null_type, var1658=org.hibernate.engine.spi.SessionFactoryImplementor, var675=org.hibernate.internal.AbstractSharedSessionContract, var780=$r1, var3510=org.hibernate.metamodel.spi.MetamodelImplementor, var2377=$r3, var3532=org.hibernate.persister.entity.EntityPersister, var3104=r4, var2574=$z0, var1484=org.hibernate.MappingException, var2542=$r12, var3068=$r11, var821=$r8, var533=$r9, var2264=$r10, var1326=java.lang.Throwable, var3348=$r13}
; {org.hibernate.internal.SessionImpl=var1655, r0=var1220, r2=var1999, null_type=var3371, org.hibernate.engine.spi.SessionFactoryImplementor=var1658, org.hibernate.internal.AbstractSharedSessionContract=var675, $r1=var780, org.hibernate.metamodel.spi.MetamodelImplementor=var3510, $r3=var2377, org.hibernate.persister.entity.EntityPersister=var3532, r4=var3104, $z0=var2574, org.hibernate.MappingException=var1484, $r12=var2542, $r11=var3068, $r8=var821, $r9=var533, $r10=var2264, java.lang.Throwable=var1326, $r13=var3348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionImpl;	r2 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2);	$z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	$r12 = new org.hibernate.MappingException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not OuterJoinLoadable: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2