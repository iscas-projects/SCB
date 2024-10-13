(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3115 0)
(declare-sort var171 0)
(declare-sort var2773 0)
(declare-sort var260 0)
(declare-sort var253 0)
(declare-sort var2685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierType/550188002 (var3115) var253)
(declare-fun var253_nullSafeGet/-169754434 (var253 var171 String var260 var2685) var2685)
(declare-const null-var3115 var3115)
(declare-const null-var171 var171)
(declare-const null-String String)
(declare-const null-var260 var260)
(declare-const null-var2685 var2685)
(declare-const var689 var3115) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var689 null-var3115)))
(declare-const var1457 var171) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var1457 null-var171)))
(declare-const var832 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var832 null-String)))
(declare-const var2552 var260) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2552 null-var260)))
(assert true)
(define-const var745 var253 (getIdentifierType/550188002 var689)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIdentifierType()>() 
(define-const var329 var2685 (var253_nullSafeGet/-169754434 var745 var1457 var832 var2552 null-var2685)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null) 
 ; Statement: if r5 != null goto return r5 
(assert (not (= var329 null-var2685))) ; Cond: r5 != null 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierType/550188002=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type), var253_nullSafeGet/-169754434=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String, org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object)}
; {var3115=org.hibernate.persister.collection.AbstractCollectionPersister, var689=r0, var171=java.sql.ResultSet, var1457=r1, var832=r2, var2773=null_type, var260=org.hibernate.engine.spi.SharedSessionContractImplementor, var2552=r3, var253=org.hibernate.type.Type, var745=$r4, var2685=java.lang.Object, var329=r5}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3115, r0=var689, java.sql.ResultSet=var171, r1=var1457, r2=var832, null_type=var2773, org.hibernate.engine.spi.SharedSessionContractImplementor=var260, r3=var2552, org.hibernate.type.Type=var253, $r4=var745, java.lang.Object=var2685, r5=var329}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIdentifierType()>();	r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null);	if r5 != null goto return r5;	return r5
;block_num 2