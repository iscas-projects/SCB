(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var1806 0)
(declare-sort var123 0)
(declare-sort var2901 0)
(declare-sort var1406 0)
(declare-sort var235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/498345966 (var123) String)
(declare-fun cast-from-var2615-to-var123 (var2615) var123)
(declare-fun cast-from-var2615-to-var2901 (var2615) var2901)
(declare-fun var2901_getPropertyType/-1916908419 (var2901 String) var1406)
(declare-fun var1406_isAssociationType/-327998410 (var1406) Bool)
(declare-fun cast-from-var1406-to-var235 (var1406) var235)
(declare-fun var235_useLHSPrimaryKey/-1777717431 (var235) Bool)
(declare-const null-var2615 var2615)
(declare-const null-String String)
(declare-const var1775 var2615) ; Statement: r0 := @this: org.hibernate.persister.entity.SingleTableEntityPersister 
(assert (not (= var1775 null-var2615)))
(declare-const var3905 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3905 null-String)))
(declare-const var1966 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1966 null-String)))
(assert true)
(define-const var2183 String (getEntityName/498345966 (cast-from-var2615-to-var123 var1775))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var2142 Bool (= var2183 var1966)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (= (ite var2142 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var652 var2901 (cast-from-var2615-to-var2901 var1775)) ; Statement: r16 = r0 
 ; Statement: goto [?= $r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5)] 
(assert true) ; Non Conditional
(define-const var3863 var1406 (var2901_getPropertyType/-1916908419 var652 var3905)) ; Statement: $r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5) 
(define-const var901 Bool (var1406_isAssociationType/-327998410 var3863)) ; Statement: $z1 = interfaceinvoke $r15.<org.hibernate.type.Type: boolean isAssociationType()>() 
 ; Statement: if $z1 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass> 
(assert (not (= (ite var901 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var915 var235 (cast-from-var1406-to-var235 var3863)) ; Statement: $r13 = (org.hibernate.type.AssociationType) $r15 
(define-const var1441 Bool (var235_useLHSPrimaryKey/-1777717431 var915)) ; Statement: $z2 = interfaceinvoke $r13.<org.hibernate.type.AssociationType: boolean useLHSPrimaryKey()>() 
 ; Statement: if $z2 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass> 
(assert (not (= (ite var1441 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/498345966=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), cast-from-var2615-to-var123=([org.hibernate.persister.entity.SingleTableEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister), cast-from-var2615-to-var2901=([org.hibernate.persister.entity.SingleTableEntityPersister], org.hibernate.persister.entity.EntityPersister), var2901_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), var1406_isAssociationType/-327998410=([org.hibernate.type.Type], boolean), cast-from-var1406-to-var235=([org.hibernate.type.Type], org.hibernate.type.AssociationType), var235_useLHSPrimaryKey/-1777717431=([org.hibernate.type.AssociationType], boolean)}
; {var2615=org.hibernate.persister.entity.SingleTableEntityPersister, var1775=r0, var3905=r5, var1806=null_type, var1966=r1, var123=org.hibernate.persister.entity.AbstractEntityPersister, var2183=$r2, var2142=$z0, var2901=org.hibernate.persister.entity.EntityPersister, var652=r16, var1406=org.hibernate.type.Type, var3863=$r15, var901=$z1, var235=org.hibernate.type.AssociationType, var915=$r13, var1441=$z2}
; {org.hibernate.persister.entity.SingleTableEntityPersister=var2615, r0=var1775, r5=var3905, null_type=var1806, r1=var1966, org.hibernate.persister.entity.AbstractEntityPersister=var123, $r2=var2183, $z0=var2142, org.hibernate.persister.entity.EntityPersister=var2901, r16=var652, org.hibernate.type.Type=var1406, $r15=var3863, $z1=var901, org.hibernate.type.AssociationType=var235, $r13=var915, $z2=var1441}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.SingleTableEntityPersister;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getEntityName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r16 = r0;	goto [?= $r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5)];	$r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5);	$z1 = interfaceinvoke $r15.<org.hibernate.type.Type: boolean isAssociationType()>();	if $z1 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass>;	$r13 = (org.hibernate.type.AssociationType) $r15;	$z2 = interfaceinvoke $r13.<org.hibernate.type.AssociationType: boolean useLHSPrimaryKey()>();	if $z2 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass>;	return 0
;block_num 5