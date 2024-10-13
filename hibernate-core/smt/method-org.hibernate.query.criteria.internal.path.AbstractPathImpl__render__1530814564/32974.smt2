(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1096 0)
(declare-sort var1672 0)
(declare-sort var3219 0)
(declare-sort var1152 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPathSource/-787522163 (var1096) var3219)
(declare-fun getAttribute/-112258107 (var987) var1152)
(declare-fun cast-from-var1096-to-var987 (var1096) var987)
(declare-fun var1152_getName/782728034 (var1152) String)
(declare-const null-var1096 var1096)
(declare-const null-var1672 var1672)
(declare-const null-var3219 var3219)
(declare-const var1490 var1096) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl 
(assert (not (= var1490 null-var1096)))
(declare-const var2324 var1672) ; Statement: r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2324 null-var1672)))
(assert true)
(define-const var2490 var3219 (getPathSource/-787522163 var1490)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(assert (= var2490 null-var3219)) ; Cond: r1 == null 
(assert true)
(define-const var2883 var1152 (getAttribute/-112258107 (cast-from-var1096-to-var987 var1490))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(define-const var1575 String (var1152_getName/782728034 var2883)) ; Statement: $r3 = interfaceinvoke $r2.<javax.persistence.metamodel.Attribute: java.lang.String getName()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getPathSource/-787522163=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathSource), getAttribute/-112258107=([org.hibernate.query.criteria.internal.PathImplementor], javax.persistence.metamodel.Attribute), cast-from-var1096-to-var987=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathImplementor), var1152_getName/782728034=([javax.persistence.metamodel.Attribute], java.lang.String)}
; {var1096=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var1490=r0, var1672=org.hibernate.query.criteria.internal.compile.RenderingContext, var2324=r4, var3219=org.hibernate.query.criteria.internal.PathSource, var2490=r1, var1152=javax.persistence.metamodel.Attribute, var987=org.hibernate.query.criteria.internal.PathImplementor, var2883=$r2, var1575=$r3}
; {org.hibernate.query.criteria.internal.path.AbstractPathImpl=var1096, r0=var1490, org.hibernate.query.criteria.internal.compile.RenderingContext=var1672, r4=var2324, org.hibernate.query.criteria.internal.PathSource=var3219, r1=var2490, javax.persistence.metamodel.Attribute=var1152, org.hibernate.query.criteria.internal.PathImplementor=var987, $r2=var2883, $r3=var1575}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl;	r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>();	if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>();	$r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>();	$r3 = interfaceinvoke $r2.<javax.persistence.metamodel.Attribute: java.lang.String getName()>();	return $r3
;block_num 2