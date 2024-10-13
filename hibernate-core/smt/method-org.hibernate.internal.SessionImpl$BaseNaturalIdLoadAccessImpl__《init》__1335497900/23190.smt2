(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3071 0)
(declare-sort var3303 0)
(declare-sort var3778 0)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1865851012 (var3071) var3303)
(declare-fun <init>/-279557996 (var1505) void)
(declare-fun cast-from-var3071-to-var1505 (var3071) var1505)
(declare-fun synchronizationEnabled/1865851012 (var3071) Bool)
(declare-fun entityPersister/1865851012 (var3071) var3778)
(declare-fun var3778_hasNaturalIdentifier/2013945893 (var3778) Bool)
(declare-const null-var3071 var3071)
(declare-const null-var3303 var3303)
(declare-const null-var3778 var3778)
(declare-const var1255 var3071) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl 
(assert (not (= var1255 null-var3071)))
(declare-const var1823 var3303) ; Statement: r1 := @parameter0: org.hibernate.internal.SessionImpl 
(assert (not (= var1823 null-var3303)))
(declare-const var515 var3778) ; Statement: r2 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var515 null-var3778)))
(declare-const var1255!1 var3071)
(assert (not (= var1255!1 null-var3071)))
(assert (= (this$0/1865851012 var1255!1) var1823)) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var3071-to-var1505 var1255!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1255!2 var3071)
(declare-const var1255!3 var3071)
(assert (not (= var1255!3 null-var3071)))
(assert (= (synchronizationEnabled/1865851012 var1255!3) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: boolean synchronizationEnabled> = 1 
(declare-const var1255!4 var3071)
(assert (not (= var1255!4 null-var3071)))
(assert (= (entityPersister/1865851012 var1255!4) var515)) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.persister.entity.EntityPersister entityPersister> = r2 
(define-const var1331 Bool (var3778_hasNaturalIdentifier/2013945893 var515)) ; Statement: $z0 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1331 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl), <init>/-279557996=([java.lang.Object], void), cast-from-var3071-to-var1505=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], java.lang.Object), synchronizationEnabled/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], boolean), entityPersister/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], org.hibernate.persister.entity.EntityPersister), var3778_hasNaturalIdentifier/2013945893=([org.hibernate.persister.entity.EntityPersister], boolean)}
; {var3071=org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, var1255=r0, var3303=org.hibernate.internal.SessionImpl, var1823=r1, var3778=org.hibernate.persister.entity.EntityPersister, var515=r2, var1505=java.lang.Object, var1331=$z0}
; {org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl=var3071, r0=var1255, org.hibernate.internal.SessionImpl=var3303, r1=var1823, org.hibernate.persister.entity.EntityPersister=var3778, r2=var515, java.lang.Object=var1505, $z0=var1331}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl;	r1 := @parameter0: org.hibernate.internal.SessionImpl;	r2 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: boolean synchronizationEnabled> = 1;	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.persister.entity.EntityPersister entityPersister> = r2;	$z0 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>();	if $z0 != 0 goto return;	return
;block_num 2