(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var1699 0)
(declare-sort var1789 0)
(declare-sort var267 0)
(declare-sort var705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eventListeners/105823629 (var2517) (Array Int var1789))
(declare-fun getLength-Arr-var1789-1 ((Array Int var1789)) Int)
(declare-fun ordinal/-1768691297 (var1699) Int)
(declare-fun var267-init () var267)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun eventName/-1498627823 (var1699) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var267 String) void)
(declare-fun cast-from-var267-to-var705 (var267) var705)
(declare-const null-var2517 var2517)
(declare-const null-var1699 var1699)
(declare-const var1541 var2517) ; Statement: r0 := @this: org.hibernate.event.service.internal.EventListenerRegistryImpl 
(assert (not (= var1541 null-var2517)))
(declare-const var2319 var1699) ; Statement: r2 := @parameter0: org.hibernate.event.spi.EventType 
(assert (not (= var2319 null-var1699)))
(define-const var616 (Array Int var1789) (eventListeners/105823629 var1541)) ; Statement: $r1 = r0.<org.hibernate.event.service.internal.EventListenerRegistryImpl: org.hibernate.event.service.spi.EventListenerGroup[] eventListeners> 
(define-const var1451 Int (getLength-Arr-var1789-1 var616)) ; Statement: $i2 = lengthof $r1 
(assert true)
(define-const var2575 Int (ordinal/-1768691297 var2319)) ; Statement: $i0 = virtualinvoke r2.<org.hibernate.event.spi.EventType: int ordinal()>() 
(define-const var199 Int (+ var2575 1)) ; Statement: $i1 = $i0 + 1 
 ; Statement: if $i2 >= $i1 goto $r3 = r0.<org.hibernate.event.service.internal.EventListenerRegistryImpl: org.hibernate.event.service.spi.EventListenerGroup[] eventListeners> 
(assert (not (>= var1451 var199))) ; Negate: Cond: $i2 >= $i1  
(define-const var2303 var267 var267-init) ; Statement: $r20 = new org.hibernate.HibernateException 
(define-const var1899 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1899)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1899!1 String)
(assert (= var1899!1 ""))
(assert true)
(define-const var3881 String (append/672562846 var1899!1 "Unable to find listeners for type [")) ; Statement: $r15 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find listeners for type [") 
(declare-const var1899!2 String)
(assert (= var1899!2 (str.++ var1899!1 "Unable to find listeners for type [")))
(assert true)
(define-const var2005 String (eventName/-1498627823 var2319)) ; Statement: $r14 = virtualinvoke r2.<org.hibernate.event.spi.EventType: java.lang.String eventName()>() 
(assert true)
(define-const var2710 String (append/672562846 var3881 var2005)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3881!1 String)
(assert (= var3881!1 (str.++ var3881 var2005)))
(assert true)
(define-const var359 String (append/672562846 var2710 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2710!1 String)
(assert (= var2710!1 (str.++ var2710 "]")))
(assert true)
(define-const var2592 String (toString/-2075883882 var359)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2303 var2592)) ; Statement: specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18) 

(declare-const var2303!1 var267)
(declare-const var2592!1 String)
(define-const var3842 var705 (cast-from-var267-to-var705 var2303!1)) ; Statement: $r23 = (java.lang.Throwable) $r20 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {eventListeners/105823629=([org.hibernate.event.service.internal.EventListenerRegistryImpl], org.hibernate.event.service.spi.EventListenerGroup[]), getLength-Arr-var1789-1=([org.hibernate.event.service.spi.EventListenerGroup[]], int), ordinal/-1768691297=([org.hibernate.event.spi.EventType], int), var267-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), eventName/-1498627823=([org.hibernate.event.spi.EventType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var267-to-var705=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2517=org.hibernate.event.service.internal.EventListenerRegistryImpl, var1541=r0, var1699=org.hibernate.event.spi.EventType, var2319=r2, var1789=org.hibernate.event.service.spi.EventListenerGroup, var616=$r1, var1451=$i2, var2575=$i0, var199=$i1, var267=org.hibernate.HibernateException, var2303=$r20, var1899=$r19, var3881=$r15, var2005=$r14, var2710=$r16, var359=$r17, var2592=$r18, var705=java.lang.Throwable, var3842=$r23}
; {org.hibernate.event.service.internal.EventListenerRegistryImpl=var2517, r0=var1541, org.hibernate.event.spi.EventType=var1699, r2=var2319, org.hibernate.event.service.spi.EventListenerGroup=var1789, $r1=var616, $i2=var1451, $i0=var2575, $i1=var199, org.hibernate.HibernateException=var267, $r20=var2303, $r19=var1899, $r15=var3881, $r14=var2005, $r16=var2710, $r17=var359, $r18=var2592, java.lang.Throwable=var705, $r23=var3842}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.service.internal.EventListenerRegistryImpl;	r2 := @parameter0: org.hibernate.event.spi.EventType;	$r1 = r0.<org.hibernate.event.service.internal.EventListenerRegistryImpl: org.hibernate.event.service.spi.EventListenerGroup[] eventListeners>;	$i2 = lengthof $r1;	$i0 = virtualinvoke r2.<org.hibernate.event.spi.EventType: int ordinal()>();	$i1 = $i0 + 1;	if $i2 >= $i1 goto $r3 = r0.<org.hibernate.event.service.internal.EventListenerRegistryImpl: org.hibernate.event.service.spi.EventListenerGroup[] eventListeners>;	$r20 = new org.hibernate.HibernateException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find listeners for type [");	$r14 = virtualinvoke r2.<org.hibernate.event.spi.EventType: java.lang.String eventName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18);	$r23 = (java.lang.Throwable) $r20;	throw $r23
;block_num 2