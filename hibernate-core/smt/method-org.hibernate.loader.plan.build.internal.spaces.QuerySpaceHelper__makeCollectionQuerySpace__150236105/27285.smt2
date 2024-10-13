(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var1053 0)
(declare-sort var1332 0)
(declare-sort var1322 0)
(declare-sort var3914 0)
(declare-sort var87 0)
(declare-sort var2156 0)
(declare-sort var639 0)
(declare-sort var1909 0)
(declare-sort var3770 0)
(declare-sort var2856 0)
(declare-sort var3670 0)
(declare-sort var120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1332_getType/-1720431962 (var1332) var87)
(declare-fun cast-from-var87-to-var2156 (var87) var2156)
(declare-fun var1332_toCollectionDefinition/756256102 (var1332) var639)
(declare-fun var639_getCollectionPersister/152087219 (var639) var1909)
(declare-fun var3770-init () var3770)
(declare-fun arr-var2856-init () (Array Int var2856))
(declare-fun getRole/-121726340 (var2156) String)
(declare-fun cast-from-String-to-var2856 (String) var2856)
(declare-fun var3670_getName/-283147352 (var3670) String)
(declare-fun cast-from-var1332-to-var3670 (var1332) var3670)
(declare-fun String_format/1339386452 (String (Array Int var2856)) String)
(declare-fun <init>/-1056956250 (var3770 String) void)
(declare-fun cast-from-var3770-to-var120 (var3770) var120)
(declare-const null-var2556 var2556)
(declare-const null-var1053 var1053)
(declare-const null-var1332 var1332)
(declare-const null-String String)
(declare-const null-var3914 var3914)
(declare-const null-var1909 var1909)
(declare-const null-__Array__Int__var2856__ (Array Int var2856))
(declare-const var1544 var2556) ; Statement: r7 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper 
(assert (not (= var1544 null-var2556)))
(declare-const var2810 var1053) ; Statement: r5 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingQuerySpace 
(assert (not (= var2810 null-var1053)))
(declare-const var1511 var1332) ; Statement: r0 := @parameter1: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var1511 null-var1332)))
(declare-const var2483 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2483 null-String)))
(declare-const var292 var3914) ; Statement: r8 := @parameter3: org.hibernate.engine.FetchStrategy 
(assert (not (= var292 null-var3914)))
(define-const var1455 var87 (var1332_getType/-1720431962 var1511)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>() 
(define-const var1276 var2156 (cast-from-var87-to-var2156 var1455)) ; Statement: r2 = (org.hibernate.type.CollectionType) $r1 
(define-const var1903 var639 (var1332_toCollectionDefinition/756256102 var1511)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.CollectionDefinition toCollectionDefinition()>() 
(define-const var3072 var1909 (var639_getCollectionPersister/152087219 var1903)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
 ; Statement: if r4 != null goto $z0 = interfaceinvoke r5.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpace: boolean canJoinsBeRequired()>() 
(assert (not (not (= var3072 null-var1909)))) ; Negate: Cond: r4 != null  
(define-const var3445 var3770 var3770-init) ; Statement: $r22 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var45 (Array Int var2856) arr-var2856-init) ; Statement: $r16 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3848 String (getRole/-121726340 var1276)) ; Statement: $r17 = virtualinvoke r2.<org.hibernate.type.CollectionType: java.lang.String getRole()>() 
(declare-const var45!1 (Array Int var2856))
(assert (not (= var45!1 null-__Array__Int__var2856__)))
(assert (= (select var45!1 0) (cast-from-String-to-var2856 var3848))) ; Statement: $r16[0] = $r17 
(define-const var1796 String (var3670_getName/-283147352 (cast-from-var1332-to-var3670 var1511))) ; Statement: $r18 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>() 
(declare-const var45!2 (Array Int var2856))
(assert (not (= var45!2 null-__Array__Int__var2856__)))
(assert (= (select var45!2 1) (cast-from-String-to-var2856 var1796))) ; Statement: $r16[1] = $r18 
(define-const var2727 String (String_format/1339386452 "Unable to locate CollectionPersister [%s] for fetch [%s]" var45!2)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate CollectionPersister [%s] for fetch [%s]", $r16) 
(assert true)
;(assert (<init>/-1056956250 var3445 var2727)) ; Statement: specialinvoke $r22.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r19) 

(declare-const var3445!1 var3770)
(declare-const var2727!1 String)
(define-const var1300 var120 (cast-from-var3770-to-var120 var3445!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var1332_getType/-1720431962=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.type.AssociationType), cast-from-var87-to-var2156=([org.hibernate.type.AssociationType], org.hibernate.type.CollectionType), var1332_toCollectionDefinition/756256102=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.CollectionDefinition), var639_getCollectionPersister/152087219=([org.hibernate.persister.walking.spi.CollectionDefinition], org.hibernate.persister.collection.CollectionPersister), var3770-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var2856-init=([], java.lang.Object[]), getRole/-121726340=([org.hibernate.type.CollectionType], java.lang.String), cast-from-String-to-var2856=([java.lang.String], java.lang.Object), var3670_getName/-283147352=([org.hibernate.persister.walking.spi.AttributeDefinition], java.lang.String), cast-from-var1332-to-var3670=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.AttributeDefinition), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var3770-to-var120=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var2556=org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper, var1544=r7, var1053=org.hibernate.loader.plan.build.spi.ExpandingQuerySpace, var2810=r5, var1332=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var1511=r0, var2483=r6, var1322=null_type, var3914=org.hibernate.engine.FetchStrategy, var292=r8, var87=org.hibernate.type.AssociationType, var1455=$r1, var2156=org.hibernate.type.CollectionType, var1276=r2, var639=org.hibernate.persister.walking.spi.CollectionDefinition, var1903=$r3, var1909=org.hibernate.persister.collection.CollectionPersister, var3072=r4, var3770=org.hibernate.persister.walking.spi.WalkingException, var3445=$r22, var2856=java.lang.Object, var45=$r16, var3848=$r17, var3670=org.hibernate.persister.walking.spi.AttributeDefinition, var1796=$r18, var2727=$r19, var120=java.lang.Throwable, var1300=$r23}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper=var2556, r7=var1544, org.hibernate.loader.plan.build.spi.ExpandingQuerySpace=var1053, r5=var2810, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var1332, r0=var1511, r6=var2483, null_type=var1322, org.hibernate.engine.FetchStrategy=var3914, r8=var292, org.hibernate.type.AssociationType=var87, $r1=var1455, org.hibernate.type.CollectionType=var2156, r2=var1276, org.hibernate.persister.walking.spi.CollectionDefinition=var639, $r3=var1903, org.hibernate.persister.collection.CollectionPersister=var1909, r4=var3072, org.hibernate.persister.walking.spi.WalkingException=var3770, $r22=var3445, java.lang.Object=var2856, $r16=var45, $r17=var3848, org.hibernate.persister.walking.spi.AttributeDefinition=var3670, $r18=var1796, $r19=var2727, java.lang.Throwable=var120, $r23=var1300}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper;	r5 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingQuerySpace;	r0 := @parameter1: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: org.hibernate.engine.FetchStrategy;	$r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>();	r2 = (org.hibernate.type.CollectionType) $r1;	$r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.CollectionDefinition toCollectionDefinition()>();	r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	if r4 != null goto $z0 = interfaceinvoke r5.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpace: boolean canJoinsBeRequired()>();	$r22 = new org.hibernate.persister.walking.spi.WalkingException;	$r16 = newarray (java.lang.Object)[2];	$r17 = virtualinvoke r2.<org.hibernate.type.CollectionType: java.lang.String getRole()>();	$r16[0] = $r17;	$r18 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>();	$r16[1] = $r18;	$r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate CollectionPersister [%s] for fetch [%s]", $r16);	specialinvoke $r22.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r19);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2