(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2808 0)
(declare-sort var3181 0)
(declare-sort var1877 0)
(declare-sort var3363 0)
(declare-sort var2059 0)
(declare-sort var3576 0)
(declare-sort var3211 0)
(declare-sort var2267 0)
(declare-sort var2554 0)
(declare-sort var3180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/298931879 (var2808) var2059)
(declare-fun var2059_getFactory/1122061256 (var2059) var3576)
(declare-fun var3576_getMetamodel/1171873935 (var3576) var3211)
(declare-fun var3211_entityPersister/1947554472 (var3211 String) var2267)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3211_collectionPersister/1703112067 (var3211 String) var2554)
(declare-fun getParentsByChild/-1925083902 (var2808 var1877) var1877)
(declare-fun reentrantSafeEntityEntries/-684191347 (var2808) (Array Int var3180))
(declare-fun getLength-Arr-var3180-1 ((Array Int var3180)) Int)
(declare-const null-var2808 var2808)
(declare-const null-String String)
(declare-const null-var1877 var1877)
(declare-const null-var3363 var3363)
(declare-const var2874 var2808) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var2874 null-var2808)))
(declare-const var3080 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3080 null-String)))
(declare-const var705 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var705 null-String)))
(declare-const var1132 var1877) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var1132 null-var1877)))
(declare-const var961 var3363) ; Statement: r19 := @parameter3: java.util.Map 
(assert (not (= var961 null-var3363)))
(define-const var2232 var2059 (session/298931879 var2874)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
(define-const var2778 var3576 (var2059_getFactory/1122061256 var2232)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var44 var3211 (var3576_getMetamodel/1171873935 var2778)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1567 var2267 (var3211_entityPersister/1947554472 var44 var3080)) ; Statement: r5 = interfaceinvoke r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r4) 
(define-const var2888 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2888)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2888!1 String)
(assert (= var2888!1 ""))
(assert true)
(define-const var3418 String (append/672562846 var2888!1 var3080)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2888!2 String)
(assert (= var2888!2 (str.++ var2888!1 var3080)))
(assert true)
(define-const var2528 String (append/-1166366385 var3418 46)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3418!1 String)
(assert (str.prefixof var3418 var3418!1))
(assert true)
(define-const var1675 String (append/672562846 var2528 var705)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2528!1 String)
(assert (= var2528!1 (str.++ var2528 var705)))
(assert true)
(define-const var1981 String (toString/-2075883882 var1675)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2094 var2554 (var3211_collectionPersister/1703112067 var44 var1981)) ; Statement: r12 = interfaceinvoke r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.collection.CollectionPersister collectionPersister(java.lang.String)>($r11) 
(assert true)
(define-const var1514 var1877 (getParentsByChild/-1925083902 var2874 var1132)) ; Statement: r14 = specialinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object getParentsByChild(java.lang.Object)>(r13) 
 ; Statement: if r14 == null goto $r31 = virtualinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>() 
(assert (= var1514 null-var1877)) ; Cond: r14 == null 
(assert true)
(define-const var1734 (Array Int var3180) (reentrantSafeEntityEntries/-684191347 var2874)) ; Statement: $r31 = virtualinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>() 
(define-const var913 Int (getLength-Arr-var3180-1 var1734)) ; Statement: $i0 = lengthof $r31 
(define-const var1410 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= $i0 goto return null 
(assert (>= var1410 var913)) ; Cond: i1 >= $i0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {session/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var2059_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3576_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var3211_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3211_collectionPersister/1703112067=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), getParentsByChild/-1925083902=([org.hibernate.engine.internal.StatefulPersistenceContext, java.lang.Object], java.lang.Object), reentrantSafeEntityEntries/-684191347=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.Map$Entry[]), getLength-Arr-var3180-1=([java.util.Map$Entry[]], int)}
; {var2808=org.hibernate.engine.internal.StatefulPersistenceContext, var2874=r0, var3080=r4, var3181=null_type, var705=r8, var1877=java.lang.Object, var1132=r13, var3363=java.util.Map, var961=r19, var2059=org.hibernate.engine.spi.SharedSessionContractImplementor, var2232=$r1, var3576=org.hibernate.engine.spi.SessionFactoryImplementor, var2778=$r2, var3211=org.hibernate.metamodel.spi.MetamodelImplementor, var44=r3, var2267=org.hibernate.persister.entity.EntityPersister, var1567=r5, var2888=$r6, var3418=$r7, var2528=$r9, var1675=$r10, var1981=$r11, var2554=org.hibernate.persister.collection.CollectionPersister, var2094=r12, var1514=r14, var3180=java.util.Map$Entry, var1734=$r31, var913=$i0, var1410=i1}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var2808, r0=var2874, r4=var3080, null_type=var3181, r8=var705, java.lang.Object=var1877, r13=var1132, java.util.Map=var3363, r19=var961, org.hibernate.engine.spi.SharedSessionContractImplementor=var2059, $r1=var2232, org.hibernate.engine.spi.SessionFactoryImplementor=var3576, $r2=var2778, org.hibernate.metamodel.spi.MetamodelImplementor=var3211, r3=var44, org.hibernate.persister.entity.EntityPersister=var2267, r5=var1567, $r6=var2888, $r7=var3418, $r9=var2528, $r10=var1675, $r11=var1981, org.hibernate.persister.collection.CollectionPersister=var2554, r12=var2094, r14=var1514, java.util.Map$Entry=var3180, $r31=var1734, $i0=var913, i1=var1410}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.Object;	r19 := @parameter3: java.util.Map;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	$r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r4);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r12 = interfaceinvoke r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.collection.CollectionPersister collectionPersister(java.lang.String)>($r11);	r14 = specialinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object getParentsByChild(java.lang.Object)>(r13);	if r14 == null goto $r31 = virtualinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>();	$r31 = virtualinvoke r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.Map$Entry[] reentrantSafeEntityEntries()>();	$i0 = lengthof $r31;	i1 = 0;	if i1 >= $i0 goto return null;	return null
;block_num 4