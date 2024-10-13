(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var48 0)
(declare-sort var745 0)
(declare-sort var2145 0)
(declare-sort var3094 0)
(declare-sort var261 0)
(declare-sort var3641 0)
(declare-sort var2627 0)
(declare-sort var2923 0)
(declare-sort var2424 0)
(declare-sort var2015 0)
(declare-sort var3707 0)
(declare-sort var1397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var48_getType/1466004780 (var48) var745)
(declare-fun fetchSourceStack/303971096 (var3516) var3094)
(declare-fun size/2440898 (var3094) Int)
(declare-fun var261_repeat/-922273135 (String Int) String)
(declare-fun var48_getCollectionDefinition/-759526252 (var48) var3641)
(declare-fun var3641_getCollectionPersister/152087219 (var3641) var2627)
(declare-fun var2627_getRole/758162468 (var2627) String)
(declare-fun tracef/-1473545801 (var2145 String var2923 var2923) void)
(declare-fun cast-from-String-to-var2923 (String) var2923)
(declare-fun currentCollection/1567985925 (var3516) var2424)
(declare-fun var2424_getIndexGraph/-29213000 (var2424) var2015)
(declare-fun var745_isEntityType/-1323505172 (var745) Bool)
(declare-fun var3707-init () var3707)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1056956250 (var3707 String) void)
(declare-fun cast-from-var3707-to-var1397 (var3707) var1397)
(declare-const null-var3516 var3516)
(declare-const null-var48 var48)
(declare-const var3516-log var2145)
(declare-const null-var2015 var2015)
(declare-const var2645 var3516) ; Statement: r2 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var2645 null-var3516)))
(declare-const var239 var48) ; Statement: r0 := @parameter0: org.hibernate.persister.walking.spi.CollectionIndexDefinition 
(assert (not (= var239 null-var48)))
(define-const var2322 var745 (var48_getType/1466004780 var239)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.type.Type getType()>() 
(define-const var2276 var2145 var3516-log) ; Statement: $r4 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var1570 var3094 (fetchSourceStack/303971096 var2645)) ; Statement: $r3 = r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack> 
(assert true)
(define-const var1127 Int (size/2440898 var1570)) ; Statement: $i0 = virtualinvoke $r3.<java.util.ArrayDeque: int size()>() 
(define-const var2467 String (var261_repeat/-922273135 ">>" var1127)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0) 
(define-const var1804 var3641 (var48_getCollectionDefinition/-759526252 var239)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>() 
(define-const var3133 var2627 (var3641_getCollectionPersister/152087219 var1804)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var3440 String (var2627_getRole/758162468 var3133)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
;(assert (tracef/-1473545801 var2276 "%s Starting collection index graph : %s" (cast-from-String-to-var2923 var2467) (cast-from-String-to-var2923 var3440))) ; Statement: virtualinvoke $r4.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting collection index graph : %s", $r8, $r7) 

(declare-const var2276!1 var2145)
(declare-const var3285 String)
(declare-const var2467!1 String)
(declare-const var3440!1 String)
(assert true)
(define-const var672 var2424 (currentCollection/1567985925 var2645)) ; Statement: r9 = specialinvoke r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.CollectionReference currentCollection()>() 
(define-const var2196 var2015 (var2424_getIndexGraph/-29213000 var672)) ; Statement: r10 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.plan.spi.CollectionFetchableIndex getIndexGraph()>() 
(define-const var3016 Bool (var745_isEntityType/-1323505172 var2322)) ; Statement: $z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isEntityType()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var3016 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r10 != null goto $z1 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAnyType()>() 
(assert (not (not (= var2196 null-var2015)))) ; Negate: Cond: r10 != null  
(define-const var1331 var3707 var3707-init) ; Statement: $r29 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var1346 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1346)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1346!1 String)
(assert (= var1346!1 ""))
(assert true)
(define-const var1780 String (append/672562846 var1346!1 "CollectionReference did not return an expected index graph : ")) ; Statement: $r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionReference did not return an expected index graph : ") 
(declare-const var1346!2 String)
(assert (= var1346!2 (str.++ var1346!1 "CollectionReference did not return an expected index graph : ")))
(define-const var2854 var3641 (var48_getCollectionDefinition/-759526252 var239)) ; Statement: $r14 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>() 
(define-const var3079 var2627 (var3641_getCollectionPersister/152087219 var2854)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var378 String (var2627_getRole/758162468 var3079)) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
(define-const var1394 String (append/672562846 var1780 var378)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1780!1 String)
(assert (= var1780!1 (str.++ var1780 var378)))
(assert true)
(define-const var2886 String (toString/-2075883882 var1394)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1056956250 var1331 var2886)) ; Statement: specialinvoke $r29.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r19) 

(declare-const var1331!1 var3707)
(declare-const var2886!1 String)
(define-const var3794 var1397 (cast-from-var3707-to-var1397 var1331!1)) ; Statement: $r32 = (java.lang.Throwable) $r29 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var48_getType/1466004780=([org.hibernate.persister.walking.spi.CollectionIndexDefinition], org.hibernate.type.Type), fetchSourceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), size/2440898=([java.util.ArrayDeque], int), var261_repeat/-922273135=([java.lang.String, int], java.lang.String), var48_getCollectionDefinition/-759526252=([org.hibernate.persister.walking.spi.CollectionIndexDefinition], org.hibernate.persister.walking.spi.CollectionDefinition), var3641_getCollectionPersister/152087219=([org.hibernate.persister.walking.spi.CollectionDefinition], org.hibernate.persister.collection.CollectionPersister), var2627_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), tracef/-1473545801=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var2923=([java.lang.String], java.lang.Object), currentCollection/1567985925=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.spi.CollectionReference), var2424_getIndexGraph/-29213000=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.loader.plan.spi.CollectionFetchableIndex), var745_isEntityType/-1323505172=([org.hibernate.type.Type], boolean), var3707-init=([], org.hibernate.persister.walking.spi.WalkingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var3707-to-var1397=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var3516=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var2645=r2, var48=org.hibernate.persister.walking.spi.CollectionIndexDefinition, var239=r0, var745=org.hibernate.type.Type, var2322=r1, var2145=org.jboss.logging.Logger, var2276=$r4, var3094=java.util.ArrayDeque, var1570=$r3, var1127=$i0, var261=org.hibernate.internal.util.StringHelper, var2467=$r8, var3641=org.hibernate.persister.walking.spi.CollectionDefinition, var1804=$r5, var2627=org.hibernate.persister.collection.CollectionPersister, var3133=$r6, var3440=$r7, var2923=java.lang.Object, var3285="%s Starting collection index graph : %s", var2424=org.hibernate.loader.plan.spi.CollectionReference, var672=r9, var2015=org.hibernate.loader.plan.spi.CollectionFetchableIndex, var2196=r10, var3016=$z0, var3707=org.hibernate.persister.walking.spi.WalkingException, var1331=$r29, var1346=$r28, var1780=$r17, var2854=$r14, var3079=$r15, var378=$r16, var1394=$r18, var2886=$r19, var1397=java.lang.Throwable, var3794=$r32}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var3516, r2=var2645, org.hibernate.persister.walking.spi.CollectionIndexDefinition=var48, r0=var239, org.hibernate.type.Type=var745, r1=var2322, org.jboss.logging.Logger=var2145, $r4=var2276, java.util.ArrayDeque=var3094, $r3=var1570, $i0=var1127, org.hibernate.internal.util.StringHelper=var261, $r8=var2467, org.hibernate.persister.walking.spi.CollectionDefinition=var3641, $r5=var1804, org.hibernate.persister.collection.CollectionPersister=var2627, $r6=var3133, $r7=var3440, java.lang.Object=var2923, "%s Starting collection index graph : %s"=var3285, org.hibernate.loader.plan.spi.CollectionReference=var2424, r9=var672, org.hibernate.loader.plan.spi.CollectionFetchableIndex=var2015, r10=var2196, $z0=var3016, org.hibernate.persister.walking.spi.WalkingException=var3707, $r29=var1331, $r28=var1346, $r17=var1780, $r14=var2854, $r15=var3079, $r16=var378, $r18=var1394, $r19=var2886, java.lang.Throwable=var1397, $r32=var3794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r0 := @parameter0: org.hibernate.persister.walking.spi.CollectionIndexDefinition;	r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.type.Type getType()>();	$r4 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r3 = r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack>;	$i0 = virtualinvoke $r3.<java.util.ArrayDeque: int size()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0);	$r5 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>();	$r6 = interfaceinvoke $r5.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r7 = interfaceinvoke $r6.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	virtualinvoke $r4.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting collection index graph : %s", $r8, $r7);	r9 = specialinvoke r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.CollectionReference currentCollection()>();	r10 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.plan.spi.CollectionFetchableIndex getIndexGraph()>();	$z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isEntityType()>();	if $z0 != 0 goto (branch);	if r10 != null goto $z1 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAnyType()>();	$r29 = new org.hibernate.persister.walking.spi.WalkingException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionReference did not return an expected index graph : ");	$r14 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionIndexDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>();	$r15 = interfaceinvoke $r14.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r16 = interfaceinvoke $r15.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r19);	$r32 = (java.lang.Throwable) $r29;	throw $r32
;block_num 3