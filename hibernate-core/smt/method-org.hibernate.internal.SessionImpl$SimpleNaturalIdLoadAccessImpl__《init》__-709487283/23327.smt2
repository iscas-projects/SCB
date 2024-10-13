(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var204 0)
(declare-sort var1124 0)
(declare-sort var2829 0)
(declare-sort var3482 0)
(declare-sort var1393 0)
(declare-sort var849 0)
(declare-sort var907 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1768463043 (var1760) var204)
(declare-fun <init>/-475572350 (var2829 var204 var1124 var3482) void)
(declare-fun cast-from-var1760-to-var2829 (var1760) var2829)
(declare-fun var1124_getNaturalIdentifierProperties/-487244073 (var1124) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var849-init () var849)
(declare-fun arr-var907-init () (Array Int var907))
(declare-fun var1124_getEntityName/-1914780628 (var1124) String)
(declare-fun cast-from-String-to-var907 (String) var907)
(declare-fun String_format/1339386452 (String (Array Int var907)) String)
(declare-fun <init>/-790357943 (var849 String) void)
(declare-fun cast-from-var849-to-var474 (var849) var474)
(declare-const null-var1760 var1760)
(declare-const null-var204 var204)
(declare-const null-var1124 var1124)
(declare-const null-NullType var1393)
(declare-const null-var3482 var3482)
(declare-const null-__Array__Int__var907__ (Array Int var907))
(declare-const var724 var1760) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl 
(assert (not (= var724 null-var1760)))
(declare-const var295 var204) ; Statement: r1 := @parameter0: org.hibernate.internal.SessionImpl 
(assert (not (= var295 null-var204)))
(declare-const var2328 var1124) ; Statement: r2 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2328 null-var1124)))
(declare-const var724!1 var1760)
(assert (not (= var724!1 null-var1760)))
(assert (= (this$0/1768463043 var724!1) var295)) ; Statement: r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1 
(assert true)
;(assert (<init>/-475572350 (cast-from-var1760-to-var2829 var724!1) var295 var2328 null-var3482)) ; Statement: specialinvoke r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: void <init>(org.hibernate.internal.SessionImpl,org.hibernate.persister.entity.EntityPersister,org.hibernate.internal.SessionImpl$1)>(r1, r2, null) 

(declare-const var724!2 var1760)
(declare-const var295!1 var204)
(declare-const var2328!1 var1124)
(declare-const var2840 var1393)
(define-const var3429 (Array Int Int) (var1124_getNaturalIdentifierProperties/-487244073 var2328!1)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>() 
(define-const var2571 Int (getLength-Arr-Int-1 var3429)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if $i0 == 1 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>() 
(assert (not (= var2571 1))) ; Negate: Cond: $i0 == 1  
(define-const var30 var849 var849-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var3246 (Array Int var907) arr-var907-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var1965 String (var1124_getEntityName/-1914780628 var2328!1)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var3246!1 (Array Int var907))
(assert (not (= var3246!1 null-__Array__Int__var907__)))
(assert (= (select var3246!1 0) (cast-from-String-to-var907 var1965))) ; Statement: $r8[0] = $r9 
(define-const var3794 String (String_format/1339386452 "Entity [%s] did not define a simple natural id" var3246!1)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity [%s] did not define a simple natural id", $r8) 
(assert true)
;(assert (<init>/-790357943 var30 var3794)) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var30!1 var849)
(declare-const var3794!1 String)
(define-const var2338 var474 (cast-from-var849-to-var474 var30!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1768463043=([org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl), <init>/-475572350=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, org.hibernate.internal.SessionImpl, org.hibernate.persister.entity.EntityPersister, org.hibernate.internal.SessionImpl$1], void), cast-from-var1760-to-var2829=([org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl), var1124_getNaturalIdentifierProperties/-487244073=([org.hibernate.persister.entity.EntityPersister], int[]), getLength-Arr-Int-1=([int[]], int), var849-init=([], org.hibernate.HibernateException), arr-var907-init=([], java.lang.Object[]), var1124_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-String-to-var907=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var849-to-var474=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1760=org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl, var724=r0, var204=org.hibernate.internal.SessionImpl, var295=r1, var1124=org.hibernate.persister.entity.EntityPersister, var2328=r2, var2829=org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, var3482=org.hibernate.internal.SessionImpl$1, var2840=null, var1393=null_type, var3429=$r3, var2571=$i0, var849=org.hibernate.HibernateException, var30=$r11, var907=java.lang.Object, var3246=$r8, var1965=$r9, var3794=$r10, var474=java.lang.Throwable, var2338=$r12}
; {org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl=var1760, r0=var724, org.hibernate.internal.SessionImpl=var204, r1=var295, org.hibernate.persister.entity.EntityPersister=var1124, r2=var2328, org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl=var2829, org.hibernate.internal.SessionImpl$1=var3482, null=var2840, null_type=var1393, $r3=var3429, $i0=var2571, org.hibernate.HibernateException=var849, $r11=var30, java.lang.Object=var907, $r8=var3246, $r9=var1965, $r10=var3794, java.lang.Throwable=var474, $r12=var2338}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl;	r1 := @parameter0: org.hibernate.internal.SessionImpl;	r2 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1;	specialinvoke r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: void <init>(org.hibernate.internal.SessionImpl,org.hibernate.persister.entity.EntityPersister,org.hibernate.internal.SessionImpl$1)>(r1, r2, null);	$r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>();	$i0 = lengthof $r3;	if $i0 == 1 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>();	$r11 = new org.hibernate.HibernateException;	$r8 = newarray (java.lang.Object)[1];	$r9 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r8[0] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity [%s] did not define a simple natural id", $r8);	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2