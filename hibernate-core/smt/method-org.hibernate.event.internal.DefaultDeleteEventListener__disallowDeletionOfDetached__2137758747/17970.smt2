(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort var1035 0)
(declare-sort var1018 0)
(declare-sort var1497 0)
(declare-sort var1950 0)
(declare-sort var3334 0)
(declare-sort var2290 0)
(declare-sort var3710 0)
(declare-sort var3006 0)
(declare-sort var2278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSession/-1960258000 (var1497) var1018)
(declare-fun cast-from-var1035-to-var1497 (var1035) var1497)
(declare-fun getEntityName/1055773911 (var1035) String)
(declare-fun getObject/-1956963176 (var1035) var1950)
(declare-fun var2290_getEntityPersister/-556085740 (var2290 String var1950) var3334)
(declare-fun cast-from-var1018-to-var2290 (var1018) var2290)
(declare-fun var3334_getIdentifier/1578938541 (var3334 var1950 var2290) var3710)
(declare-fun var2278-init () var2278)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1950) String)
(declare-fun cast-from-var3710-to-var1950 (var3710) var1950)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2278 String) void)
(declare-const null-var2888 var2888)
(declare-const null-var1035 var1035)
(declare-const null-String String)
(declare-const var1355 var2888) ; Statement: r14 := @this: org.hibernate.event.internal.DefaultDeleteEventListener 
(assert (not (= var1355 null-var2888)))
(declare-const var2993 var1035) ; Statement: r0 := @parameter0: org.hibernate.event.spi.DeleteEvent 
(assert (not (= var2993 null-var1035)))
(assert true)
(define-const var2143 var1018 (getSession/-1960258000 (cast-from-var1035-to-var1497 var2993))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: org.hibernate.event.spi.EventSource getSession()>() 
(assert true)
(define-const var1713 String (getEntityName/1055773911 var2993)) ; Statement: r15 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.String getEntityName()>() 
(assert true)
(define-const var44 var1950 (getObject/-1956963176 var2993)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>() 
(define-const var450 var3334 (var2290_getEntityPersister/-556085740 (cast-from-var1018-to-var2290 var2143) var1713 var44)) ; Statement: r3 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r15, $r2) 
(assert true)
(define-const var1680 var1950 (getObject/-1956963176 var2993)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>() 
(define-const var2352 var3710 (var3334_getIdentifier/1578938541 var450 var1680 (cast-from-var1018-to-var2290 var2143))) ; Statement: r5 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r4, r1) 
 ; Statement: if r15 != null goto $r16 = r15 
(assert (not (= var1713 null-String))) ; Cond: r15 != null 
(define-const var1243 String var1713) ; Statement: $r16 = r15 
(assert true) ; Non Conditional
(define-const var3883 var2278 var2278-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1258 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1258)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1258!1 String)
(assert (= var1258!1 ""))
(assert true)
(define-const var603 String (append/672562846 var1258!1 "Removing a detached instance ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removing a detached instance ") 
(declare-const var1258!2 String)
(assert (= var1258!2 (str.++ var1258!1 "Removing a detached instance ")))
(assert true)
(define-const var1823 String (append/672562846 var603 var1243)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var603!1 String)
(assert (= var603!1 (str.++ var603 var1243)))
(assert true)
(define-const var2157 String (append/672562846 var1823 "#")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1823!1 String)
(assert (= var1823!1 (str.++ var1823 "#")))
(assert true)
(define-const var608 String (append/-1031950772 var2157 (cast-from-var3710-to-var1950 var2352))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2157!1 String)
(assert (str.prefixof var2157 var2157!1))
(assert true)
(define-const var393 String (toString/-2075883882 var608)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3883 var393)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var3883!1 var2278)
(declare-const var393!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSession/-1960258000=([org.hibernate.event.spi.AbstractEvent], org.hibernate.event.spi.EventSource), cast-from-var1035-to-var1497=([org.hibernate.event.spi.DeleteEvent], org.hibernate.event.spi.AbstractEvent), getEntityName/1055773911=([org.hibernate.event.spi.DeleteEvent], java.lang.String), getObject/-1956963176=([org.hibernate.event.spi.DeleteEvent], java.lang.Object), var2290_getEntityPersister/-556085740=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.String, java.lang.Object], org.hibernate.persister.entity.EntityPersister), cast-from-var1018-to-var2290=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.SharedSessionContractImplementor), var3334_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable), var2278-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3710-to-var1950=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2888=org.hibernate.event.internal.DefaultDeleteEventListener, var1355=r14, var1035=org.hibernate.event.spi.DeleteEvent, var2993=r0, var1018=org.hibernate.event.spi.EventSource, var1497=org.hibernate.event.spi.AbstractEvent, var2143=r1, var1713=r15, var1950=java.lang.Object, var44=$r2, var3334=org.hibernate.persister.entity.EntityPersister, var2290=org.hibernate.engine.spi.SharedSessionContractImplementor, var450=r3, var1680=$r4, var3710=java.io.Serializable, var2352=r5, var3006=null_type, var1243=$r16, var2278=java.lang.IllegalArgumentException, var3883=$r6, var1258=$r7, var603=$r8, var1823=$r9, var2157=$r10, var608=$r11, var393=$r12}
; {org.hibernate.event.internal.DefaultDeleteEventListener=var2888, r14=var1355, org.hibernate.event.spi.DeleteEvent=var1035, r0=var2993, org.hibernate.event.spi.EventSource=var1018, org.hibernate.event.spi.AbstractEvent=var1497, r1=var2143, r15=var1713, java.lang.Object=var1950, $r2=var44, org.hibernate.persister.entity.EntityPersister=var3334, org.hibernate.engine.spi.SharedSessionContractImplementor=var2290, r3=var450, $r4=var1680, java.io.Serializable=var3710, r5=var2352, null_type=var3006, $r16=var1243, java.lang.IllegalArgumentException=var2278, $r6=var3883, $r7=var1258, $r8=var603, $r9=var1823, $r10=var2157, $r11=var608, $r12=var393}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.hibernate.event.internal.DefaultDeleteEventListener;	r0 := @parameter0: org.hibernate.event.spi.DeleteEvent;	r1 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: org.hibernate.event.spi.EventSource getSession()>();	r15 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.String getEntityName()>();	$r2 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>();	r3 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r15, $r2);	$r4 = virtualinvoke r0.<org.hibernate.event.spi.DeleteEvent: java.lang.Object getObject()>();	r5 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r4, r1);	if r15 != null goto $r16 = r15;	$r16 = r15;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removing a detached instance ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r6
;block_num 3