(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort var1645 0)
(declare-sort var247 0)
(declare-sort var47 0)
(declare-sort var586 0)
(declare-sort var3625 0)
(declare-sort var275 0)
(declare-sort var1698 0)
(declare-sort var3613 0)
(declare-sort var1188 0)
(declare-sort var133 0)
(declare-sort var1845 0)
(declare-sort var1980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var247_getType/-1720431962 (var247) var3625)
(declare-fun cast-from-var3625-to-var275 (var3625) var275)
(declare-fun var247_toEntityDefinition/1287291014 (var247) var1698)
(declare-fun var1698_getEntityPersister/292732637 (var1698) var3613)
(declare-fun var1188-init () var1188)
(declare-fun arr-var133-init () (Array Int var133))
(declare-fun getAssociatedEntityName/1229864409 (var275) String)
(declare-fun cast-from-String-to-var133 (String) var133)
(declare-fun var1845_getName/-283147352 (var1845) String)
(declare-fun cast-from-var247-to-var1845 (var247) var1845)
(declare-fun String_format/1339386452 (String (Array Int var133)) String)
(declare-fun <init>/-1056956250 (var1188 String) void)
(declare-fun cast-from-var1188-to-var1980 (var1188) var1980)
(declare-const null-var2076 var2076)
(declare-const null-var1645 var1645)
(declare-const null-var247 var247)
(declare-const null-String String)
(declare-const null-var586 var586)
(declare-const null-var3613 var3613)
(declare-const null-__Array__Int__var133__ (Array Int var133))
(declare-const var3947 var2076) ; Statement: r9 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper 
(assert (not (= var3947 null-var2076)))
(declare-const var2933 var1645) ; Statement: r8 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingQuerySpace 
(assert (not (= var2933 null-var1645)))
(declare-const var874 var247) ; Statement: r0 := @parameter1: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var874 null-var247)))
(declare-const var2323 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2323 null-String)))
(declare-const var3885 var586) ; Statement: r11 := @parameter3: org.hibernate.engine.FetchStrategy 
(assert (not (= var3885 null-var586)))
(define-const var2507 var3625 (var247_getType/-1720431962 var874)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>() 
(define-const var3410 var275 (cast-from-var3625-to-var275 var2507)) ; Statement: r2 = (org.hibernate.type.EntityType) $r1 
(define-const var466 var1698 (var247_toEntityDefinition/1287291014 var874)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>() 
(define-const var1066 var3613 (var1698_getEntityPersister/292732637 var466)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
 ; Statement: if r4 != null goto $r5 = class "Lorg/hibernate/persister/entity/Queryable;" 
(assert (not (not (= var1066 null-var3613)))) ; Negate: Cond: r4 != null  
(define-const var2533 var1188 var1188-init) ; Statement: $r21 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var2563 (Array Int var133) arr-var133-init) ; Statement: $r13 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1000 String (getAssociatedEntityName/1229864409 var3410)) ; Statement: $r14 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>() 
(declare-const var2563!1 (Array Int var133))
(assert (not (= var2563!1 null-__Array__Int__var133__)))
(assert (= (select var2563!1 0) (cast-from-String-to-var133 var1000))) ; Statement: $r13[0] = $r14 
(define-const var1062 String (var1845_getName/-283147352 (cast-from-var247-to-var1845 var874))) ; Statement: $r15 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>() 
(declare-const var2563!2 (Array Int var133))
(assert (not (= var2563!2 null-__Array__Int__var133__)))
(assert (= (select var2563!2 1) (cast-from-String-to-var133 var1062))) ; Statement: $r13[1] = $r15 
(define-const var3960 String (String_format/1339386452 "Unable to locate EntityPersister [%s] for fetch [%s]" var2563!2)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate EntityPersister [%s] for fetch [%s]", $r13) 
(assert true)
;(assert (<init>/-1056956250 var2533 var3960)) ; Statement: specialinvoke $r21.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r16) 

(declare-const var2533!1 var1188)
(declare-const var3960!1 String)
(define-const var1814 var1980 (cast-from-var1188-to-var1980 var2533!1)) ; Statement: $r22 = (java.lang.Throwable) $r21 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var247_getType/-1720431962=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.type.AssociationType), cast-from-var3625-to-var275=([org.hibernate.type.AssociationType], org.hibernate.type.EntityType), var247_toEntityDefinition/1287291014=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.EntityDefinition), var1698_getEntityPersister/292732637=([org.hibernate.persister.walking.spi.EntityDefinition], org.hibernate.persister.entity.EntityPersister), var1188-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var133-init=([], java.lang.Object[]), getAssociatedEntityName/1229864409=([org.hibernate.type.EntityType], java.lang.String), cast-from-String-to-var133=([java.lang.String], java.lang.Object), var1845_getName/-283147352=([org.hibernate.persister.walking.spi.AttributeDefinition], java.lang.String), cast-from-var247-to-var1845=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.AttributeDefinition), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var1188-to-var1980=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var2076=org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper, var3947=r9, var1645=org.hibernate.loader.plan.build.spi.ExpandingQuerySpace, var2933=r8, var247=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var874=r0, var2323=r10, var47=null_type, var586=org.hibernate.engine.FetchStrategy, var3885=r11, var3625=org.hibernate.type.AssociationType, var2507=$r1, var275=org.hibernate.type.EntityType, var3410=r2, var1698=org.hibernate.persister.walking.spi.EntityDefinition, var466=$r3, var3613=org.hibernate.persister.entity.EntityPersister, var1066=r4, var1188=org.hibernate.persister.walking.spi.WalkingException, var2533=$r21, var133=java.lang.Object, var2563=$r13, var1000=$r14, var1845=org.hibernate.persister.walking.spi.AttributeDefinition, var1062=$r15, var3960=$r16, var1980=java.lang.Throwable, var1814=$r22}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper=var2076, r9=var3947, org.hibernate.loader.plan.build.spi.ExpandingQuerySpace=var1645, r8=var2933, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var247, r0=var874, r10=var2323, null_type=var47, org.hibernate.engine.FetchStrategy=var586, r11=var3885, org.hibernate.type.AssociationType=var3625, $r1=var2507, org.hibernate.type.EntityType=var275, r2=var3410, org.hibernate.persister.walking.spi.EntityDefinition=var1698, $r3=var466, org.hibernate.persister.entity.EntityPersister=var3613, r4=var1066, org.hibernate.persister.walking.spi.WalkingException=var1188, $r21=var2533, java.lang.Object=var133, $r13=var2563, $r14=var1000, org.hibernate.persister.walking.spi.AttributeDefinition=var1845, $r15=var1062, $r16=var3960, java.lang.Throwable=var1980, $r22=var1814}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r9 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpaceHelper;	r8 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingQuerySpace;	r0 := @parameter1: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r10 := @parameter2: java.lang.String;	r11 := @parameter3: org.hibernate.engine.FetchStrategy;	$r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>();	r2 = (org.hibernate.type.EntityType) $r1;	$r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>();	r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	if r4 != null goto $r5 = class "Lorg/hibernate/persister/entity/Queryable;";	$r21 = new org.hibernate.persister.walking.spi.WalkingException;	$r13 = newarray (java.lang.Object)[2];	$r14 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>();	$r13[0] = $r14;	$r15 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>();	$r13[1] = $r15;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate EntityPersister [%s] for fetch [%s]", $r13);	specialinvoke $r21.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r16);	$r22 = (java.lang.Throwable) $r21;	throw $r22
;block_num 2