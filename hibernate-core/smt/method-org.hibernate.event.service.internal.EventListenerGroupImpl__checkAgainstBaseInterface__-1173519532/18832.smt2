(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1516 0)
(declare-sort var1482 0)
(declare-sort var1940 0)
(declare-sort var1678 0)
(declare-sort var3633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eventType/803848623 (var1516) var1940)
(declare-fun baseListenerInterface/-372647481 (var1940) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1482) Bool)
(declare-fun var1678-init () var1678)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-554232541 (var1678 String) void)
(declare-fun cast-from-var1678-to-var3633 (var1678) var3633)
(declare-const null-var1516 var1516)
(declare-const null-var1482 var1482)
(declare-const var430 var1516) ; Statement: r0 := @this: org.hibernate.event.service.internal.EventListenerGroupImpl 
(assert (not (= var430 null-var1516)))
(declare-const var702 var1482) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var702 null-var1482)))
(define-const var3696 var1940 (eventType/803848623 var430)) ; Statement: $r1 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType> 
(assert true)
(define-const var1978 ClassObject (baseListenerInterface/-372647481 var3696)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>() 
(assert true)
(define-const var2294 Bool (isInstance/451912363 var1978 var702)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2294 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1639 var1678 var1678-init) ; Statement: $r14 = new org.hibernate.event.service.spi.EventListenerRegistrationException 
(define-const var711 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var711)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var711!1 String)
(assert (= var711!1 ""))
(assert true)
(define-const var1691 String (append/672562846 var711!1 "Listener did not implement expected interface [")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Listener did not implement expected interface [") 
(declare-const var711!2 String)
(assert (= var711!2 (str.++ var711!1 "Listener did not implement expected interface [")))
(define-const var1271 var1940 (eventType/803848623 var430)) ; Statement: $r6 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType> 
(assert true)
(define-const var1843 ClassObject (baseListenerInterface/-372647481 var1271)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>() 
(assert true)
(define-const var3339 String (getName/-1958580599 var1843)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2366 String (append/672562846 var1691 var3339)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1691!1 String)
(assert (= var1691!1 (str.++ var1691 var3339)))
(assert true)
(define-const var51 String (append/672562846 var2366 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2366!1 String)
(assert (= var2366!1 (str.++ var2366 "]")))
(assert true)
(define-const var1607 String (toString/-2075883882 var51)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-554232541 var1639 var1607)) ; Statement: specialinvoke $r14.<org.hibernate.event.service.spi.EventListenerRegistrationException: void <init>(java.lang.String)>($r12) 

(declare-const var1639!1 var1678)
(declare-const var1607!1 String)
(define-const var2688 var3633 (cast-from-var1678-to-var3633 var1639!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {eventType/803848623=([org.hibernate.event.service.internal.EventListenerGroupImpl], org.hibernate.event.spi.EventType), baseListenerInterface/-372647481=([org.hibernate.event.spi.EventType], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var1678-init=([], org.hibernate.event.service.spi.EventListenerRegistrationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-554232541=([org.hibernate.event.service.spi.EventListenerRegistrationException, java.lang.String], void), cast-from-var1678-to-var3633=([org.hibernate.event.service.spi.EventListenerRegistrationException], java.lang.Throwable)}
; {var1516=org.hibernate.event.service.internal.EventListenerGroupImpl, var430=r0, var1482=java.lang.Object, var702=r2, var1940=org.hibernate.event.spi.EventType, var3696=$r1, var1978=$r3, var2294=$z0, var1678=org.hibernate.event.service.spi.EventListenerRegistrationException, var1639=$r14, var711=$r13, var1691=$r9, var1271=$r6, var1843=$r7, var3339=$r8, var2366=$r10, var51=$r11, var1607=$r12, var3633=java.lang.Throwable, var2688=$r15}
; {org.hibernate.event.service.internal.EventListenerGroupImpl=var1516, r0=var430, java.lang.Object=var1482, r2=var702, org.hibernate.event.spi.EventType=var1940, $r1=var3696, $r3=var1978, $z0=var2294, org.hibernate.event.service.spi.EventListenerRegistrationException=var1678, $r14=var1639, $r13=var711, $r9=var1691, $r6=var1271, $r7=var1843, $r8=var3339, $r10=var2366, $r11=var51, $r12=var1607, java.lang.Throwable=var3633, $r15=var2688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.service.internal.EventListenerGroupImpl;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType>;	$r3 = virtualinvoke $r1.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>();	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isInstance(java.lang.Object)>(r2);	if $z0 != 0 goto return;	$r14 = new org.hibernate.event.service.spi.EventListenerRegistrationException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Listener did not implement expected interface [");	$r6 = r0.<org.hibernate.event.service.internal.EventListenerGroupImpl: org.hibernate.event.spi.EventType eventType>;	$r7 = virtualinvoke $r6.<org.hibernate.event.spi.EventType: java.lang.Class baseListenerInterface()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.event.service.spi.EventListenerRegistrationException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2