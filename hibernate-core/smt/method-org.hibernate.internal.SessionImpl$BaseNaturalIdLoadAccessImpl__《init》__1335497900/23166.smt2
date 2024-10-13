(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2593 0)
(declare-sort var807 0)
(declare-sort var176 0)
(declare-sort var2052 0)
(declare-sort var3505 0)
(declare-sort var2742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1865851012 (var2593) var807)
(declare-fun <init>/-279557996 (var2052) void)
(declare-fun cast-from-var2593-to-var2052 (var2593) var2052)
(declare-fun synchronizationEnabled/1865851012 (var2593) Bool)
(declare-fun entityPersister/1865851012 (var2593) var176)
(declare-fun var176_hasNaturalIdentifier/2013945893 (var176) Bool)
(declare-fun var3505-init () var3505)
(declare-fun arr-var2052-init () (Array Int var2052))
(declare-fun var176_getEntityName/-1914780628 (var176) String)
(declare-fun cast-from-String-to-var2052 (String) var2052)
(declare-fun String_format/1339386452 (String (Array Int var2052)) String)
(declare-fun <init>/-790357943 (var3505 String) void)
(declare-fun cast-from-var3505-to-var2742 (var3505) var2742)
(declare-const null-var2593 var2593)
(declare-const null-var807 var807)
(declare-const null-var176 var176)
(declare-const null-__Array__Int__var2052__ (Array Int var2052))
(declare-const var1085 var2593) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl 
(assert (not (= var1085 null-var2593)))
(declare-const var883 var807) ; Statement: r1 := @parameter0: org.hibernate.internal.SessionImpl 
(assert (not (= var883 null-var807)))
(declare-const var3871 var176) ; Statement: r2 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3871 null-var176)))
(declare-const var1085!1 var2593)
(assert (not (= var1085!1 null-var2593)))
(assert (= (this$0/1865851012 var1085!1) var883)) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var2593-to-var2052 var1085!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1085!2 var2593)
(declare-const var1085!3 var2593)
(assert (not (= var1085!3 null-var2593)))
(assert (= (synchronizationEnabled/1865851012 var1085!3) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: boolean synchronizationEnabled> = 1 
(declare-const var1085!4 var2593)
(assert (not (= var1085!4 null-var2593)))
(assert (= (entityPersister/1865851012 var1085!4) var3871)) ; Statement: r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.persister.entity.EntityPersister entityPersister> = r2 
(define-const var1629 Bool (var176_hasNaturalIdentifier/2013945893 var3871)) ; Statement: $z0 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1629 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3291 var3505 var3505-init) ; Statement: $r7 = new org.hibernate.HibernateException 
(define-const var1669 (Array Int var2052) arr-var2052-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(define-const var370 String (var176_getEntityName/-1914780628 var3871)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var1669!1 (Array Int var2052))
(assert (not (= var1669!1 null-__Array__Int__var2052__)))
(assert (= (select var1669!1 0) (cast-from-String-to-var2052 var370))) ; Statement: $r4[0] = $r5 
(define-const var634 String (String_format/1339386452 "Entity [%s] did not define a natural id" var1669!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity [%s] did not define a natural id", $r4) 
(assert true)
;(assert (<init>/-790357943 var3291 var634)) ; Statement: specialinvoke $r7.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6) 

(declare-const var3291!1 var3505)
(declare-const var634!1 String)
(define-const var629 var2742 (cast-from-var3505-to-var2742 var3291!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl), <init>/-279557996=([java.lang.Object], void), cast-from-var2593-to-var2052=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], java.lang.Object), synchronizationEnabled/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], boolean), entityPersister/1865851012=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl], org.hibernate.persister.entity.EntityPersister), var176_hasNaturalIdentifier/2013945893=([org.hibernate.persister.entity.EntityPersister], boolean), var3505-init=([], org.hibernate.HibernateException), arr-var2052-init=([], java.lang.Object[]), var176_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-String-to-var2052=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3505-to-var2742=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2593=org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, var1085=r0, var807=org.hibernate.internal.SessionImpl, var883=r1, var176=org.hibernate.persister.entity.EntityPersister, var3871=r2, var2052=java.lang.Object, var1629=$z0, var3505=org.hibernate.HibernateException, var3291=$r7, var1669=$r4, var370=$r5, var634=$r6, var2742=java.lang.Throwable, var629=$r8}
; {org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl=var2593, r0=var1085, org.hibernate.internal.SessionImpl=var807, r1=var883, org.hibernate.persister.entity.EntityPersister=var176, r2=var3871, java.lang.Object=var2052, $z0=var1629, org.hibernate.HibernateException=var3505, $r7=var3291, $r4=var1669, $r5=var370, $r6=var634, java.lang.Throwable=var2742, $r8=var629}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl;	r1 := @parameter0: org.hibernate.internal.SessionImpl;	r2 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: boolean synchronizationEnabled> = 1;	r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: org.hibernate.persister.entity.EntityPersister entityPersister> = r2;	$z0 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>();	if $z0 != 0 goto return;	$r7 = new org.hibernate.HibernateException;	$r4 = newarray (java.lang.Object)[1];	$r5 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity [%s] did not define a natural id", $r4);	specialinvoke $r7.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 2