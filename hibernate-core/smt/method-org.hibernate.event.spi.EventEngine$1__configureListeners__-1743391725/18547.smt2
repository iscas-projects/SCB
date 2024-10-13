(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort var608 0)
(declare-sort var2129 0)
(declare-sort var798 0)
(declare-sort var3199 0)
(declare-sort var3959 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$eventTypes/-1773903443 (var3588) var798)
(declare-fun var798_containsValue/-75917476 (var798 var3199) Bool)
(declare-fun cast-from-var608-to-var3199 (var608) var3199)
(declare-fun var3959-init () var3959)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3199) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3959 String) void)
(declare-fun cast-from-var3959-to-var150 (var3959) var150)
(declare-const null-var3588 var3588)
(declare-const null-var608 var608)
(declare-const null-var2129 var2129)
(declare-const var746 var3588) ; Statement: r0 := @this: org.hibernate.event.spi.EventEngine$1 
(assert (not (= var746 null-var3588)))
(declare-const var1967 var608) ; Statement: r1 := @parameter0: org.hibernate.event.spi.EventType 
(assert (not (= var1967 null-var608)))
(declare-const var3259 var2129) ; Statement: r3 := @parameter1: java.util.function.Consumer 
(assert (not (= var3259 null-var2129)))
(define-const var2382 var798 (val$eventTypes/-1773903443 var746)) ; Statement: $r2 = r0.<org.hibernate.event.spi.EventEngine$1: java.util.Map val$eventTypes> 
(define-const var1363 Bool (var798_containsValue/-75917476 var2382 (cast-from-var608-to-var3199 var1967))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsValue(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder> 
(assert (not (not (= (ite var1363 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var915 var3959 var3959-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var832 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var832)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var832!1 String)
(assert (= var832!1 ""))
(assert true)
(define-const var235 String (append/672562846 var832!1 "EventType [")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EventType [") 
(declare-const var832!2 String)
(assert (= var832!2 (str.++ var832!1 "EventType [")))
(assert true)
(define-const var3772 String (append/-1031950772 var235 (cast-from-var608-to-var3199 var1967))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var235!1 String)
(assert (str.prefixof var235 var235!1))
(assert true)
(define-const var2202 String (append/672562846 var3772 "] not registered")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not registered") 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 "] not registered")))
(assert true)
(define-const var327 String (toString/-2075883882 var2202)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var915 var327)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var915!1 var3959)
(declare-const var327!1 String)
(define-const var3442 var150 (cast-from-var3959-to-var150 var915!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {val$eventTypes/-1773903443=([org.hibernate.event.spi.EventEngine$1], java.util.Map), var798_containsValue/-75917476=([java.util.Map, java.lang.Object], boolean), cast-from-var608-to-var3199=([org.hibernate.event.spi.EventType], java.lang.Object), var3959-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3959-to-var150=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3588=org.hibernate.event.spi.EventEngine$1, var746=r0, var608=org.hibernate.event.spi.EventType, var1967=r1, var2129=java.util.function.Consumer, var3259=r3, var798=java.util.Map, var2382=$r2, var3199=java.lang.Object, var1363=$z0, var3959=org.hibernate.HibernateException, var915=$r13, var832=$r12, var235=$r8, var3772=$r9, var2202=$r10, var327=$r11, var150=java.lang.Throwable, var3442=$r14}
; {org.hibernate.event.spi.EventEngine$1=var3588, r0=var746, org.hibernate.event.spi.EventType=var608, r1=var1967, java.util.function.Consumer=var2129, r3=var3259, java.util.Map=var798, $r2=var2382, java.lang.Object=var3199, $z0=var1363, org.hibernate.HibernateException=var3959, $r13=var915, $r12=var832, $r8=var235, $r9=var3772, $r10=var2202, $r11=var327, java.lang.Throwable=var150, $r14=var3442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.spi.EventEngine$1;	r1 := @parameter0: org.hibernate.event.spi.EventType;	r3 := @parameter1: java.util.function.Consumer;	$r2 = r0.<org.hibernate.event.spi.EventEngine$1: java.util.Map val$eventTypes>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsValue(java.lang.Object)>(r1);	if $z0 != 0 goto $r4 = r0.<org.hibernate.event.spi.EventEngine$1: org.hibernate.event.service.internal.EventListenerRegistryImpl$Builder val$listenerRegistryBuilder>;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EventType [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not registered");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2