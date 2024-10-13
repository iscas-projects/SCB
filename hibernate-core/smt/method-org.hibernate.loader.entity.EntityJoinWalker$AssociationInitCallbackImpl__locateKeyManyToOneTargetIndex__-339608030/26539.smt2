(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1482 0)
(declare-sort var1191 0)
(declare-sort var994 0)
(declare-sort var1848 0)
(declare-sort var2925 0)
(declare-sort var848 0)
(declare-sort var1501 0)
(declare-sort var1465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLhsAlias/1513465192 (var1191) String)
(declare-fun associationsByAlias/-1556353365 (var1482) var2925)
(declare-fun get/499451311 (var2925 var848) var848)
(declare-fun cast-from-String-to-var848 (String) var848)
(declare-fun cast-from-var848-to-var1191 (var848) var1191)
(declare-fun factory/-1556353365 (var1482) var1501)
(declare-fun getAssociatedEntityName/1318984259 (var994 var1501) String)
(declare-fun getJoinableType/-1351404741 (var1191) var1465)
(declare-fun var1465_getAssociatedEntityName/-553309431 (var1465 var1501) String)
(declare-fun positionsByAlias/-1556353365 (var1482) var2925)
(declare-fun getRhsAlias/-678308370 (var1191) String)
(declare-fun cast-from-var848-to-Int (var848) Int)
(declare-const null-var1482 var1482)
(declare-const null-var1191 var1191)
(declare-const null-var994 var994)
(declare-const null-String String)
(declare-const var1961 var1482) ; Statement: r2 := @this: org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl 
(assert (not (= var1961 null-var1482)))
(declare-const var3101 var1191) ; Statement: r0 := @parameter0: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var3101 null-var1191)))
(declare-const var2537 var994) ; Statement: r10 := @parameter1: org.hibernate.type.EntityType 
(assert (not (= var2537 null-var994)))
(assert true)
(define-const var2875 String (getLhsAlias/1513465192 var3101)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getLhsAlias()>() 
 ; Statement: if $r1 == null goto $r3 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias> 
(assert (not (= var2875 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1796 var2925 (associationsByAlias/-1556353365 var1961)) ; Statement: $r16 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias> 
(assert true)
(define-const var2995 String (getLhsAlias/1513465192 var3101)) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getLhsAlias()>() 
(assert true)
(define-const var2199 var848 (get/499451311 var1796 (cast-from-String-to-var848 var2995))) ; Statement: $r18 = virtualinvoke $r16.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r17) 
(define-const var1333 var1191 (cast-from-var848-to-var1191 var2199)) ; Statement: r29 = (org.hibernate.loader.OuterJoinableAssociation) $r18 
(define-const var3627 var1501 (factory/-1556353365 var1961)) ; Statement: $r19 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert true)
(define-const var864 String (getAssociatedEntityName/1318984259 var2537 var3627)) ; Statement: $r23 = virtualinvoke r10.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName(org.hibernate.engine.spi.SessionFactoryImplementor)>($r19) 
(assert true)
(define-const var1963 var1465 (getJoinableType/-1351404741 var1333)) ; Statement: $r21 = virtualinvoke r29.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType getJoinableType()>() 
(define-const var3169 var1501 (factory/-1556353365 var1961)) ; Statement: $r20 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3671 String (var1465_getAssociatedEntityName/-553309431 var1963 var3169)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.type.AssociationType: java.lang.String getAssociatedEntityName(org.hibernate.engine.spi.SessionFactoryImplementor)>($r20) 
(assert true)
(define-const var2395 Bool (= var864 var3671)) ; Statement: $z2 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>($r22) 
 ; Statement: if $z2 == 0 goto $r3 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias> 
(assert (not (= (ite var2395 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1765 var2925 (positionsByAlias/-1556353365 var1961)) ; Statement: $r25 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap positionsByAlias> 
(assert true)
(define-const var2740 String (getRhsAlias/-678308370 var1333)) ; Statement: $r26 = virtualinvoke r29.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getRhsAlias()>() 
(assert true)
(define-const var1006 var848 (get/499451311 var1765 (cast-from-String-to-var848 var2740))) ; Statement: $r27 = virtualinvoke $r25.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r26) 
(define-const var1577 Int (cast-from-var848-to-Int var1006)) ; Statement: $r28 = (java.lang.Integer) $r27 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getLhsAlias/1513465192=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), associationsByAlias/-1556353365=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-String-to-var848=([java.lang.String], java.lang.Object), cast-from-var848-to-var1191=([java.lang.Object], org.hibernate.loader.OuterJoinableAssociation), factory/-1556353365=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], org.hibernate.engine.spi.SessionFactoryImplementor), getAssociatedEntityName/1318984259=([org.hibernate.type.EntityType, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), getJoinableType/-1351404741=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.type.AssociationType), var1465_getAssociatedEntityName/-553309431=([org.hibernate.type.AssociationType, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), positionsByAlias/-1556353365=([org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl], java.util.HashMap), getRhsAlias/-678308370=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), cast-from-var848-to-Int=([java.lang.Object], java.lang.Integer)}
; {var1482=org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl, var1961=r2, var1191=org.hibernate.loader.OuterJoinableAssociation, var3101=r0, var994=org.hibernate.type.EntityType, var2537=r10, var2875=$r1, var1848=null_type, var2925=java.util.HashMap, var1796=$r16, var2995=$r17, var848=java.lang.Object, var2199=$r18, var1333=r29, var1501=org.hibernate.engine.spi.SessionFactoryImplementor, var3627=$r19, var864=$r23, var1465=org.hibernate.type.AssociationType, var1963=$r21, var3169=$r20, var3671=$r22, var2395=$z2, var1765=$r25, var2740=$r26, var1006=$r27, var1577=$r28}
; {org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl=var1482, r2=var1961, org.hibernate.loader.OuterJoinableAssociation=var1191, r0=var3101, org.hibernate.type.EntityType=var994, r10=var2537, $r1=var2875, null_type=var1848, java.util.HashMap=var2925, $r16=var1796, $r17=var2995, java.lang.Object=var848, $r18=var2199, r29=var1333, org.hibernate.engine.spi.SessionFactoryImplementor=var1501, $r19=var3627, $r23=var864, org.hibernate.type.AssociationType=var1465, $r21=var1963, $r20=var3169, $r22=var3671, $z2=var2395, $r25=var1765, $r26=var2740, $r27=var1006, $r28=var1577}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl;	r0 := @parameter0: org.hibernate.loader.OuterJoinableAssociation;	r10 := @parameter1: org.hibernate.type.EntityType;	$r1 = virtualinvoke r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getLhsAlias()>();	if $r1 == null goto $r3 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias>;	$r16 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias>;	$r17 = virtualinvoke r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getLhsAlias()>();	$r18 = virtualinvoke $r16.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r17);	r29 = (org.hibernate.loader.OuterJoinableAssociation) $r18;	$r19 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r23 = virtualinvoke r10.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName(org.hibernate.engine.spi.SessionFactoryImplementor)>($r19);	$r21 = virtualinvoke r29.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.type.AssociationType getJoinableType()>();	$r20 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r22 = interfaceinvoke $r21.<org.hibernate.type.AssociationType: java.lang.String getAssociatedEntityName(org.hibernate.engine.spi.SessionFactoryImplementor)>($r20);	$z2 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>($r22);	if $z2 == 0 goto $r3 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap associationsByAlias>;	$r25 = r2.<org.hibernate.loader.entity.EntityJoinWalker$AssociationInitCallbackImpl: java.util.HashMap positionsByAlias>;	$r26 = virtualinvoke r29.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String getRhsAlias()>();	$r27 = virtualinvoke $r25.<java.util.HashMap: java.lang.Object get(java.lang.Object)>($r26);	$r28 = (java.lang.Integer) $r27;	return $r28
;block_num 3