(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3259 0)
(declare-sort var1339 0)
(declare-sort var3908 0)
(declare-sort var3583 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndexType/543652041 (var3259) var3583)
(declare-fun var3583_nullSafeGet/1991669340 (var3583 var1339 (Array Int String) var3908 var2952) var2952)
(declare-fun decrementIndexByBase/1069993218 (var3259 var2952) var2952)
(declare-const null-var3259 var3259)
(declare-const null-var1339 var1339)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3908 var3908)
(declare-const null-var2952 var2952)
(declare-const var1021 var3259) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1021 null-var3259)))
(declare-const var2238 var1339) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var2238 null-var1339)))
(declare-const var583 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var583 null-__Array__Int__String__)))
(declare-const var1163 var3908) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1163 null-var3908)))
(assert true)
(define-const var3468 var3583 (getIndexType/543652041 var1021)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIndexType()>() 
(define-const var652 var2952 (var3583_nullSafeGet/1991669340 var3468 var2238 var583 var1163 null-var2952)) ; Statement: r12 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null) 
 ; Statement: if r12 != null goto r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12) 
(assert (not (= var652 null-var2952))) ; Cond: r12 != null 
(assert true)
(define-const var2017 var2952 (decrementIndexByBase/1069993218 var1021 var652)) ; Statement: r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12) 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndexType/543652041=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type), var3583_nullSafeGet/1991669340=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String[], org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object), decrementIndexByBase/1069993218=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.Object], java.lang.Object)}
; {var3259=org.hibernate.persister.collection.AbstractCollectionPersister, var1021=r0, var1339=java.sql.ResultSet, var2238=r1, var583=r2, var3908=org.hibernate.engine.spi.SharedSessionContractImplementor, var1163=r3, var3583=org.hibernate.type.Type, var3468=$r4, var2952=java.lang.Object, var652=r12, var2017=r13}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3259, r0=var1021, java.sql.ResultSet=var1339, r1=var2238, r2=var583, org.hibernate.engine.spi.SharedSessionContractImplementor=var3908, r3=var1163, org.hibernate.type.Type=var3583, $r4=var3468, java.lang.Object=var2952, r12=var652, r13=var2017}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String[];	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIndexType()>();	r12 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null);	if r12 != null goto r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12);	r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12);	return r13
;block_num 2