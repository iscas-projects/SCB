(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort var1645 0)
(declare-sort var2482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/186337157 (var3596 String) String)
(declare-fun getEntityPersister/-70114676 (var3596 String) var2482)
(declare-const null-var3596 var3596)
(declare-const null-String String)
(declare-const null-var2482 var2482)
(declare-const var3450 var3596) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3450 null-var3596)))
(declare-const var188 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var188 null-String)))
(assert true)
(define-const var2155 String (getType/186337157 var3450 var188)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getType(java.lang.String)>(r1) 
(assert true)
(define-const var540 var2482 (getEntityPersister/-70114676 var3450 var2155)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.Queryable getEntityPersister(java.lang.String)>(r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var540 null-var2482))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/186337157=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String), getEntityPersister/-70114676=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.entity.Queryable)}
; {var3596=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3450=r0, var188=r1, var1645=null_type, var2155=r2, var2482=org.hibernate.persister.entity.Queryable, var540=r3}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3596, r0=var3450, r1=var188, null_type=var1645, r2=var2155, org.hibernate.persister.entity.Queryable=var2482, r3=var540}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getType(java.lang.String)>(r1);	r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.Queryable getEntityPersister(java.lang.String)>(r2);	if r3 != null goto return r3;	return r3
;block_num 2