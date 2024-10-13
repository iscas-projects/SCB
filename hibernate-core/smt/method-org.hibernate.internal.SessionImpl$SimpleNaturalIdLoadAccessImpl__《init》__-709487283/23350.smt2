(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var418 0)
(declare-sort var2942 0)
(declare-sort var3603 0)
(declare-sort var1866 0)
(declare-sort var3765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1768463043 (var2478) var418)
(declare-fun <init>/-475572350 (var3603 var418 var2942 var1866) void)
(declare-fun cast-from-var2478-to-var3603 (var2478) var3603)
(declare-fun var2942_getNaturalIdentifierProperties/-487244073 (var2942) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2942_getPropertyNames/371230063 (var2942) (Array Int String))
(declare-fun naturalIdAttributeName/1768463043 (var2478) String)
(declare-const null-var2478 var2478)
(declare-const null-var418 var418)
(declare-const null-var2942 var2942)
(declare-const null-NullType var3765)
(declare-const null-var1866 var1866)
(declare-const var2425 var2478) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl 
(assert (not (= var2425 null-var2478)))
(declare-const var2622 var418) ; Statement: r1 := @parameter0: org.hibernate.internal.SessionImpl 
(assert (not (= var2622 null-var418)))
(declare-const var2124 var2942) ; Statement: r2 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2124 null-var2942)))
(declare-const var2425!1 var2478)
(assert (not (= var2425!1 null-var2478)))
(assert (= (this$0/1768463043 var2425!1) var2622)) ; Statement: r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1 
(assert true)
;(assert (<init>/-475572350 (cast-from-var2478-to-var3603 var2425!1) var2622 var2124 null-var1866)) ; Statement: specialinvoke r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: void <init>(org.hibernate.internal.SessionImpl,org.hibernate.persister.entity.EntityPersister,org.hibernate.internal.SessionImpl$1)>(r1, r2, null) 

(declare-const var2425!2 var2478)
(declare-const var2622!1 var418)
(declare-const var2124!1 var2942)
(declare-const var1326 var3765)
(define-const var2938 (Array Int Int) (var2942_getNaturalIdentifierProperties/-487244073 var2124!1)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>() 
(define-const var21 Int (getLength-Arr-Int-1 var2938)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if $i0 == 1 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>() 
(assert (= var21 1)) ; Cond: $i0 == 1 
(define-const var2818 (Array Int Int) (var2942_getNaturalIdentifierProperties/-487244073 var2124!1)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>() 
(define-const var3734 Int (select var2818 0)) ; Statement: i1 = $r4[0] 
(define-const var686 (Array Int String) (var2942_getPropertyNames/371230063 var2124!1)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String[] getPropertyNames()>() 
(define-const var1803 String (select var686 var3734)) ; Statement: $r6 = $r5[i1] 
(declare-const var2425!3 var2478)
(assert (not (= var2425!3 null-var2478)))
(assert (= (naturalIdAttributeName/1768463043 var2425!3) var1803)) ; Statement: r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: java.lang.String naturalIdAttributeName> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1768463043=([org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl), <init>/-475572350=([org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, org.hibernate.internal.SessionImpl, org.hibernate.persister.entity.EntityPersister, org.hibernate.internal.SessionImpl$1], void), cast-from-var2478-to-var3603=([org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl], org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl), var2942_getNaturalIdentifierProperties/-487244073=([org.hibernate.persister.entity.EntityPersister], int[]), getLength-Arr-Int-1=([int[]], int), var2942_getPropertyNames/371230063=([org.hibernate.persister.entity.EntityPersister], java.lang.String[]), naturalIdAttributeName/1768463043=([org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl], java.lang.String)}
; {var2478=org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl, var2425=r0, var418=org.hibernate.internal.SessionImpl, var2622=r1, var2942=org.hibernate.persister.entity.EntityPersister, var2124=r2, var3603=org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl, var1866=org.hibernate.internal.SessionImpl$1, var1326=null, var3765=null_type, var2938=$r3, var21=$i0, var2818=$r4, var3734=i1, var686=$r5, var1803=$r6}
; {org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl=var2478, r0=var2425, org.hibernate.internal.SessionImpl=var418, r1=var2622, org.hibernate.persister.entity.EntityPersister=var2942, r2=var2124, org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl=var3603, org.hibernate.internal.SessionImpl$1=var1866, null=var1326, null_type=var3765, $r3=var2938, $i0=var21, $r4=var2818, i1=var3734, $r5=var686, $r6=var1803}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl;	r1 := @parameter0: org.hibernate.internal.SessionImpl;	r2 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: org.hibernate.internal.SessionImpl this$0> = r1;	specialinvoke r0.<org.hibernate.internal.SessionImpl$BaseNaturalIdLoadAccessImpl: void <init>(org.hibernate.internal.SessionImpl,org.hibernate.persister.entity.EntityPersister,org.hibernate.internal.SessionImpl$1)>(r1, r2, null);	$r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>();	$i0 = lengthof $r3;	if $i0 == 1 goto $r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>();	$r4 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: int[] getNaturalIdentifierProperties()>();	i1 = $r4[0];	$r5 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: java.lang.String[] getPropertyNames()>();	$r6 = $r5[i1];	r0.<org.hibernate.internal.SessionImpl$SimpleNaturalIdLoadAccessImpl: java.lang.String naturalIdAttributeName> = $r6;	return
;block_num 2