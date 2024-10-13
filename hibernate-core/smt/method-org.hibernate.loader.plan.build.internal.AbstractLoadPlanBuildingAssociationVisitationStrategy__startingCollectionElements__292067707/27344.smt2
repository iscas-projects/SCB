(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1431 0)
(declare-sort var334 0)
(declare-sort var1175 0)
(declare-sort var1250 0)
(declare-sort var3231 0)
(declare-sort var1497 0)
(declare-sort var343 0)
(declare-sort var3444 0)
(declare-sort var1061 0)
(declare-sort var1909 0)
(declare-sort var987 0)
(declare-sort var498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var334_getType/924650198 (var334) var1175)
(declare-fun fetchSourceStack/303971096 (var1431) var3231)
(declare-fun size/2440898 (var3231) Int)
(declare-fun var1497_repeat/-922273135 (String Int) String)
(declare-fun var334_getCollectionDefinition/1689774122 (var334) var343)
(declare-fun var343_getCollectionPersister/152087219 (var343) var3444)
(declare-fun var3444_getRole/758162468 (var3444) String)
(declare-fun tracef/-1473545801 (var1250 String var1061 var1061) void)
(declare-fun cast-from-String-to-var1061 (String) var1061)
(declare-fun currentCollection/1567985925 (var1431) var1909)
(declare-fun var1909_getElementGraph/1019634424 (var1909) var987)
(declare-fun var1175_isAssociationType/-327998410 (var1175) Bool)
(declare-fun var498-init () var498)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var498 String) void)
(declare-const null-var1431 var1431)
(declare-const null-var334 var334)
(declare-const var1431-log var1250)
(declare-const null-var987 var987)
(declare-const var666 var1431) ; Statement: r2 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var666 null-var1431)))
(declare-const var47 var334) ; Statement: r0 := @parameter0: org.hibernate.persister.walking.spi.CollectionElementDefinition 
(assert (not (= var47 null-var334)))
(define-const var526 var1175 (var334_getType/924650198 var47)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.type.Type getType()>() 
(define-const var3251 var1250 var1431-log) ; Statement: $r4 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log> 
(define-const var2221 var3231 (fetchSourceStack/303971096 var666)) ; Statement: $r3 = r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack> 
(assert true)
(define-const var1177 Int (size/2440898 var2221)) ; Statement: $i0 = virtualinvoke $r3.<java.util.ArrayDeque: int size()>() 
(define-const var3377 String (var1497_repeat/-922273135 ">>" var1177)) ; Statement: $r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0) 
(define-const var2077 var343 (var334_getCollectionDefinition/1689774122 var47)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>() 
(define-const var1522 var3444 (var343_getCollectionPersister/152087219 var2077)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var309 String (var3444_getRole/758162468 var1522)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
;(assert (tracef/-1473545801 var3251 "%s Starting collection element graph : %s" (cast-from-String-to-var1061 var3377) (cast-from-String-to-var1061 var309))) ; Statement: virtualinvoke $r4.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting collection element graph : %s", $r8, $r7) 

(declare-const var3251!1 var1250)
(declare-const var848 String)
(declare-const var3377!1 String)
(declare-const var309!1 String)
(assert true)
(define-const var3229 var1909 (currentCollection/1567985925 var666)) ; Statement: r9 = specialinvoke r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.CollectionReference currentCollection()>() 
(define-const var511 var987 (var1909_getElementGraph/1019634424 var3229)) ; Statement: r10 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.plan.spi.CollectionFetchableElement getElementGraph()>() 
(define-const var573 Bool (var1175_isAssociationType/-327998410 var526)) ; Statement: $z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAssociationType()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var573 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r10 != null goto $z1 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAnyType()>() 
(assert (not (not (= var511 null-var987)))) ; Negate: Cond: r10 != null  
(define-const var2050 var498 var498-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var2008 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2008)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2008!1 String)
(assert (= var2008!1 ""))
(assert true)
(define-const var2414 String (append/672562846 var2008!1 "CollectionReference did not return an expected element graph : ")) ; Statement: $r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionReference did not return an expected element graph : ") 
(declare-const var2008!2 String)
(assert (= var2008!2 (str.++ var2008!1 "CollectionReference did not return an expected element graph : ")))
(define-const var2708 var343 (var334_getCollectionDefinition/1689774122 var47)) ; Statement: $r14 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>() 
(define-const var212 var3444 (var343_getCollectionPersister/152087219 var2708)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var141 String (var3444_getRole/758162468 var212)) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
(define-const var1004 String (append/672562846 var2414 var141)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var141)))
(assert true)
(define-const var1191 String (toString/-2075883882 var1004)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2050 var1191)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var2050!1 var498)
(declare-const var1191!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var334_getType/924650198=([org.hibernate.persister.walking.spi.CollectionElementDefinition], org.hibernate.type.Type), fetchSourceStack/303971096=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], java.util.ArrayDeque), size/2440898=([java.util.ArrayDeque], int), var1497_repeat/-922273135=([java.lang.String, int], java.lang.String), var334_getCollectionDefinition/1689774122=([org.hibernate.persister.walking.spi.CollectionElementDefinition], org.hibernate.persister.walking.spi.CollectionDefinition), var343_getCollectionPersister/152087219=([org.hibernate.persister.walking.spi.CollectionDefinition], org.hibernate.persister.collection.CollectionPersister), var3444_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), tracef/-1473545801=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1061=([java.lang.String], java.lang.Object), currentCollection/1567985925=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.spi.CollectionReference), var1909_getElementGraph/1019634424=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.loader.plan.spi.CollectionFetchableElement), var1175_isAssociationType/-327998410=([org.hibernate.type.Type], boolean), var498-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1431=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var666=r2, var334=org.hibernate.persister.walking.spi.CollectionElementDefinition, var47=r0, var1175=org.hibernate.type.Type, var526=r1, var1250=org.jboss.logging.Logger, var3251=$r4, var3231=java.util.ArrayDeque, var2221=$r3, var1177=$i0, var1497=org.hibernate.internal.util.StringHelper, var3377=$r8, var343=org.hibernate.persister.walking.spi.CollectionDefinition, var2077=$r5, var3444=org.hibernate.persister.collection.CollectionPersister, var1522=$r6, var309=$r7, var1061=java.lang.Object, var848="%s Starting collection element graph : %s", var1909=org.hibernate.loader.plan.spi.CollectionReference, var3229=r9, var987=org.hibernate.loader.plan.spi.CollectionFetchableElement, var511=r10, var573=$z0, var498=java.lang.IllegalStateException, var2050=$r12, var2008=$r13, var2414=$r17, var2708=$r14, var212=$r15, var141=$r16, var1004=$r18, var1191=$r19}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var1431, r2=var666, org.hibernate.persister.walking.spi.CollectionElementDefinition=var334, r0=var47, org.hibernate.type.Type=var1175, r1=var526, org.jboss.logging.Logger=var1250, $r4=var3251, java.util.ArrayDeque=var3231, $r3=var2221, $i0=var1177, org.hibernate.internal.util.StringHelper=var1497, $r8=var3377, org.hibernate.persister.walking.spi.CollectionDefinition=var343, $r5=var2077, org.hibernate.persister.collection.CollectionPersister=var3444, $r6=var1522, $r7=var309, java.lang.Object=var1061, "%s Starting collection element graph : %s"=var848, org.hibernate.loader.plan.spi.CollectionReference=var1909, r9=var3229, org.hibernate.loader.plan.spi.CollectionFetchableElement=var987, r10=var511, $z0=var573, java.lang.IllegalStateException=var498, $r12=var2050, $r13=var2008, $r17=var2414, $r14=var2708, $r15=var212, $r16=var141, $r18=var1004, $r19=var1191}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r0 := @parameter0: org.hibernate.persister.walking.spi.CollectionElementDefinition;	r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.type.Type getType()>();	$r4 = <org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.jboss.logging.Logger log>;	$r3 = r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: java.util.ArrayDeque fetchSourceStack>;	$i0 = virtualinvoke $r3.<java.util.ArrayDeque: int size()>();	$r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>(">>", $i0);	$r5 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>();	$r6 = interfaceinvoke $r5.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r7 = interfaceinvoke $r6.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	virtualinvoke $r4.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object,java.lang.Object)>("%s Starting collection element graph : %s", $r8, $r7);	r9 = specialinvoke r2.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.CollectionReference currentCollection()>();	r10 = interfaceinvoke r9.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.plan.spi.CollectionFetchableElement getElementGraph()>();	$z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAssociationType()>();	if $z0 != 0 goto (branch);	if r10 != null goto $z1 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isAnyType()>();	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionReference did not return an expected element graph : ");	$r14 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.CollectionElementDefinition: org.hibernate.persister.walking.spi.CollectionDefinition getCollectionDefinition()>();	$r15 = interfaceinvoke $r14.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r16 = interfaceinvoke $r15.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r12
;block_num 3