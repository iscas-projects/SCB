(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1336 0)
(declare-sort var3932 0)
(declare-sort var3372 0)
(declare-sort var481 0)
(declare-sort var2747 0)
(declare-sort var3264 0)
(declare-sort var1859 0)
(declare-sort var320 0)
(declare-sort var2858 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3932_getOwnerType/1819633793 (var3932) var3372)
(declare-fun cast-from-var3372-to-var481 (var3372) var481)
(declare-fun this$0/-1550873471 (var1336) var2747)
(declare-fun var2747_access$600/-1217437075 (var2747 var481) var3264)
(declare-fun var3932_getPropertyMapping/626771935 (var3932) var1859)
(declare-fun getName/-1464992742 (var1859) String)
(declare-fun getVersionProperty/430125656 (var3264) var320)
(declare-fun getName/1062198463 (var2858) String)
(declare-fun cast-from-var320-to-var2858 (var320) var2858)
(declare-fun var1489-init () var1489)
(declare-fun <init>/875830710 (var1489 String) void)
(declare-const null-var1336 var1336)
(declare-const null-var3932 var3932)
(declare-const var534 var1336) ; Statement: r3 := @this: org.hibernate.metamodel.internal.AttributeFactory$6 
(assert (not (= var534 null-var1336)))
(declare-const var1765 var3932) ; Statement: r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$AttributeContext 
(assert (not (= var1765 null-var3932)))
(define-const var951 var3372 (var3932_getOwnerType/1819633793 var1765)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getOwnerType()>() 
(define-const var2371 var481 (cast-from-var3372-to-var481 var951)) ; Statement: r2 = (org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType) $r1 
(define-const var853 var2747 (this$0/-1550873471 var534)) ; Statement: $r4 = r3.<org.hibernate.metamodel.internal.AttributeFactory$6: org.hibernate.metamodel.internal.AttributeFactory this$0> 
(define-const var405 var3264 (var2747_access$600/-1217437075 var853 var2371)) ; Statement: r5 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.tuple.entity.EntityMetamodel access$600(org.hibernate.metamodel.internal.AttributeFactory,org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType)>($r4, r2) 
(define-const var2340 var1859 (var3932_getPropertyMapping/626771935 var1765)) ; Statement: $r6 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.mapping.Property getPropertyMapping()>() 
(assert true)
(define-const var2126 String (getName/-1464992742 var2340)) ; Statement: r7 = virtualinvoke $r6.<org.hibernate.mapping.Property: java.lang.String getName()>() 
(assert true)
(define-const var1143 var320 (getVersionProperty/430125656 var405)) ; Statement: $r8 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.VersionProperty getVersionProperty()>() 
(assert true)
(define-const var138 String (getName/1062198463 (cast-from-var320-to-var2858 var1143))) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.tuple.entity.VersionProperty: java.lang.String getName()>() 
(assert true)
(define-const var2883 Bool (= var2126 var138)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z0 != 0 goto $r10 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.EntityTuplizer getTuplizer()>() 
(assert (not (not (= (ite var2883 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var337 var1489 var1489-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var337 "Given property did not match declared version property")) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Given property did not match declared version property") 

(declare-const var337!1 var1489)
(declare-const var1668 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3932_getOwnerType/1819633793=([org.hibernate.metamodel.internal.AttributeFactory$AttributeContext], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), cast-from-var3372-to-var481=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType), this$0/-1550873471=([org.hibernate.metamodel.internal.AttributeFactory$6], org.hibernate.metamodel.internal.AttributeFactory), var2747_access$600/-1217437075=([org.hibernate.metamodel.internal.AttributeFactory, org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.tuple.entity.EntityMetamodel), var3932_getPropertyMapping/626771935=([org.hibernate.metamodel.internal.AttributeFactory$AttributeContext], org.hibernate.mapping.Property), getName/-1464992742=([org.hibernate.mapping.Property], java.lang.String), getVersionProperty/430125656=([org.hibernate.tuple.entity.EntityMetamodel], org.hibernate.tuple.entity.VersionProperty), getName/1062198463=([org.hibernate.tuple.AbstractAttribute], java.lang.String), cast-from-var320-to-var2858=([org.hibernate.tuple.entity.VersionProperty], org.hibernate.tuple.AbstractAttribute), var1489-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1336=org.hibernate.metamodel.internal.AttributeFactory$6, var534=r3, var3932=org.hibernate.metamodel.internal.AttributeFactory$AttributeContext, var1765=r0, var3372=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var951=$r1, var481=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var2371=r2, var2747=org.hibernate.metamodel.internal.AttributeFactory, var853=$r4, var3264=org.hibernate.tuple.entity.EntityMetamodel, var405=r5, var1859=org.hibernate.mapping.Property, var2340=$r6, var2126=r7, var320=org.hibernate.tuple.entity.VersionProperty, var1143=$r8, var2858=org.hibernate.tuple.AbstractAttribute, var138=$r9, var2883=$z0, var1489=java.lang.IllegalArgumentException, var337=$r18, var1668="Given property did not match declared version property"}
; {org.hibernate.metamodel.internal.AttributeFactory$6=var1336, r3=var534, org.hibernate.metamodel.internal.AttributeFactory$AttributeContext=var3932, r0=var1765, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var3372, $r1=var951, org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var481, r2=var2371, org.hibernate.metamodel.internal.AttributeFactory=var2747, $r4=var853, org.hibernate.tuple.entity.EntityMetamodel=var3264, r5=var405, org.hibernate.mapping.Property=var1859, $r6=var2340, r7=var2126, org.hibernate.tuple.entity.VersionProperty=var320, $r8=var1143, org.hibernate.tuple.AbstractAttribute=var2858, $r9=var138, $z0=var2883, java.lang.IllegalArgumentException=var1489, $r18=var337, "Given property did not match declared version property"=var1668}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.metamodel.internal.AttributeFactory$6;	r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$AttributeContext;	$r1 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor getOwnerType()>();	r2 = (org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType) $r1;	$r4 = r3.<org.hibernate.metamodel.internal.AttributeFactory$6: org.hibernate.metamodel.internal.AttributeFactory this$0>;	r5 = staticinvoke <org.hibernate.metamodel.internal.AttributeFactory: org.hibernate.tuple.entity.EntityMetamodel access$600(org.hibernate.metamodel.internal.AttributeFactory,org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType)>($r4, r2);	$r6 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$AttributeContext: org.hibernate.mapping.Property getPropertyMapping()>();	r7 = virtualinvoke $r6.<org.hibernate.mapping.Property: java.lang.String getName()>();	$r8 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.VersionProperty getVersionProperty()>();	$r9 = virtualinvoke $r8.<org.hibernate.tuple.entity.VersionProperty: java.lang.String getName()>();	$z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z0 != 0 goto $r10 = virtualinvoke r5.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.entity.EntityTuplizer getTuplizer()>();	$r18 = new java.lang.IllegalArgumentException;	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Given property did not match declared version property");	throw $r18
;block_num 2