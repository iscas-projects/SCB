(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort var2446 0)
(declare-sort var467 0)
(declare-sort var3680 0)
(declare-sort var3402 0)
(declare-sort var3301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyStrategyImplementorByStrategyMap/1434214095 (var1609) var467)
(declare-fun var467_put/1464166817 (var467 var3680 var3680) var3680)
(declare-fun cast-from-ClassObject-to-var3680 (ClassObject) var3680)
(declare-fun cast-from-var2446-to-var3680 (var2446) var3680)
(declare-fun cast-from-var3680-to-var2446 (var3680) var2446)
(declare-fun var3402-init () var3402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3402 String) void)
(declare-fun cast-from-var3402-to-var3301 (var3402) var3301)
(declare-const null-var1609 var1609)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2446 var2446)
(declare-const var2005 var1609) ; Statement: r0 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorImpl 
(assert (not (= var2005 null-var1609)))
(declare-const var1619 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1619 null-ClassObject)))
(declare-const var3658 var2446) ; Statement: r2 := @parameter1: org.hibernate.boot.registry.selector.internal.LazyServiceResolver 
(assert (not (= var3658 null-var2446)))
(define-const var1668 var467 (lazyStrategyImplementorByStrategyMap/1434214095 var2005)) ; Statement: $r3 = r0.<org.hibernate.boot.registry.selector.internal.StrategySelectorImpl: java.util.Map lazyStrategyImplementorByStrategyMap> 
(define-const var529 var3680 (var467_put/1464166817 var1668 (cast-from-ClassObject-to-var3680 var1619) (cast-from-var2446-to-var3680 var3658))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
(define-const var2308 var2446 (cast-from-var3680-to-var2446 var529)) ; Statement: r5 = (org.hibernate.boot.registry.selector.internal.LazyServiceResolver) $r4 
 ; Statement: if r5 == null goto return 
(assert (not (= var2308 null-var2446))) ; Negate: Cond: r5 == null  
(define-const var2031 var3402 var3402-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var3586 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3586)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3586!1 String)
(assert (= var3586!1 ""))
(assert true)
(define-const var184 String (append/672562846 var3586!1 "Detected a second LazyServiceResolver replacing an existing LazyServiceResolver implementation for strategy ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected a second LazyServiceResolver replacing an existing LazyServiceResolver implementation for strategy ") 
(declare-const var3586!2 String)
(assert (= var3586!2 (str.++ var3586!1 "Detected a second LazyServiceResolver replacing an existing LazyServiceResolver implementation for strategy ")))
(assert true)
(define-const var1559 String (getName/-1958580599 var1619)) ; Statement: $r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2422 String (append/672562846 var184 var1559)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var184!1 String)
(assert (= var184!1 (str.++ var184 var1559)))
(assert true)
(define-const var3865 String (toString/-2075883882 var2422)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2031 var3865)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var2031!1 var3402)
(declare-const var3865!1 String)
(define-const var3246 var3301 (cast-from-var3402-to-var3301 var2031!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyStrategyImplementorByStrategyMap/1434214095=([org.hibernate.boot.registry.selector.internal.StrategySelectorImpl], java.util.Map), var467_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3680=([java.lang.Class], java.lang.Object), cast-from-var2446-to-var3680=([org.hibernate.boot.registry.selector.internal.LazyServiceResolver], java.lang.Object), cast-from-var3680-to-var2446=([java.lang.Object], org.hibernate.boot.registry.selector.internal.LazyServiceResolver), var3402-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3402-to-var3301=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1609=org.hibernate.boot.registry.selector.internal.StrategySelectorImpl, var2005=r0, var1619=r1, var2446=org.hibernate.boot.registry.selector.internal.LazyServiceResolver, var3658=r2, var467=java.util.Map, var1668=$r3, var3680=java.lang.Object, var529=$r4, var2308=r5, var3402=org.hibernate.HibernateException, var2031=$r13, var3586=$r12, var184=$r9, var1559=$r8, var2422=$r10, var3865=$r11, var3301=java.lang.Throwable, var3246=$r14}
; {org.hibernate.boot.registry.selector.internal.StrategySelectorImpl=var1609, r0=var2005, r1=var1619, org.hibernate.boot.registry.selector.internal.LazyServiceResolver=var2446, r2=var3658, java.util.Map=var467, $r3=var1668, java.lang.Object=var3680, $r4=var529, r5=var2308, org.hibernate.HibernateException=var3402, $r13=var2031, $r12=var3586, $r9=var184, $r8=var1559, $r10=var2422, $r11=var3865, java.lang.Throwable=var3301, $r14=var3246}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorImpl;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: org.hibernate.boot.registry.selector.internal.LazyServiceResolver;	$r3 = r0.<org.hibernate.boot.registry.selector.internal.StrategySelectorImpl: java.util.Map lazyStrategyImplementorByStrategyMap>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	r5 = (org.hibernate.boot.registry.selector.internal.LazyServiceResolver) $r4;	if r5 == null goto return;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected a second LazyServiceResolver replacing an existing LazyServiceResolver implementation for strategy ");	$r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2