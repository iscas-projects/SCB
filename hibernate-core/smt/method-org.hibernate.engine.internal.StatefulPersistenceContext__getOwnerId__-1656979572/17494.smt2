(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1548 0)
(declare-sort var3132 0)
(declare-sort var1001 0)
(declare-sort var523 0)
(declare-sort var3224 0)
(declare-sort var2197 0)
(declare-sort var2989 0)
(declare-sort var622 0)
(declare-sort var575 0)
(declare-sort var3356 0)
(declare-sort var1341 0)
(declare-sort var952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun session/298931879 (var1548) var3224)
(declare-fun var3224_getFactory/1122061256 (var3224) var2197)
(declare-fun var2197_getMetamodel/1171873935 (var2197) var2989)
(declare-fun var2989_entityPersister/1947554472 (var2989 String) var622)
(declare-fun var2989_collectionPersister/1703112067 (var2989 String) var575)
(declare-fun getParentsByChild/-1925083902 (var1548 var1001) var1001)
(declare-fun entityEntryContext/298931879 (var1548) var3356)
(declare-fun getEntityEntry/26891307 (var3356 var1001) var1341)
(declare-fun var1341_getEntityName/318007435 (var1341) String)
(declare-fun var622_isSubclassEntityName/2023886674 (var622 String) Bool)
(declare-fun isFoundInParent/-39590820 (var1548 String var1001 var622 var575 var1001) Bool)
(declare-fun getEntry/1628987588 (var1548 var1001) var1341)
(declare-fun var1341_getId/-1938183192 (var1341) var952)
(declare-const null-var1548 var1548)
(declare-const null-String String)
(declare-const null-var1001 var1001)
(declare-const null-var523 var523)
(declare-const var260 var1548) ; Statement: r7 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var260 null-var1548)))
(declare-const var896 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(declare-const var1737 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1737 null-String)))
(declare-const var3872 var1001) ; Statement: r16 := @parameter2: java.lang.Object 
(assert (not (= var3872 null-var1001)))
(declare-const var1272 var523) ; Statement: r18 := @parameter3: java.util.Map 
(assert (not (= var1272 null-var523)))
(define-const var3585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3585!1 String)
(assert (= var3585!1 ""))
(assert true)
(define-const var2265 String (append/672562846 var3585!1 var896)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3585!2 String)
(assert (= var3585!2 (str.++ var3585!1 var896)))
(assert true)
(define-const var1122 String (append/-1166366385 var2265 46)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2265!1 String)
(assert (str.prefixof var2265 var2265!1))
(assert true)
(define-const var2302 String (append/672562846 var1122 var1737)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1122!1 String)
(assert (= var1122!1 (str.++ var1122 var1737)))
(assert true)
(define-const var628 String (toString/-2075883882 var2302)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2228 var3224 (session/298931879 var260)) ; Statement: $r8 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
(define-const var3753 var2197 (var3224_getFactory/1122061256 var2228)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3836 var2989 (var2197_getMetamodel/1171873935 var3753)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1119 var622 (var2989_entityPersister/1947554472 var3836 var896)) ; Statement: r11 = interfaceinvoke $r10.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1) 
(define-const var2315 var3224 (session/298931879 var260)) ; Statement: $r12 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
(define-const var1188 var2197 (var3224_getFactory/1122061256 var2315)) ; Statement: $r13 = interfaceinvoke $r12.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2633 var2989 (var2197_getMetamodel/1171873935 var1188)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var740 var575 (var2989_collectionPersister/1703112067 var2633 var628)) ; Statement: r15 = interfaceinvoke $r14.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.collection.CollectionPersister collectionPersister(java.lang.String)>(r6) 
(assert true)
(define-const var3052 var1001 (getParentsByChild/-1925083902 var260 var3872)) ; Statement: r17 = specialinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object getParentsByChild(java.lang.Object)>(r16) 
 ; Statement: if r17 == null goto $r43 = virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>() 
(assert (not (= var3052 null-var1001))) ; Negate: Cond: r17 == null  
(define-const var3412 var3356 (entityEntryContext/298931879 var260)) ; Statement: $r38 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.internal.EntityEntryContext entityEntryContext> 
(assert true)
(define-const var114 var1341 (getEntityEntry/26891307 var3412 var3052)) ; Statement: r42 = virtualinvoke $r38.<org.hibernate.engine.internal.EntityEntryContext: org.hibernate.engine.spi.EntityEntry getEntityEntry(java.lang.Object)>(r17) 
(define-const var742 String (var1341_getEntityName/318007435 var114)) ; Statement: $r39 = interfaceinvoke r42.<org.hibernate.engine.spi.EntityEntry: java.lang.String getEntityName()>() 
(define-const var2514 Bool (var622_isSubclassEntityName/2023886674 var1119 var742)) ; Statement: $z4 = interfaceinvoke r11.<org.hibernate.persister.entity.EntityPersister: boolean isSubclassEntityName(java.lang.String)>($r39) 
 ; Statement: if $z4 == 0 goto virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: void removeChildParent(java.lang.Object)>(r16) 
(assert (not (= (ite var2514 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var606 Bool (isFoundInParent/-39590820 var260 var1737 var3872 var1119 var740 var3052)) ; Statement: $z5 = specialinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: boolean isFoundInParent(java.lang.String,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.persister.collection.CollectionPersister,java.lang.Object)>(r3, r16, r11, r15, r17) 
 ; Statement: if $z5 == 0 goto virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: void removeChildParent(java.lang.Object)>(r16) 
(assert (not (= (ite var606 1 0) 0))) ; Negate: Cond: $z5 == 0  
(assert true)
(define-const var1245 var1341 (getEntry/1628987588 var260 var3052)) ; Statement: $r40 = virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r17) 
(define-const var1703 var952 (var1341_getId/-1938183192 var1245)) ; Statement: $r41 = interfaceinvoke $r40.<org.hibernate.engine.spi.EntityEntry: java.io.Serializable getId()>() 
 ; Statement: return $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), session/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var3224_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var2197_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var2989_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var2989_collectionPersister/1703112067=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), getParentsByChild/-1925083902=([org.hibernate.engine.internal.StatefulPersistenceContext, java.lang.Object], java.lang.Object), entityEntryContext/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.internal.EntityEntryContext), getEntityEntry/26891307=([org.hibernate.engine.internal.EntityEntryContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), var1341_getEntityName/318007435=([org.hibernate.engine.spi.EntityEntry], java.lang.String), var622_isSubclassEntityName/2023886674=([org.hibernate.persister.entity.EntityPersister, java.lang.String], boolean), isFoundInParent/-39590820=([org.hibernate.engine.internal.StatefulPersistenceContext, java.lang.String, java.lang.Object, org.hibernate.persister.entity.EntityPersister, org.hibernate.persister.collection.CollectionPersister, java.lang.Object], boolean), getEntry/1628987588=([org.hibernate.engine.internal.StatefulPersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), var1341_getId/-1938183192=([org.hibernate.engine.spi.EntityEntry], java.io.Serializable)}
; {var1548=org.hibernate.engine.internal.StatefulPersistenceContext, var260=r7, var896=r1, var3132=null_type, var1737=r3, var1001=java.lang.Object, var3872=r16, var523=java.util.Map, var1272=r18, var3585=$r0, var2265=$r2, var1122=$r4, var2302=$r5, var628=r6, var3224=org.hibernate.engine.spi.SharedSessionContractImplementor, var2228=$r8, var2197=org.hibernate.engine.spi.SessionFactoryImplementor, var3753=$r9, var2989=org.hibernate.metamodel.spi.MetamodelImplementor, var3836=$r10, var622=org.hibernate.persister.entity.EntityPersister, var1119=r11, var2315=$r12, var1188=$r13, var2633=$r14, var575=org.hibernate.persister.collection.CollectionPersister, var740=r15, var3052=r17, var3356=org.hibernate.engine.internal.EntityEntryContext, var3412=$r38, var1341=org.hibernate.engine.spi.EntityEntry, var114=r42, var742=$r39, var2514=$z4, var606=$z5, var1245=$r40, var952=java.io.Serializable, var1703=$r41}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var1548, r7=var260, r1=var896, null_type=var3132, r3=var1737, java.lang.Object=var1001, r16=var3872, java.util.Map=var523, r18=var1272, $r0=var3585, $r2=var2265, $r4=var1122, $r5=var2302, r6=var628, org.hibernate.engine.spi.SharedSessionContractImplementor=var3224, $r8=var2228, org.hibernate.engine.spi.SessionFactoryImplementor=var2197, $r9=var3753, org.hibernate.metamodel.spi.MetamodelImplementor=var2989, $r10=var3836, org.hibernate.persister.entity.EntityPersister=var622, r11=var1119, $r12=var2315, $r13=var1188, $r14=var2633, org.hibernate.persister.collection.CollectionPersister=var575, r15=var740, r17=var3052, org.hibernate.engine.internal.EntityEntryContext=var3356, $r38=var3412, org.hibernate.engine.spi.EntityEntry=var1341, r42=var114, $r39=var742, $z4=var2514, $z5=var606, $r40=var1245, java.io.Serializable=var952, $r41=var1703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r16 := @parameter2: java.lang.Object;	r18 := @parameter3: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	$r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r10 = interfaceinvoke $r9.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r11 = interfaceinvoke $r10.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1);	$r12 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	$r13 = interfaceinvoke $r12.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r14 = interfaceinvoke $r13.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r15 = interfaceinvoke $r14.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.collection.CollectionPersister collectionPersister(java.lang.String)>(r6);	r17 = specialinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object getParentsByChild(java.lang.Object)>(r16);	if r17 == null goto $r43 = virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>();	$r38 = r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.internal.EntityEntryContext entityEntryContext>;	r42 = virtualinvoke $r38.<org.hibernate.engine.internal.EntityEntryContext: org.hibernate.engine.spi.EntityEntry getEntityEntry(java.lang.Object)>(r17);	$r39 = interfaceinvoke r42.<org.hibernate.engine.spi.EntityEntry: java.lang.String getEntityName()>();	$z4 = interfaceinvoke r11.<org.hibernate.persister.entity.EntityPersister: boolean isSubclassEntityName(java.lang.String)>($r39);	if $z4 == 0 goto virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: void removeChildParent(java.lang.Object)>(r16);	$z5 = specialinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: boolean isFoundInParent(java.lang.String,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.persister.collection.CollectionPersister,java.lang.Object)>(r3, r16, r11, r15, r17);	if $z5 == 0 goto virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: void removeChildParent(java.lang.Object)>(r16);	$r40 = virtualinvoke r7.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r17);	$r41 = interfaceinvoke $r40.<org.hibernate.engine.spi.EntityEntry: java.io.Serializable getId()>();	return $r41
;block_num 4