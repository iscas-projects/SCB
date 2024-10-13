(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort var2068 0)
(declare-sort var2702 0)
(declare-sort var3371 0)
(declare-sort var2924 0)
(declare-sort var2828 0)
(declare-sort var764 0)
(declare-sort var3066 0)
(declare-sort var1776 0)
(declare-sort var1723 0)
(declare-sort var174 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2068_getType/-1720431962 (var2068) var2924)
(declare-fun cast-from-var2924-to-var2828 (var2924) var2828)
(declare-fun var2068_toEntityDefinition/1287291014 (var2068) var764)
(declare-fun var764_getEntityPersister/292732637 (var764) var3066)
(declare-fun var1776-init () var1776)
(declare-fun arr-var1723-init () (Array Int var1723))
(declare-fun getAssociatedEntityName/1229864409 (var2828) String)
(declare-fun cast-from-String-to-var1723 (String) var1723)
(declare-fun var174_getName/-283147352 (var174) String)
(declare-fun cast-from-var2068-to-var174 (var2068) var174)
(declare-fun String_format/1339386452 (String (Array Int var1723)) String)
(declare-fun <init>/-1056956250 (var1776 String) void)
(declare-fun cast-from-var1776-to-var3497 (var1776) var3497)
(declare-const null-var3636 var3636)
(declare-const null-var2068 var2068)
(declare-const null-var2702 var2702)
(declare-const null-var3371 var3371)
(declare-const null-var3066 var3066)
(declare-const null-__Array__Int__var1723__ (Array Int var1723))
(declare-const var3070 var3636) ; Statement: r6 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource 
(assert (not (= var3070 null-var3636)))
(declare-const var2017 var2068) ; Statement: r0 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var2017 null-var2068)))
(declare-const var615 var2702) ; Statement: r13 := @parameter1: org.hibernate.engine.FetchStrategy 
(assert (not (= var615 null-var2702)))
(declare-const var3459 var3371) ; Statement: r7 := @parameter2: org.hibernate.loader.plan.spi.EntityReference 
(assert (not (= var3459 null-var3371)))
(define-const var1545 var2924 (var2068_getType/-1720431962 var2017)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>() 
(define-const var832 var2828 (cast-from-var2924-to-var2828 var1545)) ; Statement: r2 = (org.hibernate.type.EntityType) $r1 
(define-const var3815 var764 (var2068_toEntityDefinition/1287291014 var2017)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>() 
(define-const var110 var3066 (var764_getEntityPersister/292732637 var3815)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
 ; Statement: if r4 != null goto $r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl 
(assert (not (not (= var110 null-var3066)))) ; Negate: Cond: r4 != null  
(define-const var3897 var1776 var1776-init) ; Statement: $r14 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var3764 (Array Int var1723) arr-var1723-init) ; Statement: $r9 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1119 String (getAssociatedEntityName/1229864409 var832)) ; Statement: $r10 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>() 
(declare-const var3764!1 (Array Int var1723))
(assert (not (= var3764!1 null-__Array__Int__var1723__)))
(assert (= (select var3764!1 0) (cast-from-String-to-var1723 var1119))) ; Statement: $r9[0] = $r10 
(define-const var171 String (var174_getName/-283147352 (cast-from-var2068-to-var174 var2017))) ; Statement: $r11 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>() 
(declare-const var3764!2 (Array Int var1723))
(assert (not (= var3764!2 null-__Array__Int__var1723__)))
(assert (= (select var3764!2 1) (cast-from-String-to-var1723 var171))) ; Statement: $r9[1] = $r11 
(define-const var2388 String (String_format/1339386452 "Unable to locate EntityPersister [%s] for bidirectional entity reference [%s]" var3764!2)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate EntityPersister [%s] for bidirectional entity reference [%s]", $r9) 
(assert true)
;(assert (<init>/-1056956250 var3897 var2388)) ; Statement: specialinvoke $r14.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r12) 

(declare-const var3897!1 var1776)
(declare-const var2388!1 String)
(define-const var678 var3497 (cast-from-var1776-to-var3497 var3897!1)) ; Statement: $r16 = (java.lang.Throwable) $r14 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2068_getType/-1720431962=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.type.AssociationType), cast-from-var2924-to-var2828=([org.hibernate.type.AssociationType], org.hibernate.type.EntityType), var2068_toEntityDefinition/1287291014=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.EntityDefinition), var764_getEntityPersister/292732637=([org.hibernate.persister.walking.spi.EntityDefinition], org.hibernate.persister.entity.EntityPersister), var1776-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var1723-init=([], java.lang.Object[]), getAssociatedEntityName/1229864409=([org.hibernate.type.EntityType], java.lang.String), cast-from-String-to-var1723=([java.lang.String], java.lang.Object), var174_getName/-283147352=([org.hibernate.persister.walking.spi.AttributeDefinition], java.lang.String), cast-from-var2068-to-var174=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.AttributeDefinition), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var1776-to-var3497=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var3636=org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, var3070=r6, var2068=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var2017=r0, var2702=org.hibernate.engine.FetchStrategy, var615=r13, var3371=org.hibernate.loader.plan.spi.EntityReference, var3459=r7, var2924=org.hibernate.type.AssociationType, var1545=$r1, var2828=org.hibernate.type.EntityType, var832=r2, var764=org.hibernate.persister.walking.spi.EntityDefinition, var3815=$r3, var3066=org.hibernate.persister.entity.EntityPersister, var110=r4, var1776=org.hibernate.persister.walking.spi.WalkingException, var3897=$r14, var1723=java.lang.Object, var3764=$r9, var1119=$r10, var174=org.hibernate.persister.walking.spi.AttributeDefinition, var171=$r11, var2388=$r12, var3497=java.lang.Throwable, var678=$r16}
; {org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource=var3636, r6=var3070, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var2068, r0=var2017, org.hibernate.engine.FetchStrategy=var2702, r13=var615, org.hibernate.loader.plan.spi.EntityReference=var3371, r7=var3459, org.hibernate.type.AssociationType=var2924, $r1=var1545, org.hibernate.type.EntityType=var2828, r2=var832, org.hibernate.persister.walking.spi.EntityDefinition=var764, $r3=var3815, org.hibernate.persister.entity.EntityPersister=var3066, r4=var110, org.hibernate.persister.walking.spi.WalkingException=var1776, $r14=var3897, java.lang.Object=var1723, $r9=var3764, $r10=var1119, org.hibernate.persister.walking.spi.AttributeDefinition=var174, $r11=var171, $r12=var2388, java.lang.Throwable=var3497, $r16=var678}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource;	r0 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r13 := @parameter1: org.hibernate.engine.FetchStrategy;	r7 := @parameter2: org.hibernate.loader.plan.spi.EntityReference;	$r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>();	r2 = (org.hibernate.type.EntityType) $r1;	$r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>();	r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	if r4 != null goto $r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl;	$r14 = new org.hibernate.persister.walking.spi.WalkingException;	$r9 = newarray (java.lang.Object)[2];	$r10 = virtualinvoke r2.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>();	$r9[0] = $r10;	$r11 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: java.lang.String getName()>();	$r9[1] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate EntityPersister [%s] for bidirectional entity reference [%s]", $r9);	specialinvoke $r14.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r12);	$r16 = (java.lang.Throwable) $r14;	throw $r16
;block_num 2