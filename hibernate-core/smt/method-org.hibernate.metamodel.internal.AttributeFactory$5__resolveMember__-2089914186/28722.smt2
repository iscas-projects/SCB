(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var278 0)
(declare-sort var1733 0)
(declare-sort var2854 0)
(declare-sort var2857 0)
(declare-sort var417 0)
(declare-sort var1185 0)
(declare-sort var1448 0)
(declare-sort var1486 0)
(declare-sort var178 0)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var278_getOwnerType/1819633793 (var278) var1733)
(declare-fun cast-from-var1733-to-var2854 (var1733) var2854)
(declare-fun this$0/-1550873472 (var1684) var2857)
(declare-fun var2857_access$600/-1217437075 (var2857 var2854) var417)
(declare-fun var278_getPropertyMapping/626771935 (var278) var1185)
(declare-fun getName/-1464992742 (var1185) String)
(declare-fun getIdentifierProperty/-579679365 (var417) var1448)
(declare-fun getName/1062198463 (var1486) String)
(declare-fun cast-from-var1448-to-var1486 (var1448) var1486)
(declare-fun var2857_access$800/300894086 (var2857) var178)
(declare-fun var178_resolveMember/-434754071 (var178 var278) var1225)
(declare-const null-var1684 var1684)
(declare-const null-var278 var278)
(declare-const var3431 var1684) ; Statement: r3 := @this: org.hibernate.metamodel.internal.AttributeFactory$5 
(assert (not (= var3431 null-var1684)))
(declare-const var893 var278) ; Statement: r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$AttributeContext 
(assert (not (= var893 null-var278)))
(define-const var798 var1733 (var278_getOwnerType/1819633793 var893)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getOwnerType()>() 
(define-const var561 var2854 (cast-from-var1733-to-var2854 var798)) ; Statement: r2 = (org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType) $r1 
(define-const var3212 var2857 (this$0/-1550873472 var3431)) ; Statement: $r4 = r3.<org.hibernate.metamodel.internal.AttributeFactory$5: org.hibernate.metamodel.internal.AttributeFactory this$0> 
(define-const var3636 var417 (var2857_access$600/-1217437075 var3212 var561)) ; Statement: r5 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.tuple.entity.EntityMetamodel access$600(org.hibernate.metamodel.internal.AttributeFactory,org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType)>($r4, r2) 
(define-const var744 var1185 (var278_getPropertyMapping/626771935 var893)) ; Statement: $r6 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.mapping.Property getPropertyMapping()>() 
(assert true)
(define-const var2830 String (getName/-1464992742 var744)) ; Statement: $r9 = virtualinvoke $r6.<org.hibernate.mapping.Property: java.lang.String getName()>() 
(assert true)
(define-const var3294 var1448 (getIdentifierProperty/-579679365 var3636)) ; Statement: $r7 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.IdentifierProperty getIdentifierProperty()>() 
(assert true)
(define-const var1192 String (getName/1062198463 (cast-from-var1448-to-var1486 var3294))) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.tuple.IdentifierProperty: java.lang.String getName()>() 
(assert true)
(define-const var2372 Bool (= var2830 var1192)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 != 0 goto $r10 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.EntityTuplizer getTuplizer()>() 
(assert (not (not (= (ite var2372 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3917 var2857 (this$0/-1550873472 var3431)) ; Statement: $r20 = r3.<org.hibernate.metamodel.internal.AttributeFactory$5: org.hibernate.metamodel.internal.AttributeFactory this$0> 
(define-const var2787 var178 (var2857_access$800/300894086 var3917)) ; Statement: $r21 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.metamodel.internal.AttributeFactory$MemberResolver access$800(org.hibernate.metamodel.internal.AttributeFactory)>($r20) 
(define-const var1436 var1225 (var178_resolveMember/-434754071 var2787 var893)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.metamodel.internal.AttributeFactory$MemberResolver: java.lang.reflect.Member resolveMember(org.hibernate.metamodel.internal.AttributeFactory$AttributeContext)>(r0) 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var278_getOwnerType/1819633793=([org.hibernate.metamodel.internal.AttributeFactory$AttributeContext], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), cast-from-var1733-to-var2854=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType), this$0/-1550873472=([org.hibernate.metamodel.internal.AttributeFactory$5], org.hibernate.metamodel.internal.AttributeFactory), var2857_access$600/-1217437075=([org.hibernate.metamodel.internal.AttributeFactory, org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.tuple.entity.EntityMetamodel), var278_getPropertyMapping/626771935=([org.hibernate.metamodel.internal.AttributeFactory$AttributeContext], org.hibernate.mapping.Property), getName/-1464992742=([org.hibernate.mapping.Property], java.lang.String), getIdentifierProperty/-579679365=([org.hibernate.tuple.entity.EntityMetamodel], org.hibernate.tuple.IdentifierProperty), getName/1062198463=([org.hibernate.tuple.AbstractAttribute], java.lang.String), cast-from-var1448-to-var1486=([org.hibernate.tuple.IdentifierProperty], org.hibernate.tuple.AbstractAttribute), var2857_access$800/300894086=([org.hibernate.metamodel.internal.AttributeFactory], org.hibernate.metamodel.internal.AttributeFactory$MemberResolver), var178_resolveMember/-434754071=([org.hibernate.metamodel.internal.AttributeFactory$MemberResolver, org.hibernate.metamodel.internal.AttributeFactory$AttributeContext], java.lang.reflect.Member)}
; {var1684=org.hibernate.metamodel.internal.AttributeFactory$5, var3431=r3, var278=org.hibernate.metamodel.internal.AttributeFactory$AttributeContext, var893=r0, var1733=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var798=$r1, var2854=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var561=r2, var2857=org.hibernate.metamodel.internal.AttributeFactory, var3212=$r4, var417=org.hibernate.tuple.entity.EntityMetamodel, var3636=r5, var1185=org.hibernate.mapping.Property, var744=$r6, var2830=$r9, var1448=org.hibernate.tuple.IdentifierProperty, var3294=$r7, var1486=org.hibernate.tuple.AbstractAttribute, var1192=$r8, var2372=$z0, var3917=$r20, var178=org.hibernate.metamodel.internal.AttributeFactory$MemberResolver, var2787=$r21, var1225=java.lang.reflect.Member, var1436=$r22}
; {org.hibernate.metamodel.internal.AttributeFactory$5=var1684, r3=var3431, org.hibernate.metamodel.internal.AttributeFactory$AttributeContext=var278, r0=var893, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var1733, $r1=var798, org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2854, r2=var561, org.hibernate.metamodel.internal.AttributeFactory=var2857, $r4=var3212, org.hibernate.tuple.entity.EntityMetamodel=var417, r5=var3636, org.hibernate.mapping.Property=var1185, $r6=var744, $r9=var2830, org.hibernate.tuple.IdentifierProperty=var1448, $r7=var3294, org.hibernate.tuple.AbstractAttribute=var1486, $r8=var1192, $z0=var2372, $r20=var3917, org.hibernate.metamodel.internal.AttributeFactory$MemberResolver=var178, $r21=var2787, java.lang.reflect.Member=var1225, $r22=var1436}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.metamodel.internal.AttributeFactory$5;	r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$AttributeContext;	$r1 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getOwnerType()>();	r2 = (org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType) $r1;	$r4 = r3.<org.hibernate.metamodel.internal.AttributeFactory$5: org.hibernate.metamodel.internal.AttributeFactory this$0>;	r5 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.tuple.entity.EntityMetamodel access$600(org.hibernate.metamodel.internal.AttributeFactory,org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType)>($r4, r2);	$r6 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.mapping.Property getPropertyMapping()>();	$r9 = virtualinvoke $r6.<org.hibernate.mapping.Property: java.lang.String getName()>();	$r7 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.IdentifierProperty getIdentifierProperty()>();	$r8 = virtualinvoke $r7.<org.hibernate.tuple.IdentifierProperty: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 != 0 goto $r10 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.EntityTuplizer getTuplizer()>();	$r20 = r3.<org.hibernate.metamodel.internal.AttributeFactory$5: org.hibernate.metamodel.internal.AttributeFactory this$0>;	$r21 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.metamodel.internal.AttributeFactory$MemberResolver access$800(org.hibernate.metamodel.internal.AttributeFactory)>($r20);	$r22 = interfaceinvoke $r21.<org.hibernate.metamodel.internal.AttributeFactory$MemberResolver: java.lang.reflect.Member resolveMember(org.hibernate.metamodel.internal.AttributeFactory$AttributeContext)>(r0);	return $r22
;block_num 2