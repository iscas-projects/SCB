(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2645 0)
(declare-sort var2670 0)
(declare-sort var1760 0)
(declare-sort var1124 0)
(declare-sort var1042 0)
(declare-sort var2839 0)
(declare-sort var2160 0)
(declare-sort var1555 0)
(declare-sort var2792 0)
(declare-sort var3833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2670_getEntityMetamodel/-746850244 (var2670) var1042)
(declare-fun getIdentifierProperty/-579679365 (var1042) var2839)
(declare-fun isEmbedded/531795621 (var2839) Bool)
(declare-fun var2160-init () var2160)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2670_getEntityName/-1914780628 (var2670) String)
(declare-fun append/-1031950772 (String var1555) String)
(declare-fun cast-from-ClassObject-to-var1555 (ClassObject) var1555)
(declare-fun getEntityId/2070677004 (var1760) var2792)
(declare-fun getClass/1258963082 (var1555) ClassObject)
(declare-fun cast-from-var2792-to-var1555 (var2792) var1555)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/249801327 (var2160 String) void)
(declare-fun cast-from-var2160-to-var3833 (var2160) var3833)
(declare-const null-var2645 var2645)
(declare-const null-var2670 var2670)
(declare-const null-var1760 var1760)
(declare-const null-var1124 var1124)
(declare-const null-ClassObject ClassObject)
(declare-const var2516 var2645) ; Statement: r16 := @this: org.hibernate.event.internal.DefaultLoadEventListener 
(assert (not (= var2516 null-var2645)))
(declare-const var2543 var2670) ; Statement: r0 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2543 null-var2670)))
(declare-const var3880 var1760) ; Statement: r4 := @parameter1: org.hibernate.event.spi.LoadEvent 
(assert (not (= var3880 null-var1760)))
(declare-const var3696 var1124) ; Statement: r17 := @parameter2: org.hibernate.event.spi.LoadEventListener$LoadType 
(assert (not (= var3696 null-var1124)))
(declare-const var685 ClassObject) ; Statement: r3 := @parameter3: java.lang.Class 
(assert (not (= var685 null-ClassObject)))
(define-const var1695 var1042 (var2670_getEntityMetamodel/-746850244 var2543)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>() 
(assert true)
(define-const var613 var2839 (getIdentifierProperty/-579679365 var1695)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.IdentifierProperty getIdentifierProperty()>() 
(assert true)
(define-const var136 Bool (isEmbedded/531795621 var613)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.tuple.IdentifierProperty: boolean isEmbedded()>() 
 ; Statement: if $z0 == 0 goto $r34 = new org.hibernate.TypeMismatchException 
(assert (= (ite var136 1 0) 0)) ; Cond: $z0 == 0 
(define-const var861 var2160 var2160-init) ; Statement: $r34 = new org.hibernate.TypeMismatchException 
(define-const var3538 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3538)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3538!1 String)
(assert (= var3538!1 ""))
(assert true)
(define-const var1107 String (append/672562846 var3538!1 "Provided id of the wrong type for class ")) ; Statement: $r23 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Provided id of the wrong type for class ") 
(declare-const var3538!2 String)
(assert (= var3538!2 (str.++ var3538!1 "Provided id of the wrong type for class ")))
(define-const var3659 String (var2670_getEntityName/-1914780628 var2543)) ; Statement: $r24 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var3254 String (append/672562846 var1107 var3659)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1107!1 String)
(assert (= var1107!1 (str.++ var1107 var3659)))
(assert true)
(define-const var1834 String (append/672562846 var3254 ". Expected: ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expected: ") 
(declare-const var3254!1 String)
(assert (= var3254!1 (str.++ var3254 ". Expected: ")))
(assert true)
(define-const var2032 String (append/-1031950772 var1834 (cast-from-ClassObject-to-var1555 var685))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1834!1 String)
(assert (str.prefixof var1834 var1834!1))
(assert true)
(define-const var1802 String (append/672562846 var2032 ", got ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", got ") 
(declare-const var2032!1 String)
(assert (= var2032!1 (str.++ var2032 ", got ")))
(assert true)
(define-const var2053 var2792 (getEntityId/2070677004 var3880)) ; Statement: $r29 = virtualinvoke r4.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert true)
(define-const var3545 ClassObject (getClass/1258963082 (cast-from-var2792-to-var1555 var2053))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2857 String (append/-1031950772 var1802 (cast-from-ClassObject-to-var1555 var3545))) ; Statement: $r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30) 
(declare-const var1802!1 String)
(assert (str.prefixof var1802 var1802!1))
(assert true)
(define-const var2809 String (toString/-2075883882 var2857)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/249801327 var861 var2809)) ; Statement: specialinvoke $r34.<org.hibernate.TypeMismatchException: void <init>(java.lang.String)>($r32) 

(declare-const var861!1 var2160)
(declare-const var2809!1 String)
(define-const var3033 var3833 (cast-from-var2160-to-var3833 var861!1)) ; Statement: $r35 = (java.lang.Throwable) $r34 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var2670_getEntityMetamodel/-746850244=([org.hibernate.persister.entity.EntityPersister], org.hibernate.tuple.entity.EntityMetamodel), getIdentifierProperty/-579679365=([org.hibernate.tuple.entity.EntityMetamodel], org.hibernate.tuple.IdentifierProperty), isEmbedded/531795621=([org.hibernate.tuple.IdentifierProperty], boolean), var2160-init=([], org.hibernate.TypeMismatchException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2670_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1555=([java.lang.Class], java.lang.Object), getEntityId/2070677004=([org.hibernate.event.spi.LoadEvent], java.io.Serializable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2792-to-var1555=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/249801327=([org.hibernate.TypeMismatchException, java.lang.String], void), cast-from-var2160-to-var3833=([org.hibernate.TypeMismatchException], java.lang.Throwable)}
; {var2645=org.hibernate.event.internal.DefaultLoadEventListener, var2516=r16, var2670=org.hibernate.persister.entity.EntityPersister, var2543=r0, var1760=org.hibernate.event.spi.LoadEvent, var3880=r4, var1124=org.hibernate.event.spi.LoadEventListener$LoadType, var3696=r17, var685=r3, var1042=org.hibernate.tuple.entity.EntityMetamodel, var1695=$r1, var2839=org.hibernate.tuple.IdentifierProperty, var613=r2, var136=$z0, var2160=org.hibernate.TypeMismatchException, var861=$r34, var3538=$r33, var1107=$r23, var3659=$r24, var3254=$r25, var1834=$r26, var1555=java.lang.Object, var2032=$r27, var1802=$r28, var2792=java.io.Serializable, var2053=$r29, var3545=$r30, var2857=$r31, var2809=$r32, var3833=java.lang.Throwable, var3033=$r35}
; {org.hibernate.event.internal.DefaultLoadEventListener=var2645, r16=var2516, org.hibernate.persister.entity.EntityPersister=var2670, r0=var2543, org.hibernate.event.spi.LoadEvent=var1760, r4=var3880, org.hibernate.event.spi.LoadEventListener$LoadType=var1124, r17=var3696, r3=var685, org.hibernate.tuple.entity.EntityMetamodel=var1042, $r1=var1695, org.hibernate.tuple.IdentifierProperty=var2839, r2=var613, $z0=var136, org.hibernate.TypeMismatchException=var2160, $r34=var861, $r33=var3538, $r23=var1107, $r24=var3659, $r25=var3254, $r26=var1834, java.lang.Object=var1555, $r27=var2032, $r28=var1802, java.io.Serializable=var2792, $r29=var2053, $r30=var3545, $r31=var2857, $r32=var2809, java.lang.Throwable=var3833, $r35=var3033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.event.internal.DefaultLoadEventListener;	r0 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r4 := @parameter1: org.hibernate.event.spi.LoadEvent;	r17 := @parameter2: org.hibernate.event.spi.LoadEventListener$LoadType;	r3 := @parameter3: java.lang.Class;	$r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>();	r2 = virtualinvoke $r1.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.IdentifierProperty getIdentifierProperty()>();	$z0 = virtualinvoke r2.<org.hibernate.tuple.IdentifierProperty: boolean isEmbedded()>();	if $z0 == 0 goto $r34 = new org.hibernate.TypeMismatchException;	$r34 = new org.hibernate.TypeMismatchException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Provided id of the wrong type for class ");	$r24 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Expected: ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", got ");	$r29 = virtualinvoke r4.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r30 = virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.hibernate.TypeMismatchException: void <init>(java.lang.String)>($r32);	$r35 = (java.lang.Throwable) $r34;	throw $r35
;block_num 2