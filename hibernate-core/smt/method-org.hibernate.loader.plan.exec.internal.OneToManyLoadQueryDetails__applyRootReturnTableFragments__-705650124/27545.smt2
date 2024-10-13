(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2201 0)
(declare-sort var917 0)
(declare-sort var3899 0)
(declare-sort var3823 0)
(declare-sort var3914 0)
(declare-sort var1791 0)
(declare-sort var3996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getElementEntityReference/1218121227 (var2201) var3899)
(declare-fun var3899_getEntityPersister/-872151685 (var3899) var3823)
(declare-fun cast-from-var3823-to-var3914 (var3823) var3914)
(declare-fun getElementEntityReferenceAliases/159881696 (var2201) var1791)
(declare-fun var1791_getTableAlias/-380816655 (var1791) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3914_fromTableFragment/-838615174 (var3914 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3996_fromJoinFragment/-2074841343 (var3996 String Bool Bool) String)
(declare-fun cast-from-var3914-to-var3996 (var3914) var3996)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun appendFromClauseFragment/-1824855813 (var917 String) void)
(declare-const null-var2201 var2201)
(declare-const null-var917 var917)
(declare-const var1370 var2201) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails 
(assert (not (= var1370 null-var2201)))
(declare-const var371 var917) ; Statement: r12 := @parameter0: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var371 null-var917)))
(assert true)
(define-const var1319 var3899 (getElementEntityReference/1218121227 var1370)) ; Statement: $r1 = specialinvoke r0.<org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails: org.hibernate.loader.plan.spi.EntityReference getElementEntityReference()>() 
(define-const var272 var3823 (var3899_getEntityPersister/-872151685 var1319)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var3149 var3914 (cast-from-var3823-to-var3914 var272)) ; Statement: r3 = (org.hibernate.persister.entity.OuterJoinLoadable) $r2 
(assert true)
(define-const var1835 var1791 (getElementEntityReferenceAliases/159881696 var1370)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails: org.hibernate.loader.plan.exec.spi.EntityReferenceAliases getElementEntityReferenceAliases()>() 
(define-const var1092 String (var1791_getTableAlias/-380816655 var1835)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.plan.exec.spi.EntityReferenceAliases: java.lang.String getTableAlias()>() 
(define-const var465 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var465)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var465!1 String)
(assert (= var465!1 ""))
(define-const var3320 String (var3914_fromTableFragment/-838615174 var3149 var1092)) ; Statement: $r7 = interfaceinvoke r3.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>(r5) 
(assert true)
(define-const var3313 String (append/672562846 var465!1 var3320)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var465!2 String)
(assert (= var465!2 (str.++ var465!1 var3320)))
(define-const var2322 String (var3996_fromJoinFragment/-2074841343 (cast-from-var3914-to-var3996 var3149) var1092 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: $r8 = interfaceinvoke r3.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>(r5, 1, 1) 
(assert true)
(define-const var1282 String (append/672562846 var3313 var2322)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3313!1 String)
(assert (= var3313!1 (str.++ var3313 var2322)))
(assert true)
(define-const var3056 String (toString/-2075883882 var1282)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (appendFromClauseFragment/-1824855813 var371 var3056)) ; Statement: virtualinvoke r12.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendFromClauseFragment(java.lang.String)>(r11) 

(declare-const var371!1 var917)
(declare-const var3056!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getElementEntityReference/1218121227=([org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails], org.hibernate.loader.plan.spi.EntityReference), var3899_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), cast-from-var3823-to-var3914=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.OuterJoinLoadable), getElementEntityReferenceAliases/159881696=([org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails], org.hibernate.loader.plan.exec.spi.EntityReferenceAliases), var1791_getTableAlias/-380816655=([org.hibernate.loader.plan.exec.spi.EntityReferenceAliases], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3914_fromTableFragment/-838615174=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3996_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), cast-from-var3914-to-var3996=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), appendFromClauseFragment/-1824855813=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String], void)}
; {var2201=org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails, var1370=r0, var917=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var371=r12, var3899=org.hibernate.loader.plan.spi.EntityReference, var1319=$r1, var3823=org.hibernate.persister.entity.EntityPersister, var272=$r2, var3914=org.hibernate.persister.entity.OuterJoinLoadable, var3149=r3, var1791=org.hibernate.loader.plan.exec.spi.EntityReferenceAliases, var1835=$r4, var1092=r5, var465=$r6, var3320=$r7, var3313=$r9, var3996=org.hibernate.persister.entity.Joinable, var2322=$r8, var1282=$r10, var3056=r11}
; {org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails=var2201, r0=var1370, org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var917, r12=var371, org.hibernate.loader.plan.spi.EntityReference=var3899, $r1=var1319, org.hibernate.persister.entity.EntityPersister=var3823, $r2=var272, org.hibernate.persister.entity.OuterJoinLoadable=var3914, r3=var3149, org.hibernate.loader.plan.exec.spi.EntityReferenceAliases=var1791, $r4=var1835, r5=var1092, $r6=var465, $r7=var3320, $r9=var3313, org.hibernate.persister.entity.Joinable=var3996, $r8=var2322, $r10=var1282, r11=var3056}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails;	r12 := @parameter0: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	$r1 = specialinvoke r0.<org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails: org.hibernate.loader.plan.spi.EntityReference getElementEntityReference()>();	$r2 = interfaceinvoke $r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	r3 = (org.hibernate.persister.entity.OuterJoinLoadable) $r2;	$r4 = specialinvoke r0.<org.hibernate.loader.plan.exec.internal.OneToManyLoadQueryDetails: org.hibernate.loader.plan.exec.spi.EntityReferenceAliases getElementEntityReferenceAliases()>();	r5 = interfaceinvoke $r4.<org.hibernate.loader.plan.exec.spi.EntityReferenceAliases: java.lang.String getTableAlias()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = interfaceinvoke r3.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>(r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = interfaceinvoke r3.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>(r5, 1, 1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r12.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendFromClauseFragment(java.lang.String)>(r11);	return
;block_num 1