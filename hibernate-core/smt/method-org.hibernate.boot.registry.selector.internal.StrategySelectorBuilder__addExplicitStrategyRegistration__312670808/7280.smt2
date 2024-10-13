(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var628 0)
(declare-sort var3756 0)
(declare-sort var3984 0)
(declare-sort var639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3756_getStrategyRole/993667556 (var3756) ClassObject)
(declare-fun isInterface/-352192428 (ClassObject) Bool)
(declare-fun var3756_getStrategyImplementation/-161686296 (var3756) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3984-init () var3984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1153294886 (var3984 String) void)
(declare-fun cast-from-var3984-to-var639 (var3984) var639)
(declare-const null-var628 var628)
(declare-const null-var3756 var3756)
(declare-const var3690 var628) ; Statement: r4 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder 
(assert (not (= var3690 null-var628)))
(declare-const var2198 var3756) ; Statement: r0 := @parameter0: org.hibernate.boot.registry.selector.StrategyRegistration 
(assert (not (= var2198 null-var3756)))
(define-const var2063 ClassObject (var3756_getStrategyRole/993667556 var2198)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(assert true)
(define-const var3787 Bool (isInterface/-352192428 var2063)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInterface()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(assert (not (= (ite var3787 1 0) 0))) ; Cond: $z0 != 0 
(define-const var588 ClassObject (var3756_getStrategyRole/993667556 var2198)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(define-const var2607 ClassObject (var3756_getStrategyImplementation/-161686296 var2198)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>() 
(assert true)
(define-const var2624 Bool (isAssignableFrom/-1028998700 var588 var2607)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2) 
 ; Statement: if $z1 != 0 goto $r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations> 
(assert (not (not (= (ite var2624 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3138 var3984 var3984-init) ; Statement: $r27 = new org.hibernate.boot.registry.selector.spi.StrategySelectionException 
(define-const var3114 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3114)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3114!1 String)
(assert (= var3114!1 ""))
(assert true)
(define-const var917 String (append/672562846 var3114!1 "Implementation class [")) ; Statement: $r10 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Implementation class [") 
(declare-const var3114!2 String)
(assert (= var3114!2 (str.++ var3114!1 "Implementation class [")))
(define-const var44 ClassObject (var3756_getStrategyImplementation/-161686296 var2198)) ; Statement: $r8 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>() 
(assert true)
(define-const var1617 String (getName/-1958580599 var44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var580 String (append/672562846 var917 var1617)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var917!1 String)
(assert (= var917!1 (str.++ var917 var1617)))
(assert true)
(define-const var417 String (append/672562846 var580 "] does not implement strategy interface [")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement strategy interface [") 
(declare-const var580!1 String)
(assert (= var580!1 (str.++ var580 "] does not implement strategy interface [")))
(define-const var2158 ClassObject (var3756_getStrategyRole/993667556 var2198)) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>() 
(assert true)
(define-const var2791 String (getName/-1958580599 var2158)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var724 String (append/672562846 var417 var2791)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var417!1 String)
(assert (= var417!1 (str.++ var417 var2791)))
(assert true)
(define-const var175 String (append/672562846 var724 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var724!1 String)
(assert (= var724!1 (str.++ var724 "]")))
(assert true)
(define-const var1244 String (toString/-2075883882 var175)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1153294886 var3138 var1244)) ; Statement: specialinvoke $r27.<org.hibernate.boot.registry.selector.spi.StrategySelectionException: void <init>(java.lang.String)>($r17) 

(declare-const var3138!1 var3984)
(declare-const var1244!1 String)
(define-const var964 var639 (cast-from-var3984-to-var639 var3138!1)) ; Statement: $r28 = (java.lang.Throwable) $r27 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var3756_getStrategyRole/993667556=([org.hibernate.boot.registry.selector.StrategyRegistration], java.lang.Class), isInterface/-352192428=([java.lang.Class], boolean), var3756_getStrategyImplementation/-161686296=([org.hibernate.boot.registry.selector.StrategyRegistration], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3984-init=([], org.hibernate.boot.registry.selector.spi.StrategySelectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1153294886=([org.hibernate.boot.registry.selector.spi.StrategySelectionException, java.lang.String], void), cast-from-var3984-to-var639=([org.hibernate.boot.registry.selector.spi.StrategySelectionException], java.lang.Throwable)}
; {var628=org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder, var3690=r4, var3756=org.hibernate.boot.registry.selector.StrategyRegistration, var2198=r0, var2063=$r1, var3787=$z0, var588=$r3, var2607=$r2, var2624=$z1, var3984=org.hibernate.boot.registry.selector.spi.StrategySelectionException, var3138=$r27, var3114=$r26, var917=$r10, var44=$r8, var1617=$r9, var580=$r11, var417=$r14, var2158=$r12, var2791=$r13, var724=$r15, var175=$r16, var1244=$r17, var639=java.lang.Throwable, var964=$r28}
; {org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder=var628, r4=var3690, org.hibernate.boot.registry.selector.StrategyRegistration=var3756, r0=var2198, $r1=var2063, $z0=var3787, $r3=var588, $r2=var2607, $z1=var2624, org.hibernate.boot.registry.selector.spi.StrategySelectionException=var3984, $r27=var3138, $r26=var3114, $r10=var917, $r8=var44, $r9=var1617, $r11=var580, $r14=var417, $r12=var2158, $r13=var2791, $r15=var724, $r16=var175, $r17=var1244, java.lang.Throwable=var639, $r28=var964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder;	r0 := @parameter0: org.hibernate.boot.registry.selector.StrategyRegistration;	$r1 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInterface()>();	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$r3 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$r2 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>();	$z1 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2);	if $z1 != 0 goto $r5 = r4.<org.hibernate.boot.registry.selector.internal.StrategySelectorBuilder: java.util.List explicitStrategyRegistrations>;	$r27 = new org.hibernate.boot.registry.selector.spi.StrategySelectionException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Implementation class [");	$r8 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyImplementation()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement strategy interface [");	$r12 = interfaceinvoke r0.<org.hibernate.boot.registry.selector.StrategyRegistration: java.lang.Class getStrategyRole()>();	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.boot.registry.selector.spi.StrategySelectionException: void <init>(java.lang.String)>($r17);	$r28 = (java.lang.Throwable) $r27;	throw $r28
;block_num 3