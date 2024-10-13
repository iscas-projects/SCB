(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var795 0)
(declare-sort var2358 0)
(declare-sort var52 0)
(declare-sort var2746 0)
(declare-sort var664 0)
(declare-sort var952 0)
(declare-sort var3828 0)
(declare-sort var1210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1210!class ClassObject)
(declare-fun var52_iterator/-912451715 (var52) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var664)
(declare-fun cast-from-var664-to-var952 (var664) var952)
(declare-fun var952_getPropertyName/-814157935 (var952) String)
(declare-fun var2358_getName/-1864662448 (var2358) String)
(declare-fun var2358_getAnnotation/894663943 (var2358 ClassObject) var3828)
(declare-fun cast-from-var3828-to-var1210 (var3828) var1210)
(declare-fun var952_getProperty/2125427526 (var952) var2358)
(declare-const null-var795 var795)
(declare-const null-var2358 var2358)
(declare-const null-var52 var52)
(declare-const null-var2746 var2746)
(declare-const null-var1210 var1210)
(declare-const var1633 var795) ; Statement: r1 := @parameter0: org.hibernate.cfg.PropertyContainer 
(assert (not (= var1633 null-var795)))
(declare-const var2491 var2358) ; Statement: r3 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var2491 null-var2358)))
(declare-const var3679 var52) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var3679 null-var52)))
(declare-const var643 var2746) ; Statement: r5 := @parameter3: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var643 null-var2746)))
(define-const var2521 Iterator (var52_iterator/-912451715 var3679)) ; Statement: r52 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var659 Bool (Iterator_hasNext/-1669924200 var2521)) ; Statement: $z0 = interfaceinvoke r52.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r56 = virtualinvoke r1.<org.hibernate.cfg.PropertyContainer: org.hibernate.annotations.common.reflection.XClass getDeclaringClass()>() 
(assert (not (= (ite var659 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2764 var664 (Iterator_next/-1124697587 var2521)) ; Statement: $r36 = interfaceinvoke r52.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2521!1 Iterator)
(define-const var2446 var952 (cast-from-var664-to-var952 var2764)) ; Statement: r53 = (org.hibernate.cfg.PropertyData) $r36 
(define-const var260 String (var952_getPropertyName/-814157935 var2446)) ; Statement: $r38 = interfaceinvoke r53.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var3759 String (var2358_getName/-1864662448 var2491)) ; Statement: $r37 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>() 
(assert true)
(define-const var3732 Bool (= var260 var3759)) ; Statement: $z14 = virtualinvoke $r38.<java.lang.String: boolean equals(java.lang.Object)>($r37) 
 ; Statement: if $z14 == 0 goto (branch) 
(assert (not (= (ite var3732 1 0) 0))) ; Negate: Cond: $z14 == 0  
(define-const var88 var3828 (var2358_getAnnotation/894663943 var2491 var1210!class)) ; Statement: $r39 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Id;") 
(define-const var3346 var1210 (cast-from-var3828-to-var1210 var88)) ; Statement: r54 = (javax.persistence.Id) $r39 
(define-const var300 var2358 (var952_getProperty/2125427526 var2446)) ; Statement: $r40 = interfaceinvoke r53.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var2581 var3828 (var2358_getAnnotation/894663943 var300 var1210!class)) ; Statement: $r41 = interfaceinvoke $r40.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Id;") 
(define-const var2295 var1210 (cast-from-var3828-to-var1210 var2581)) ; Statement: r55 = (javax.persistence.Id) $r41 
 ; Statement: if r54 == null goto return 0 
(assert (= var3346 null-var1210)) ; Cond: r54 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var52_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var664-to-var952=([java.lang.Object], org.hibernate.cfg.PropertyData), var952_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), var2358_getName/-1864662448=([org.hibernate.annotations.common.reflection.XProperty], java.lang.String), var2358_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3828-to-var1210=([java.lang.annotation.Annotation], javax.persistence.Id), var952_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty)}
; {var795=org.hibernate.cfg.PropertyContainer, var1633=r1, var2358=org.hibernate.annotations.common.reflection.XProperty, var2491=r3, var52=java.util.List, var3679=r0, var2746=org.hibernate.boot.spi.MetadataBuildingContext, var643=r5, var2521=r52, var659=$z0, var664=java.lang.Object, var2764=$r36, var952=org.hibernate.cfg.PropertyData, var2446=r53, var260=$r38, var3759=$r37, var3732=$z14, var3828=java.lang.annotation.Annotation, var1210=javax.persistence.Id, var88=$r39, var3346=r54, var300=$r40, var2581=$r41, var2295=r55}
; {org.hibernate.cfg.PropertyContainer=var795, r1=var1633, org.hibernate.annotations.common.reflection.XProperty=var2358, r3=var2491, java.util.List=var52, r0=var3679, org.hibernate.boot.spi.MetadataBuildingContext=var2746, r5=var643, r52=var2521, $z0=var659, java.lang.Object=var664, $r36=var2764, org.hibernate.cfg.PropertyData=var952, r53=var2446, $r38=var260, $r37=var3759, $z14=var3732, java.lang.annotation.Annotation=var3828, javax.persistence.Id=var1210, $r39=var88, r54=var3346, $r40=var300, $r41=var2581, r55=var2295}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.hibernate.cfg.PropertyContainer;	r3 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r0 := @parameter2: java.util.List;	r5 := @parameter3: org.hibernate.boot.spi.MetadataBuildingContext;	r52 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r52.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r56 = virtualinvoke r1.<org.hibernate.cfg.PropertyContainer: org.hibernate.annotations.common.reflection.XClass getDeclaringClass()>();	$r36 = interfaceinvoke r52.<java.util.Iterator: java.lang.Object next()>();	r53 = (org.hibernate.cfg.PropertyData) $r36;	$r38 = interfaceinvoke r53.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r37 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>();	$z14 = virtualinvoke $r38.<java.lang.String: boolean equals(java.lang.Object)>($r37);	if $z14 == 0 goto (branch);	$r39 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Id;");	r54 = (javax.persistence.Id) $r39;	$r40 = interfaceinvoke r53.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r41 = interfaceinvoke $r40.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Id;");	r55 = (javax.persistence.Id) $r41;	if r54 == null goto return 0;	return 0
;block_num 5