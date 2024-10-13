(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var216 0)
(declare-sort var2877 0)
(declare-sort var150 0)
(declare-sort var3416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyStrategyImplementorByStrategyMap/1434214095 (var216) var150)
(declare-fun var150_put/1464166817 (var150 var3416 var3416) var3416)
(declare-fun cast-from-ClassObject-to-var3416 (ClassObject) var3416)
(declare-fun cast-from-var2877-to-var3416 (var2877) var3416)
(declare-fun cast-from-var3416-to-var2877 (var3416) var2877)
(declare-const null-var216 var216)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2877 var2877)
(declare-const var1595 var216) ; Statement: r0 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorImpl 
(assert (not (= var1595 null-var216)))
(declare-const var2830 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2830 null-ClassObject)))
(declare-const var3594 var2877) ; Statement: r2 := @parameter1: org.hibernate.boot.registry.selector.internal.LazyServiceResolver 
(assert (not (= var3594 null-var2877)))
(define-const var2016 var150 (lazyStrategyImplementorByStrategyMap/1434214095 var1595)) ; Statement: $r3 = r0.<org.hibernate.boot.registry.selector.internal.StrategySelectorImpl: java.util.Map lazyStrategyImplementorByStrategyMap> 
(define-const var295 var3416 (var150_put/1464166817 var2016 (cast-from-ClassObject-to-var3416 var2830) (cast-from-var2877-to-var3416 var3594))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
(define-const var2826 var2877 (cast-from-var3416-to-var2877 var295)) ; Statement: r5 = (org.hibernate.boot.registry.selector.internal.LazyServiceResolver) $r4 
 ; Statement: if r5 == null goto return 
(assert (= var2826 null-var2877)) ; Cond: r5 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyStrategyImplementorByStrategyMap/1434214095=([org.hibernate.boot.registry.selector.internal.StrategySelectorImpl], java.util.Map), var150_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3416=([java.lang.Class], java.lang.Object), cast-from-var2877-to-var3416=([org.hibernate.boot.registry.selector.internal.LazyServiceResolver], java.lang.Object), cast-from-var3416-to-var2877=([java.lang.Object], org.hibernate.boot.registry.selector.internal.LazyServiceResolver)}
; {var216=org.hibernate.boot.registry.selector.internal.StrategySelectorImpl, var1595=r0, var2830=r1, var2877=org.hibernate.boot.registry.selector.internal.LazyServiceResolver, var3594=r2, var150=java.util.Map, var2016=$r3, var3416=java.lang.Object, var295=$r4, var2826=r5}
; {org.hibernate.boot.registry.selector.internal.StrategySelectorImpl=var216, r0=var1595, r1=var2830, org.hibernate.boot.registry.selector.internal.LazyServiceResolver=var2877, r2=var3594, java.util.Map=var150, $r3=var2016, java.lang.Object=var3416, $r4=var295, r5=var2826}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorImpl;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: org.hibernate.boot.registry.selector.internal.LazyServiceResolver;	$r3 = r0.<org.hibernate.boot.registry.selector.internal.StrategySelectorImpl: java.util.Map lazyStrategyImplementorByStrategyMap>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	r5 = (org.hibernate.boot.registry.selector.internal.LazyServiceResolver) $r4;	if r5 == null goto return;	return
;block_num 2