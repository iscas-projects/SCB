(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2874 0)
(declare-sort var2615 0)
(declare-sort var2419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findSQLFunction/-1640416109 (var2874 String) var2419)
(declare-const null-var2874 var2874)
(declare-const null-String String)
(declare-const null-var2419 var2419)
(declare-const var596 var2874) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper 
(assert (not (= var596 null-var2874)))
(declare-const var2022 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2022 null-String)))
(assert true)
(define-const var300 var2419 (findSQLFunction/-1640416109 var596 var2022)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var300 null-var2419))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {findSQLFunction/-1640416109=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], org.hibernate.dialect.function.SQLFunction)}
; {var2874=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var596=r0, var2022=r1, var2615=null_type, var2419=org.hibernate.dialect.function.SQLFunction, var300=r2}
; {org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var2874, r0=var596, r1=var2022, null_type=var2615, org.hibernate.dialect.function.SQLFunction=var2419, r2=var300}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r1);	if r2 != null goto return r2;	return r2
;block_num 2