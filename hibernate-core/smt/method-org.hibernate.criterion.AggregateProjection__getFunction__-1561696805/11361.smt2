(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var1518 0)
(declare-sort var2795 0)
(declare-sort var2482 0)
(declare-sort var399 0)
(declare-sort var190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2795_getFactory/960862227 (var2795) var2482)
(declare-fun var2482_getSqlFunctionRegistry/18379863 (var2482) var399)
(declare-fun findSQLFunction/1942375706 (var399 String) var190)
(declare-const null-var3307 var3307)
(declare-const null-String String)
(declare-const null-var2795 var2795)
(declare-const null-var190 var190)
(declare-const var3473 var3307) ; Statement: r11 := @this: org.hibernate.criterion.AggregateProjection 
(assert (not (= var3473 null-var3307)))
(declare-const var723 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var723 null-String)))
(declare-const var1073 var2795) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1073 null-var2795)))
(define-const var165 var2482 (var2795_getFactory/960862227 var1073)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var893 var399 (var2482_getSqlFunctionRegistry/18379863 var165)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>() 
(assert true)
(define-const var2239 var190 (findSQLFunction/1942375706 var893 var723)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2239 null-var190))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2795_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var2482_getSqlFunctionRegistry/18379863=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.function.SQLFunctionRegistry), findSQLFunction/1942375706=([org.hibernate.dialect.function.SQLFunctionRegistry, java.lang.String], org.hibernate.dialect.function.SQLFunction)}
; {var3307=org.hibernate.criterion.AggregateProjection, var3473=r11, var723=r2, var1518=null_type, var2795=org.hibernate.criterion.CriteriaQuery, var1073=r0, var2482=org.hibernate.engine.spi.SessionFactoryImplementor, var165=$r1, var399=org.hibernate.dialect.function.SQLFunctionRegistry, var893=$r3, var190=org.hibernate.dialect.function.SQLFunction, var2239=r4}
; {org.hibernate.criterion.AggregateProjection=var3307, r11=var3473, r2=var723, null_type=var1518, org.hibernate.criterion.CriteriaQuery=var2795, r0=var1073, org.hibernate.engine.spi.SessionFactoryImplementor=var2482, $r1=var165, org.hibernate.dialect.function.SQLFunctionRegistry=var399, $r3=var893, org.hibernate.dialect.function.SQLFunction=var190, r4=var2239}
;seq 
;cnt {}
;stmts r11 := @this: org.hibernate.criterion.AggregateProjection;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r1 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>();	r4 = virtualinvoke $r3.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r2);	if r4 != null goto return r4;	return r4
;block_num 2