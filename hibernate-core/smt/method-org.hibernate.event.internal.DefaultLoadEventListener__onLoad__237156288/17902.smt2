(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3235 0)
(declare-sort var1532 0)
(declare-sort var521 0)
(declare-sort var3310 0)
(declare-sort var3583 0)
(declare-sort var1180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPersister/-1979701630 (var3235 var1532) var3310)
(declare-fun var3583-init () var3583)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityClassName/-2042238406 (var1532) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3583 String) void)
(declare-fun cast-from-var3583-to-var1180 (var3583) var1180)
(declare-const null-var3235 var3235)
(declare-const null-var1532 var1532)
(declare-const null-var521 var521)
(declare-const null-var3310 var3310)
(declare-const var1399 var3235) ; Statement: r0 := @this: org.hibernate.event.internal.DefaultLoadEventListener 
(assert (not (= var1399 null-var3235)))
(declare-const var2096 var1532) ; Statement: r1 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var2096 null-var1532)))
(declare-const var451 var521) ; Statement: r5 := @parameter1: org.hibernate.event.spi.LoadEventListener$LoadType 
(assert (not (= var451 null-var521)))
(assert true)
(define-const var97 var3310 (getPersister/-1979701630 var1399 var2096)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.event.internal.DefaultLoadEventListener: org.hibernate.persister.entity.EntityPersister getPersister(org.hibernate.event.spi.LoadEvent)>(r1) 
 ; Statement: if r2 != null goto $r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(assert (not (not (= var97 null-var3310)))) ; Negate: Cond: r2 != null  
(define-const var3115 var3583 var3583-init) ; Statement: $r16 = new org.hibernate.HibernateException 
(define-const var2985 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2985)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2985!1 String)
(assert (= var2985!1 ""))
(assert true)
(define-const var417 String (append/672562846 var2985!1 "Unable to locate persister: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ") 
(declare-const var2985!2 String)
(assert (= var2985!2 (str.++ var2985!1 "Unable to locate persister: ")))
(assert true)
(define-const var1774 String (getEntityClassName/-2042238406 var2096)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.event.spi.LoadEvent: java.lang.String getEntityClassName()>() 
(assert true)
(define-const var715 String (append/672562846 var417 var1774)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var417!1 String)
(assert (= var417!1 (str.++ var417 var1774)))
(assert true)
(define-const var3611 String (toString/-2075883882 var715)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3115 var3611)) ; Statement: specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14) 

(declare-const var3115!1 var3583)
(declare-const var3611!1 String)
(define-const var964 var1180 (cast-from-var3583-to-var1180 var3115!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getPersister/-1979701630=([org.hibernate.event.internal.DefaultLoadEventListener, org.hibernate.event.spi.LoadEvent], org.hibernate.persister.entity.EntityPersister), var3583-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityClassName/-2042238406=([org.hibernate.event.spi.LoadEvent], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3583-to-var1180=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3235=org.hibernate.event.internal.DefaultLoadEventListener, var1399=r0, var1532=org.hibernate.event.spi.LoadEvent, var2096=r1, var521=org.hibernate.event.spi.LoadEventListener$LoadType, var451=r5, var3310=org.hibernate.persister.entity.EntityPersister, var97=r2, var3583=org.hibernate.HibernateException, var3115=$r16, var2985=$r15, var417=$r12, var1774=$r11, var715=$r13, var3611=$r14, var1180=java.lang.Throwable, var964=$r17}
; {org.hibernate.event.internal.DefaultLoadEventListener=var3235, r0=var1399, org.hibernate.event.spi.LoadEvent=var1532, r1=var2096, org.hibernate.event.spi.LoadEventListener$LoadType=var521, r5=var451, org.hibernate.persister.entity.EntityPersister=var3310, r2=var97, org.hibernate.HibernateException=var3583, $r16=var3115, $r15=var2985, $r12=var417, $r11=var1774, $r13=var715, $r14=var3611, java.lang.Throwable=var1180, $r17=var964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.internal.DefaultLoadEventListener;	r1 := @parameter0: org.hibernate.event.spi.LoadEvent;	r5 := @parameter1: org.hibernate.event.spi.LoadEventListener$LoadType;	r2 = virtualinvoke r0.<org.hibernate.event.internal.DefaultLoadEventListener: org.hibernate.persister.entity.EntityPersister getPersister(org.hibernate.event.spi.LoadEvent)>(r1);	if r2 != null goto $r3 = interfaceinvoke r2.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ");	$r11 = virtualinvoke r1.<org.hibernate.event.spi.LoadEvent: java.lang.String getEntityClassName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2