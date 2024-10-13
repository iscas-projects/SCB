(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var1243 0)
(declare-sort var108 0)
(declare-sort var119 0)
(declare-sort var1693 0)
(declare-sort var3669 0)
(declare-sort var632 0)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1243_getFactory/1122061256 (var1243) var119)
(declare-fun var119_getMetamodel/1171873935 (var119) var1693)
(declare-fun entityName/1283955660 (var1743) String)
(declare-fun var1693_entityPersister/1947554472 (var1693 String) var3669)
(declare-fun propertyName/1283955660 (var1743) String)
(declare-fun var3669_getPropertyValue/-1910539210 (var3669 var108 String) var108)
(declare-fun var632-init () var632)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/1789350806 (var1743) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/512344455 (var632 String) void)
(declare-fun cast-from-var632-to-var3605 (var632) var3605)
(declare-const null-var1743 var1743)
(declare-const null-var1243 var1243)
(declare-const null-var108 var108)
(declare-const var3578 var1743) ; Statement: r2 := @this: org.hibernate.id.ForeignGenerator 
(assert (not (= var3578 null-var1743)))
(declare-const var1341 var1243) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1341 null-var1243)))
(declare-const var2945 var108) ; Statement: r6 := @parameter1: java.lang.Object 
(assert (not (= var2945 null-var108)))
(define-const var13 var119 (var1243_getFactory/1122061256 var1341)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var284 var1693 (var119_getMetamodel/1171873935 var13)) ; Statement: $r4 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var3025 String (entityName/1283955660 var3578)) ; Statement: $r3 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String entityName> 
(define-const var599 var3669 (var1693_entityPersister/1947554472 var284 var3025)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r3) 
(define-const var2295 String (propertyName/1283955660 var3578)) ; Statement: $r7 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String propertyName> 
(define-const var3006 var108 (var3669_getPropertyValue/-1910539210 var599 var2945 var2295)) ; Statement: r8 = interfaceinvoke r5.<org.hibernate.persister.entity.EntityPersister: java.lang.Object getPropertyValue(java.lang.Object,java.lang.String)>(r6, $r7) 
 ; Statement: if r8 != null goto $r9 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String propertyName> 
(assert (not (not (= var3006 null-var108)))) ; Negate: Cond: r8 != null  
(define-const var11 var632 var632-init) ; Statement: $r31 = new org.hibernate.id.IdentifierGenerationException 
(define-const var2213 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2213)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2213!1 String)
(assert (= var2213!1 ""))
(assert true)
(define-const var1305 String (append/672562846 var2213!1 "attempted to assign id from null one-to-one property [")) ; Statement: $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("attempted to assign id from null one-to-one property [") 
(declare-const var2213!2 String)
(assert (= var2213!2 (str.++ var2213!1 "attempted to assign id from null one-to-one property [")))
(assert true)
(define-const var2565 String (getRole/1789350806 var3578)) ; Statement: $r24 = virtualinvoke r2.<org.hibernate.id.ForeignGenerator: java.lang.String getRole()>() 
(assert true)
(define-const var2137 String (append/672562846 var1305 var2565)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 var2565)))
(assert true)
(define-const var3386 String (append/672562846 var2137 "]")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2137!1 String)
(assert (= var2137!1 (str.++ var2137 "]")))
(assert true)
(define-const var3591 String (toString/-2075883882 var3386)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/512344455 var11 var3591)) ; Statement: specialinvoke $r31.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r28) 

(declare-const var11!1 var632)
(declare-const var3591!1 String)
(define-const var629 var3605 (cast-from-var632-to-var3605 var11!1)) ; Statement: $r33 = (java.lang.Throwable) $r31 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var1243_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var119_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), entityName/1283955660=([org.hibernate.id.ForeignGenerator], java.lang.String), var1693_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), propertyName/1283955660=([org.hibernate.id.ForeignGenerator], java.lang.String), var3669_getPropertyValue/-1910539210=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, java.lang.String], java.lang.Object), var632-init=([], org.hibernate.id.IdentifierGenerationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/1789350806=([org.hibernate.id.ForeignGenerator], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/512344455=([org.hibernate.id.IdentifierGenerationException, java.lang.String], void), cast-from-var632-to-var3605=([org.hibernate.id.IdentifierGenerationException], java.lang.Throwable)}
; {var1743=org.hibernate.id.ForeignGenerator, var3578=r2, var1243=org.hibernate.engine.spi.SharedSessionContractImplementor, var1341=r0, var108=java.lang.Object, var2945=r6, var119=org.hibernate.engine.spi.SessionFactoryImplementor, var13=$r1, var1693=org.hibernate.metamodel.spi.MetamodelImplementor, var284=$r4, var3025=$r3, var3669=org.hibernate.persister.entity.EntityPersister, var599=r5, var2295=$r7, var3006=r8, var632=org.hibernate.id.IdentifierGenerationException, var11=$r31, var2213=$r30, var1305=$r25, var2565=$r24, var2137=$r26, var3386=$r27, var3591=$r28, var3605=java.lang.Throwable, var629=$r33}
; {org.hibernate.id.ForeignGenerator=var1743, r2=var3578, org.hibernate.engine.spi.SharedSessionContractImplementor=var1243, r0=var1341, java.lang.Object=var108, r6=var2945, org.hibernate.engine.spi.SessionFactoryImplementor=var119, $r1=var13, org.hibernate.metamodel.spi.MetamodelImplementor=var1693, $r4=var284, $r3=var3025, org.hibernate.persister.entity.EntityPersister=var3669, r5=var599, $r7=var2295, r8=var3006, org.hibernate.id.IdentifierGenerationException=var632, $r31=var11, $r30=var2213, $r25=var1305, $r24=var2565, $r26=var2137, $r27=var3386, $r28=var3591, java.lang.Throwable=var3605, $r33=var629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.id.ForeignGenerator;	r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r6 := @parameter1: java.lang.Object;	$r1 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	$r3 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String entityName>;	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r3);	$r7 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String propertyName>;	r8 = interfaceinvoke r5.<org.hibernate.persister.entity.EntityPersister: java.lang.Object getPropertyValue(java.lang.Object,java.lang.String)>(r6, $r7);	if r8 != null goto $r9 = r2.<org.hibernate.id.ForeignGenerator: java.lang.String propertyName>;	$r31 = new org.hibernate.id.IdentifierGenerationException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("attempted to assign id from null one-to-one property [");	$r24 = virtualinvoke r2.<org.hibernate.id.ForeignGenerator: java.lang.String getRole()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r28);	$r33 = (java.lang.Throwable) $r31;	throw $r33
;block_num 2