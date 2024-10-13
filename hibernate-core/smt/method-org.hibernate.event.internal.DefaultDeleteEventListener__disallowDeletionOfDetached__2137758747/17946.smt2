(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var196 0)
(declare-sort var982 0)
(declare-sort var1609 0)
(declare-sort var2851 0)
(declare-sort var1743 0)
(declare-sort var1442 0)
(declare-sort var211 0)
(declare-sort var2101 0)
(declare-sort var1974 0)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSession/-1960258000 (var2851) var1609)
(declare-fun cast-from-var982-to-var2851 (var982) var2851)
(declare-fun getEntityName/1055773911 (var982) String)
(declare-fun getObject/-1956963176 (var982) var1743)
(declare-fun var211_getEntityPersister/-556085740 (var211 String var1743) var1442)
(declare-fun cast-from-var1609-to-var211 (var1609) var211)
(declare-fun var1442_getIdentifier/1578938541 (var1442 var1743 var211) var2101)
(declare-fun var211_guessEntityName/-1435640879 (var211 var1743) String)
(declare-fun var2929-init () var2929)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1743) String)
(declare-fun cast-from-var2101-to-var1743 (var2101) var1743)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2929 String) void)
(declare-const null-var196 var196)
(declare-const null-var982 var982)
(declare-const null-String String)
(declare-const var3472 var196) ; Statement: r14 := @this: org.hibernate.event.internal.DefaultDeleteEventListener 
(assert (not (= var3472 null-var196)))
(declare-const var0 var982) ; Statement: r0 := @parameter0: org.hibernate.event.spi.DeleteEvent 
(assert (not (= var0 null-var982)))
(assert true)
(define-const var535 var1609 (getSession/-1960258000 (cast-from-var982-to-var2851 var0))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: org.hibernate.event.spi.EventSource getSession()>() 
(assert true)
(define-const var1938 String (getEntityName/1055773911 var0)) ; Statement: r15 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.String getEntityName()>() 
(assert true)
(define-const var2665 var1743 (getObject/-1956963176 var0)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>() 
(define-const var707 var1442 (var211_getEntityPersister/-556085740 (cast-from-var1609-to-var211 var535) var1938 var2665)) ; Statement: r3 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r15, $r2) 
(assert true)
(define-const var3959 var1743 (getObject/-1956963176 var0)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>() 
(define-const var1521 var2101 (var1442_getIdentifier/1578938541 var707 var3959 (cast-from-var1609-to-var211 var535))) ; Statement: r5 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r4, r1) 
 ; Statement: if r15 != null goto $r16 = r15 
(assert (not (not (= var1938 null-String)))) ; Negate: Cond: r15 != null  
(assert true)
(define-const var3339 var1743 (getObject/-1956963176 var0)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>() 
(define-const var3580 String (var211_guessEntityName/-1435640879 (cast-from-var1609-to-var211 var535) var3339)) ; Statement: $r16 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: java.lang.String guessEntityName(java.lang.Object)>($r13) 
 ; Statement: goto [?= $r6 = new java.lang.IllegalArgumentException] 
(assert true) ; Non Conditional
(define-const var1329 var2929 var2929-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1781 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1781)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1781!1 String)
(assert (= var1781!1 ""))
(assert true)
(define-const var244 String (append/672562846 var1781!1 "Removing a detached instance ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removing a detached instance ") 
(declare-const var1781!2 String)
(assert (= var1781!2 (str.++ var1781!1 "Removing a detached instance ")))
(assert true)
(define-const var2513 String (append/672562846 var244 var3580)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var244!1 String)
(assert (= var244!1 (str.++ var244 var3580)))
(assert true)
(define-const var118 String (append/672562846 var2513 "#")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2513!1 String)
(assert (= var2513!1 (str.++ var2513 "#")))
(assert true)
(define-const var2616 String (append/-1031950772 var118 (cast-from-var2101-to-var1743 var1521))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var118!1 String)
(assert (str.prefixof var118 var118!1))
(assert true)
(define-const var971 String (toString/-2075883882 var2616)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1329 var971)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1329!1 var2929)
(declare-const var971!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSession/-1960258000=([org.hibernate.event.spi.AbstractEvent], org.hibernate.event.spi.EventSource), cast-from-var982-to-var2851=([org.hibernate.event.spi.DeleteEvent], org.hibernate.event.spi.AbstractEvent), getEntityName/1055773911=([org.hibernate.event.spi.DeleteEvent], java.lang.String), getObject/-1956963176=([org.hibernate.event.spi.DeleteEvent], java.lang.Object), var211_getEntityPersister/-556085740=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.String, java.lang.Object], org.hibernate.persister.entity.EntityPersister), cast-from-var1609-to-var211=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.SharedSessionContractImplementor), var1442_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable), var211_guessEntityName/-1435640879=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.String), var2929-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2101-to-var1743=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var196=org.hibernate.event.internal.DefaultDeleteEventListener, var3472=r14, var982=org.hibernate.event.spi.DeleteEvent, var0=r0, var1609=org.hibernate.event.spi.EventSource, var2851=org.hibernate.event.spi.AbstractEvent, var535=r1, var1938=r15, var1743=java.lang.Object, var2665=$r2, var1442=org.hibernate.persister.entity.EntityPersister, var211=org.hibernate.engine.spi.SharedSessionContractImplementor, var707=r3, var3959=$r4, var2101=java.io.Serializable, var1521=r5, var1974=null_type, var3339=$r13, var3580=$r16, var2929=java.lang.IllegalArgumentException, var1329=$r6, var1781=$r7, var244=$r8, var2513=$r9, var118=$r10, var2616=$r11, var971=$r12}
; {org.hibernate.event.internal.DefaultDeleteEventListener=var196, r14=var3472, org.hibernate.event.spi.DeleteEvent=var982, r0=var0, org.hibernate.event.spi.EventSource=var1609, org.hibernate.event.spi.AbstractEvent=var2851, r1=var535, r15=var1938, java.lang.Object=var1743, $r2=var2665, org.hibernate.persister.entity.EntityPersister=var1442, org.hibernate.engine.spi.SharedSessionContractImplementor=var211, r3=var707, $r4=var3959, java.io.Serializable=var2101, r5=var1521, null_type=var1974, $r13=var3339, $r16=var3580, java.lang.IllegalArgumentException=var2929, $r6=var1329, $r7=var1781, $r8=var244, $r9=var2513, $r10=var118, $r11=var2616, $r12=var971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.hibernate.event.internal.DefaultDeleteEventListener;	r0 := @parameter0: org.hibernate.event.spi.DeleteEvent;	r1 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: org.hibernate.event.spi.EventSource getSession()>();	r15 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.String getEntityName()>();	$r2 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>();	r3 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r15, $r2);	$r4 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>();	r5 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r4, r1);	if r15 != null goto $r16 = r15;	$r13 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>();	$r16 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: java.lang.String guessEntityName(java.lang.Object)>($r13);	goto [?= $r6 = new java.lang.IllegalArgumentException];	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removing a detached instance ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r6
;block_num 3