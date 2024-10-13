(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var391 0)
(declare-sort var411 0)
(declare-sort var1798 0)
(declare-sort var2432 0)
(declare-sort var1761 0)
(declare-sort var2576 0)
(declare-sort var3844 0)
(declare-sort var2755 0)
(declare-sort var2313 0)
(declare-sort var2762 0)
(declare-sort var3927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/943996358 (var391 var411) String)
(declare-fun getPropertyMapping/-1647129805 (var391 String) var2432)
(declare-fun cast-from-var2432-to-var1761 (var2432) var1761)
(declare-fun var3844_getPropertyType/-1916908419 (var3844 String) var2576)
(declare-fun cast-from-var1761-to-var3844 (var1761) var3844)
(declare-fun cast-from-var2576-to-var2755 (var2576) var2755)
(declare-fun getFactory/255761350 (var391) var2313)
(declare-fun getIdentifierOrUniqueKeyType/-1917173520 (var2762 var3927) var2576)
(declare-fun cast-from-var2755-to-var2762 (var2755) var2762)
(declare-fun cast-from-var2313-to-var3927 (var2313) var3927)
(declare-const null-var391 var391)
(declare-const null-var411 var411)
(declare-const null-String String)
(declare-const var91 var391) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var91 null-var391)))
(declare-const var3359 var411) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3359 null-var411)))
(declare-const var3754 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3754 null-String)))
(assert true)
(define-const var3628 String (getEntityName/943996358 var91 var3359)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1) 
(assert true)
(define-const var1914 var2432 (getPropertyMapping/-1647129805 var91 var3628)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2) 
(define-const var599 var1761 (cast-from-var2432-to-var1761 var1914)) ; Statement: $r5 = (org.hibernate.persister.entity.Loadable) $r3 
(define-const var146 var2576 (var3844_getPropertyType/-1916908419 (cast-from-var1761-to-var3844 var599) var3754)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.Loadable: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4) 
(define-const var3576 Bool true) ; Statement: $z0 = r6 instanceof org.hibernate.type.ManyToOneType 
 ; Statement: if $z0 != 0 goto $r8 = (org.hibernate.type.ManyToOneType) r6 
(assert (not (= (ite var3576 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2726 var2755 (cast-from-var2576-to-var2755 var146)) ; Statement: $r8 = (org.hibernate.type.ManyToOneType) r6 
(assert true)
(define-const var2785 var2313 (getFactory/255761350 var91)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var1393 var2576 (getIdentifierOrUniqueKeyType/-1917173520 (cast-from-var2755-to-var2762 var2726) (cast-from-var2313-to-var3927 var2785))) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.type.ManyToOneType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>($r7) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/943996358=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String), getPropertyMapping/-1647129805=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String], org.hibernate.persister.entity.PropertyMapping), cast-from-var2432-to-var1761=([org.hibernate.persister.entity.PropertyMapping], org.hibernate.persister.entity.Loadable), var3844_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), cast-from-var1761-to-var3844=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), cast-from-var2576-to-var2755=([org.hibernate.type.Type], org.hibernate.type.ManyToOneType), getFactory/255761350=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.engine.spi.SessionFactoryImplementor), getIdentifierOrUniqueKeyType/-1917173520=([org.hibernate.type.EntityType, org.hibernate.engine.spi.Mapping], org.hibernate.type.Type), cast-from-var2755-to-var2762=([org.hibernate.type.ManyToOneType], org.hibernate.type.EntityType), cast-from-var2313-to-var3927=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.spi.Mapping)}
; {var391=org.hibernate.loader.criteria.CriteriaQueryTranslator, var91=r0, var411=org.hibernate.Criteria, var3359=r1, var3754=r4, var1798=null_type, var3628=$r2, var2432=org.hibernate.persister.entity.PropertyMapping, var1914=$r3, var1761=org.hibernate.persister.entity.Loadable, var599=$r5, var2576=org.hibernate.type.Type, var3844=org.hibernate.persister.entity.EntityPersister, var146=r6, var3576=$z0, var2755=org.hibernate.type.ManyToOneType, var2726=$r8, var2313=org.hibernate.engine.spi.SessionFactoryImplementor, var2785=$r7, var2762=org.hibernate.type.EntityType, var3927=org.hibernate.engine.spi.Mapping, var1393=$r9}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var391, r0=var91, org.hibernate.Criteria=var411, r1=var3359, r4=var3754, null_type=var1798, $r2=var3628, org.hibernate.persister.entity.PropertyMapping=var2432, $r3=var1914, org.hibernate.persister.entity.Loadable=var1761, $r5=var599, org.hibernate.type.Type=var2576, org.hibernate.persister.entity.EntityPersister=var3844, r6=var146, $z0=var3576, org.hibernate.type.ManyToOneType=var2755, $r8=var2726, org.hibernate.engine.spi.SessionFactoryImplementor=var2313, $r7=var2785, org.hibernate.type.EntityType=var2762, org.hibernate.engine.spi.Mapping=var3927, $r9=var1393}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: org.hibernate.Criteria;	r4 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1);	$r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2);	$r5 = (org.hibernate.persister.entity.Loadable) $r3;	r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.Loadable: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4);	$z0 = r6 instanceof org.hibernate.type.ManyToOneType;	if $z0 != 0 goto $r8 = (org.hibernate.type.ManyToOneType) r6;	$r8 = (org.hibernate.type.ManyToOneType) r6;	$r7 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r9 = virtualinvoke $r8.<org.hibernate.type.ManyToOneType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>($r7);	return $r9
;block_num 2