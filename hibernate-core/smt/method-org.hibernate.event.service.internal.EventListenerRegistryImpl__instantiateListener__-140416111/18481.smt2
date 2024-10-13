(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var944 0)
(declare-sort var1804 0)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1804-init () var1804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1388571875 (var1804 String var3159) void)
(declare-fun cast-from-var944-to-var3159 (var944) var3159)
(declare-fun cast-from-var1804-to-var3159 (var1804) var3159)
(declare-const null-var3087 var3087)
(declare-const null-ClassObject ClassObject)
(declare-const null-var944 var944)
(declare-const var3030 var3087) ; Statement: r9 := @this: org.hibernate.event.service.internal.EventListenerRegistryImpl 
(assert (not (= var3030 null-var3087)))
(declare-const var3226 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3226 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1234 var944) ; Statement: $r2 := @caughtexception 
(assert (not (= var1234 null-var944)))
(define-const var3469 var1804 var1804-init) ; Statement: $r11 = new org.hibernate.event.service.spi.EventListenerRegistrationException 
(define-const var1821 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1821)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1821!1 String)
(assert (= var1821!1 ""))
(assert true)
(define-const var3835 String (append/672562846 var1821!1 "Unable to instantiate specified event listener class: ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified event listener class: ") 
(declare-const var1821!2 String)
(assert (= var1821!2 (str.++ var1821!1 "Unable to instantiate specified event listener class: ")))
(assert true)
(define-const var3195 String (getName/-1958580599 var3226)) ; Statement: $r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1306 String (append/672562846 var3835 var3195)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3835!1 String)
(assert (= var3835!1 (str.++ var3835 var3195)))
(assert true)
(define-const var127 String (toString/-2075883882 var1306)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1388571875 var3469 var127 (cast-from-var944-to-var3159 var1234))) ; Statement: specialinvoke $r11.<org.hibernate.event.service.spi.EventListenerRegistrationException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var3469!1 var1804)
(declare-const var127!1 String)
(declare-const var1234!1 var944)
(define-const var2422 var3159 (cast-from-var1804-to-var3159 var3469!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1804-init=([], org.hibernate.event.service.spi.EventListenerRegistrationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1388571875=([org.hibernate.event.service.spi.EventListenerRegistrationException, java.lang.String, java.lang.Throwable], void), cast-from-var944-to-var3159=([java.lang.Exception], java.lang.Throwable), cast-from-var1804-to-var3159=([org.hibernate.event.service.spi.EventListenerRegistrationException], java.lang.Throwable)}
; {var3087=org.hibernate.event.service.internal.EventListenerRegistryImpl, var3030=r9, var3226=r0, var944=java.lang.Exception, var1234=$r2, var1804=org.hibernate.event.service.spi.EventListenerRegistrationException, var3469=$r11, var1821=$r10, var3835=$r6, var3195=$r5, var1306=$r7, var127=$r8, var3159=java.lang.Throwable, var2422=$r12}
; {org.hibernate.event.service.internal.EventListenerRegistryImpl=var3087, r9=var3030, r0=var3226, java.lang.Exception=var944, $r2=var1234, org.hibernate.event.service.spi.EventListenerRegistrationException=var1804, $r11=var3469, $r10=var1821, $r6=var3835, $r5=var3195, $r7=var1306, $r8=var127, java.lang.Throwable=var3159, $r12=var2422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.event.service.internal.EventListenerRegistryImpl;	r0 := @parameter0: java.lang.Class;	$r2 := @caughtexception;	$r11 = new org.hibernate.event.service.spi.EventListenerRegistrationException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified event listener class: ");	$r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.event.service.spi.EventListenerRegistrationException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2