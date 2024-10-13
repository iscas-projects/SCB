(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2813 0)
(declare-sort var3853 0)
(declare-sort var1879 0)
(declare-sort var3252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedType/307209455 (var2813) var1879)
(declare-fun var1879_getAttribute/690477173 (var1879 String) var3252)
(declare-const null-var2813 var2813)
(declare-const null-String String)
(declare-const null-var3252 var3252)
(declare-const var1021 var2813) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath 
(assert (not (= var1021 null-var2813)))
(declare-const var787 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var787 null-String)))
(define-const var2692 var1879 (managedType/307209455 var1021)) ; Statement: $r2 = r0.<org.hibernate.query.criteria.internal.path.SingularAttributePath: javax.persistence.metamodel.ManagedType managedType> 
(define-const var2499 var3252 (var1879_getAttribute/690477173 var2692 var787)) ; Statement: r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Attribute getAttribute(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2499 null-var3252))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {managedType/307209455=([org.hibernate.query.criteria.internal.path.SingularAttributePath], javax.persistence.metamodel.ManagedType), var1879_getAttribute/690477173=([javax.persistence.metamodel.ManagedType, java.lang.String], javax.persistence.metamodel.Attribute)}
; {var2813=org.hibernate.query.criteria.internal.path.SingularAttributePath, var1021=r0, var787=r1, var3853=null_type, var1879=javax.persistence.metamodel.ManagedType, var2692=$r2, var3252=javax.persistence.metamodel.Attribute, var2499=r3}
; {org.hibernate.query.criteria.internal.path.SingularAttributePath=var2813, r0=var1021, r1=var787, null_type=var3853, javax.persistence.metamodel.ManagedType=var1879, $r2=var2692, javax.persistence.metamodel.Attribute=var3252, r3=var2499}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.criteria.internal.path.SingularAttributePath: javax.persistence.metamodel.ManagedType managedType>;	r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Attribute getAttribute(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2