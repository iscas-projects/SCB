(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort var3782 0)
(declare-sort var3549 0)
(declare-sort var2807 0)
(declare-sort var313 0)
(declare-sort var1419 0)
(declare-sort var3115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var3549) void)
(declare-fun cast-from-var2658-to-var3549 (var2658) var3549)
(declare-fun factory/-778087690 (var2658) var2807)
(declare-fun getNamedQueryRepository/-457165058 (var2807) var313)
(declare-fun getNamedProcedureCallMemento/425417961 (var313 String) var1419)
(declare-fun var1419_makeProcedureCall/-356227264 (var1419 var3549) var3115)
(declare-const null-var2658 var2658)
(declare-const null-String String)
(declare-const null-var1419 var1419)
(declare-const var1766 var2658) ; Statement: r0 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var1766 null-var2658)))
(declare-const var918 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var918 null-String)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var2658-to-var3549 var1766))) ; Statement: virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>() 

(declare-const var1766!1 var2658)
(define-const var37 var2807 (factory/-778087690 var1766!1)) ; Statement: $r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory> 
(assert true)
(define-const var3572 var313 (getNamedQueryRepository/-457165058 var37)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var642 var1419 (getNamedProcedureCallMemento/425417961 var3572 var918)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.procedure.ProcedureCallMemento getNamedProcedureCallMemento(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0) 
(assert (not (= var642 null-var1419))) ; Cond: r4 != null 
(define-const var845 var3115 (var1419_makeProcedureCall/-356227264 var642 (cast-from-var2658-to-var3549 var1766!1))) ; Statement: r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0) 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var2658-to-var3549=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SharedSessionContractImplementor), factory/-778087690=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.internal.SessionFactoryImpl), getNamedQueryRepository/-457165058=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.query.spi.NamedQueryRepository), getNamedProcedureCallMemento/425417961=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.procedure.ProcedureCallMemento), var1419_makeProcedureCall/-356227264=([org.hibernate.procedure.ProcedureCallMemento, org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.procedure.ProcedureCall)}
; {var2658=org.hibernate.internal.AbstractSharedSessionContract, var1766=r0, var918=r2, var3782=null_type, var3549=org.hibernate.engine.spi.SharedSessionContractImplementor, var2807=org.hibernate.internal.SessionFactoryImpl, var37=$r1, var313=org.hibernate.query.spi.NamedQueryRepository, var3572=$r3, var1419=org.hibernate.procedure.ProcedureCallMemento, var642=r4, var3115=org.hibernate.procedure.ProcedureCall, var845=r5}
; {org.hibernate.internal.AbstractSharedSessionContract=var2658, r0=var1766, r2=var918, null_type=var3782, org.hibernate.engine.spi.SharedSessionContractImplementor=var3549, org.hibernate.internal.SessionFactoryImpl=var2807, $r1=var37, org.hibernate.query.spi.NamedQueryRepository=var313, $r3=var3572, org.hibernate.procedure.ProcedureCallMemento=var1419, r4=var642, org.hibernate.procedure.ProcedureCall=var3115, r5=var845}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r2 := @parameter0: java.lang.String;	virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>();	$r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory>;	$r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.procedure.ProcedureCallMemento getNamedProcedureCallMemento(java.lang.String)>(r2);	if r4 != null goto r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0);	r5 = interfaceinvoke r4.<org.hibernate.procedure.ProcedureCallMemento: org.hibernate.procedure.ProcedureCall makeProcedureCall(org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0);	return r5
;block_num 2