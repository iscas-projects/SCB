(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1776 0)
(declare-sort var1606 0)
(declare-sort var2976 0)
(declare-sort var2857 0)
(declare-sort var2929 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2976!class ClassObject)
(declare-fun persistentClass/-1293733177 (var1776) var2857)
(declare-fun isInstance/451912363 (ClassObject var2929) Bool)
(declare-fun cast-from-var2857-to-var2929 (var2857) var2929)
(declare-fun var771-init () var771)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClass/1258963082 (var2929) ClassObject)
(declare-fun getEntityName/-2043384209 (var2857) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var771 String) void)
(declare-const null-var1776 var1776)
(declare-const null-var1606 var1606)
(declare-const var1911 var1776) ; Statement: r0 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1911 null-var1776)))
(declare-const var1383 var1606) ; Statement: r8 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref 
(assert (not (= var1383 null-var1606)))
(define-const var1053 ClassObject var2976!class) ; Statement: $r2 = class "Lorg/hibernate/mapping/SingleTableSubclass;" 
(define-const var2247 var2857 (persistentClass/-1293733177 var1911)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
(define-const var2375 Bool (isInstance/451912363 var1053 (cast-from-var2857-to-var2929 var2247))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context> 
(assert (not (not (= (ite var2375 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var133 var771 var771-init) ; Statement: $r17 = new org.hibernate.AssertionFailure 
(define-const var689 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var689)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var689!1 String)
(assert (= var689!1 ""))
(assert true)
(define-const var1385 String (append/672562846 var689!1 "Was expecting a discriminated subclass [")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting a discriminated subclass [") 
(declare-const var689!2 String)
(assert (= var689!2 (str.++ var689!1 "Was expecting a discriminated subclass [")))
(define-const var1757 ClassObject var2976!class) ; Statement: $r19 = class "Lorg/hibernate/mapping/SingleTableSubclass;" 
(assert true)
(define-const var2624 String (getName/-1958580599 var1757)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1374 String (append/672562846 var1385 var2624)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1385!1 String)
(assert (= var1385!1 (str.++ var1385 var2624)))
(assert true)
(define-const var3040 String (append/672562846 var1374 "] but found [")) ; Statement: $r26 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] but found [") 
(declare-const var1374!1 String)
(assert (= var1374!1 (str.++ var1374 "] but found [")))
(define-const var2389 var2857 (persistentClass/-1293733177 var1911)) ; Statement: $r23 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
(define-const var488 ClassObject (getClass/1258963082 (cast-from-var2857-to-var2929 var2389))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var670 String (getName/-1958580599 var488)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2171 String (append/672562846 var3040 var670)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3040!1 String)
(assert (= var3040!1 (str.++ var3040 var670)))
(assert true)
(define-const var2242 String (append/672562846 var2171 "] for entity [")) ; Statement: $r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for entity [") 
(declare-const var2171!1 String)
(assert (= var2171!1 (str.++ var2171 "] for entity [")))
(define-const var1855 var2857 (persistentClass/-1293733177 var1911)) ; Statement: $r28 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
(define-const var3133 String (getEntityName/-2043384209 var1855)) ; Statement: $r29 = virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var2102 String (append/672562846 var2242 var3133)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 var3133)))
(assert true)
(define-const var1281 String (append/672562846 var2102 "]")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2102!1 String)
(assert (= var2102!1 (str.++ var2102 "]")))
(assert true)
(define-const var3770 String (toString/-2075883882 var1281)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var133 var3770)) ; Statement: specialinvoke $r17.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r33) 

(declare-const var133!1 var771)
(declare-const var3770!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.mapping.PersistentClass), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2857-to-var2929=([org.hibernate.mapping.PersistentClass], java.lang.Object), var771-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1776=org.hibernate.cfg.annotations.EntityBinder, var1911=r0, var1606=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var1383=r8, var2976=org.hibernate.mapping.SingleTableSubclass, var1053=$r2, var2857=org.hibernate.mapping.PersistentClass, var2247=$r1, var2929=java.lang.Object, var2375=$z0, var771=org.hibernate.AssertionFailure, var133=$r17, var689=$r18, var1385=$r21, var1757=$r19, var2624=$r20, var1374=$r22, var3040=$r26, var2389=$r23, var488=$r24, var670=$r25, var2171=$r27, var2242=$r30, var1855=$r28, var3133=$r29, var2102=$r31, var1281=$r32, var3770=$r33}
; {org.hibernate.cfg.annotations.EntityBinder=var1776, r0=var1911, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var1606, r8=var1383, org.hibernate.mapping.SingleTableSubclass=var2976, $r2=var1053, org.hibernate.mapping.PersistentClass=var2857, $r1=var2247, java.lang.Object=var2929, $z0=var2375, org.hibernate.AssertionFailure=var771, $r17=var133, $r18=var689, $r21=var1385, $r19=var1757, $r20=var2624, $r22=var1374, $r26=var3040, $r23=var2389, $r24=var488, $r25=var670, $r27=var2171, $r30=var2242, $r28=var1855, $r29=var3133, $r31=var2102, $r32=var1281, $r33=var3770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.EntityBinder;	r8 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref;	$r2 = class "Lorg/hibernate/mapping/SingleTableSubclass;";	$r1 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>($r1);	if $z0 != 0 goto $r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context>;	$r17 = new org.hibernate.AssertionFailure;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting a discriminated subclass [");	$r19 = class "Lorg/hibernate/mapping/SingleTableSubclass;";	$r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r26 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] but found [");	$r23 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$r24 = virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>();	$r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for entity [");	$r28 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$r29 = virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r33);	throw $r17
;block_num 2