(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var2349 0)
(declare-sort var3984 0)
(declare-sort var3992 0)
(declare-sort var2498 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/943996358 (var774 var2349) String)
(declare-fun getPropertyMapping/-1647129805 (var774 String) var3992)
(declare-fun cast-from-var3992-to-var2498 (var3992) var2498)
(declare-fun var2498_getPropertyType/-1916908419 (var2498 String) var1943)
(declare-fun getSQLAlias/-1921094231 (var774 var2349 String) String)
(declare-fun var3992_toColumns/701355653 (var3992 String String) (Array Int String))
(declare-const null-var774 var774)
(declare-const null-var2349 var2349)
(declare-const null-String String)
(declare-const var774-$assertionsDisabled Bool)
(declare-const var904 var774) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var904 null-var774)))
(declare-const var3247 var2349) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3247 null-var2349)))
(declare-const var112 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var112 null-String)))
(assert true)
(define-const var3048 String (getEntityName/943996358 var904 var3247)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1) 
(assert true)
(define-const var2319 var3992 (getPropertyMapping/-1647129805 var904 var3048)) ; Statement: r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2) 
(define-const var242 Bool var774-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.loader.criteria.CriteriaQueryTranslator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.EntityPersister) r3 
(assert (not (= (ite var242 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3327 var2498 (cast-from-var3992-to-var2498 var2319)) ; Statement: $r5 = (org.hibernate.persister.entity.EntityPersister) r3 
(define-const var1751 var1943 (var2498_getPropertyType/-1916908419 var3327 var112)) ; Statement: $r13 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4) 
(define-const var2676 Bool true) ; Statement: $z1 = $r13 instanceof org.hibernate.type.ManyToOneType 
 ; Statement: if $z1 != 0 goto $r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4) 
(assert (not (= (ite var2676 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var2512 String (getSQLAlias/-1921094231 var904 var3247 var112)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4) 
(define-const var2241 (Array Int String) (var3992_toColumns/701355653 var2319 var2512 var112)) ; Statement: $r7 = interfaceinvoke r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r6, r4) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/943996358=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String), getPropertyMapping/-1647129805=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String], org.hibernate.persister.entity.PropertyMapping), cast-from-var3992-to-var2498=([org.hibernate.persister.entity.PropertyMapping], org.hibernate.persister.entity.EntityPersister), var2498_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), getSQLAlias/-1921094231=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria, java.lang.String], java.lang.String), var3992_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[])}
; {var774=org.hibernate.loader.criteria.CriteriaQueryTranslator, var904=r0, var2349=org.hibernate.Criteria, var3247=r1, var112=r4, var3984=null_type, var3048=$r2, var3992=org.hibernate.persister.entity.PropertyMapping, var2319=r3, var242=$z0, var2498=org.hibernate.persister.entity.EntityPersister, var3327=$r5, var1943=org.hibernate.type.Type, var1751=$r13, var2676=$z1, var2512=$r6, var2241=$r7}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var774, r0=var904, org.hibernate.Criteria=var2349, r1=var3247, r4=var112, null_type=var3984, $r2=var3048, org.hibernate.persister.entity.PropertyMapping=var3992, r3=var2319, $z0=var242, org.hibernate.persister.entity.EntityPersister=var2498, $r5=var3327, org.hibernate.type.Type=var1943, $r13=var1751, $z1=var2676, $r6=var2512, $r7=var2241}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: org.hibernate.Criteria;	r4 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1);	r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2);	$z0 = <org.hibernate.loader.criteria.CriteriaQueryTranslator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.EntityPersister) r3;	$r5 = (org.hibernate.persister.entity.EntityPersister) r3;	$r13 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4);	$z1 = $r13 instanceof org.hibernate.type.ManyToOneType;	if $z1 != 0 goto $r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4);	$r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4);	$r7 = interfaceinvoke r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r6, r4);	return $r7
;block_num 3