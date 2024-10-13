(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2093 0)
(declare-sort var786 0)
(declare-sort var2453 0)
(declare-sort var1120 0)
(declare-sort var121 0)
(declare-sort var2929 0)
(declare-sort var1561 0)
(declare-sort var3241 0)
(declare-sort var3016 0)
(declare-sort var1585 0)
(declare-sort var3081 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var1120) var2453)
(declare-fun cast-from-var2093-to-var1120 (var2093) var1120)
(declare-fun var2453_getFactory/1122061256 (var2453) var121)
(declare-fun var121_getNamedQueryRepository/-108285413 (var121) var2929)
(declare-fun getResultSetMappingDefinition/215355223 (var2929 String) var1561)
(declare-fun getQueryReturns/-306703353 (var1561) (Array Int var3241))
(declare-fun queryReturns/-1530975572 (var2093) var3016)
(declare-fun var1585_asList/1779083644 ((Array Int var3081)) var3016)
(declare-fun cast-from-__Array__Int__var3241__-to-__Array__Int__var3081__ ((Array Int var3241)) (Array Int var3081))
(declare-fun var3016_addAll/-525367613 (var3016 var3149) Bool)
(declare-fun cast-from-var3016-to-var3149 (var3016) var3149)
(declare-const null-var2093 var2093)
(declare-const null-String String)
(declare-const null-var1561 var1561)
(declare-const var2579 var2093) ; Statement: r0 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var2579 null-var2093)))
(declare-const var970 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var970 null-String)))
(assert true)
(define-const var2162 var2453 (getProducer/-1443624759 (cast-from-var2093-to-var1120 var2579))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
(define-const var3331 var121 (var2453_getFactory/1122061256 var2162)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3042 var2929 (var121_getNamedQueryRepository/-108285413 var3331)) ; Statement: $r4 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var2772 var1561 (getResultSetMappingDefinition/215355223 var3042 var970)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>(r3) 
 ; Statement: if r5 != null goto r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>() 
(assert (not (= var2772 null-var1561))) ; Cond: r5 != null 
(assert true)
(define-const var569 (Array Int var3241) (getQueryReturns/-306703353 var2772)) ; Statement: r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>() 
(define-const var52 var3016 (queryReturns/-1530975572 var2579)) ; Statement: $r7 = r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.List queryReturns> 
(define-const var1868 var3016 (var1585_asList/1779083644 (cast-from-__Array__Int__var3241__-to-__Array__Int__var3081__ var569))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r6) 
;(assert (var3016_addAll/-525367613 var52 (cast-from-var3016-to-var3149 var1868))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean addAll(java.util.Collection)>($r8) 

(declare-const var52!1 var3016)
(declare-const var1868!1 var3016)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), cast-from-var2093-to-var1120=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.query.internal.AbstractProducedQuery), var2453_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var121_getNamedQueryRepository/-108285413=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.query.spi.NamedQueryRepository), getResultSetMappingDefinition/215355223=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.engine.ResultSetMappingDefinition), getQueryReturns/-306703353=([org.hibernate.engine.ResultSetMappingDefinition], org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[]), queryReturns/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], java.util.List), var1585_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var3241__-to-__Array__Int__var3081__=([org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[]], java.lang.Object[]), var3016_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var3016-to-var3149=([java.util.List], java.util.Collection)}
; {var2093=org.hibernate.query.internal.NativeQueryImpl, var2579=r0, var970=r3, var786=null_type, var2453=org.hibernate.engine.spi.SharedSessionContractImplementor, var1120=org.hibernate.query.internal.AbstractProducedQuery, var2162=$r1, var121=org.hibernate.engine.spi.SessionFactoryImplementor, var3331=$r2, var2929=org.hibernate.query.spi.NamedQueryRepository, var3042=$r4, var1561=org.hibernate.engine.ResultSetMappingDefinition, var2772=r5, var3241=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn, var569=r6, var3016=java.util.List, var52=$r7, var1585=java.util.Arrays, var3081=java.lang.Object, var1868=$r8, var3149=java.util.Collection}
; {org.hibernate.query.internal.NativeQueryImpl=var2093, r0=var2579, r3=var970, null_type=var786, org.hibernate.engine.spi.SharedSessionContractImplementor=var2453, org.hibernate.query.internal.AbstractProducedQuery=var1120, $r1=var2162, org.hibernate.engine.spi.SessionFactoryImplementor=var121, $r2=var3331, org.hibernate.query.spi.NamedQueryRepository=var2929, $r4=var3042, org.hibernate.engine.ResultSetMappingDefinition=var1561, r5=var2772, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn=var3241, r6=var569, java.util.List=var3016, $r7=var52, java.util.Arrays=var1585, java.lang.Object=var3081, $r8=var1868, java.util.Collection=var3149}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.NativeQueryImpl;	r3 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	$r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	r5 = virtualinvoke $r4.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>(r3);	if r5 != null goto r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>();	r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>();	$r7 = r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.List queryReturns>;	$r8 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r6);	interfaceinvoke $r7.<java.util.List: boolean addAll(java.util.Collection)>($r8);	return r0
;block_num 2