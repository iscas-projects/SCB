(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3871 0)
(declare-sort var3158 0)
(declare-sort var1371 0)
(declare-sort var3724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3158_getStrategyRole/993667556 (var3158) ClassObject)
(declare-fun isInterface/-352192428 (ClassObject) Bool)
(declare-fun var3158_getStrategyImplementation/-161686296 (var3158) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun explicitStrategyRegistrations/-1357447028 (var3871) var1371)
(declare-fun var1371_add/328494887 (var1371 var3724) Bool)
(declare-fun cast-from-var3158-to-var3724 (var3158) var3724)
(declare-const null-var3871 var3871)
(declare-const null-var3158 var3158)
(declare-const var1635 var3871) ; Statement: r4 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder 
(assert (not (= var1635 null-var3871)))
(declare-const var1722 var3158) ; Statement: r0 := @parameter0: org.hibernate.boot.registry.selector.StrategyRegistration 
(assert (not (= var1722 null-var3158)))
(define-const var3831 ClassObject (var3158_getStrategyRole/993667556 var1722)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(assert true)
(define-const var2292 Bool (isInterface/-352192428 var3831)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInterface()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(assert (not (= (ite var2292 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1180 ClassObject (var3158_getStrategyRole/993667556 var1722)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(define-const var35 ClassObject (var3158_getStrategyImplementation/-161686296 var1722)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>() 
(assert true)
(define-const var938 Bool (isAssignableFrom/-1028998700 var1180 var35)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2) 
 ; Statement: if $z1 != 0 goto $r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations> 
(assert (not (= (ite var938 1 0) 0))) ; Cond: $z1 != 0 
(define-const var554 var1371 (explicitStrategyRegistrations/-1357447028 var1635)) ; Statement: $r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations> 
;(assert (var1371_add/328494887 var554 (cast-from-var3158-to-var3724 var1722))) ; Statement: interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>(r0) 

(declare-const var554!1 var1371)
(declare-const var1722!1 var3158)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3158_getStrategyRole/993667556=([org.hibernate.boot.registry.selector.StrategyRegistration], java.lang.Class), isInterface/-352192428=([java.lang.Class], boolean), var3158_getStrategyImplementation/-161686296=([org.hibernate.boot.registry.selector.StrategyRegistration], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), explicitStrategyRegistrations/-1357447028=([org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder], java.util.List), var1371_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3158-to-var3724=([org.hibernate.boot.registry.selector.StrategyRegistration], java.lang.Object)}
; {var3871=org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder, var1635=r4, var3158=org.hibernate.boot.registry.selector.StrategyRegistration, var1722=r0, var3831=$r1, var2292=$z0, var1180=$r3, var35=$r2, var938=$z1, var1371=java.util.List, var554=$r5, var3724=java.lang.Object}
; {org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder=var3871, r4=var1635, org.hibernate.boot.registry.selector.StrategyRegistration=var3158, r0=var1722, $r1=var3831, $z0=var2292, $r3=var1180, $r2=var35, $z1=var938, java.util.List=var1371, $r5=var554, java.lang.Object=var3724}
;seq 
;cnt {}
;stmts r4 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder;	r0 := @parameter0: org.hibernate.boot.registry.selector.StrategyRegistration;	$r1 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInterface()>();	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$r2 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>();	$z1 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2);	if $z1 != 0 goto $r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations>;	$r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations>;	interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>(r0);	return
;block_num 3