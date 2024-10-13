(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort var1724 0)
(declare-sort var843 0)
(declare-sort var3456 0)
(declare-sort var2727 0)
(declare-sort var1045 0)
(declare-sort var917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1317447214 (var2855) var843)
(declare-fun var843_get/1088891777 (var843 var3456) var3456)
(declare-fun cast-from-String-to-var3456 (String) var3456)
(declare-fun cast-from-var3456-to-var2727 (var3456) var2727)
(declare-fun var1045-init () var1045)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1045 String) void)
(declare-fun cast-from-var1045-to-var917 (var1045) var917)
(declare-const null-var2855 var2855)
(declare-const null-String String)
(declare-const null-var2727 var2727)
(declare-const var812 var2855) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var812 null-var2855)))
(declare-const var1469 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1469 null-String)))
(declare-const var75 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var75 null-String)))
(define-const var2115 var843 (entityBindingMap/1317447214 var812)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap> 
(define-const var3018 var3456 (var843_get/1088891777 var2115 (cast-from-String-to-var3456 var1469))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1010 var2727 (cast-from-var3456-to-var2727 var3018)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto r6 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getReferencedProperty(java.lang.String)>(r5) 
(assert (not (not (= var1010 null-var2727)))) ; Negate: Cond: r4 != null  
(define-const var2603 var1045 var1045-init) ; Statement: $r21 = new org.hibernate.MappingException 
(define-const var2550 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2550)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2550!1 String)
(assert (= var2550!1 ""))
(assert true)
(define-const var1008 String (append/672562846 var2550!1 "persistent class not known: ")) ; Statement: $r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var2550!2 String)
(assert (= var2550!2 (str.++ var2550!1 "persistent class not known: ")))
(assert true)
(define-const var1520 String (append/672562846 var1008 var1469)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1008!1 String)
(assert (= var1008!1 (str.++ var1008 var1469)))
(assert true)
(define-const var450 String (toString/-2075883882 var1520)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2603 var450)) ; Statement: specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19) 

(declare-const var2603!1 var1045)
(declare-const var450!1 String)
(define-const var2685 var917 (cast-from-var1045-to-var917 var2603!1)) ; Statement: $r24 = (java.lang.Throwable) $r21 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var843_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3456=([java.lang.String], java.lang.Object), cast-from-var3456-to-var2727=([java.lang.Object], org.hibernate.mapping.PersistentClass), var1045-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1045-to-var917=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2855=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var812=r0, var1469=r1, var1724=null_type, var75=r5, var843=java.util.Map, var2115=$r2, var3456=java.lang.Object, var3018=$r3, var2727=org.hibernate.mapping.PersistentClass, var1010=r4, var1045=org.hibernate.MappingException, var2603=$r21, var2550=$r20, var1008=$r17, var1520=$r18, var450=$r19, var917=java.lang.Throwable, var2685=$r24}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2855, r0=var812, r1=var1469, null_type=var1724, r5=var75, java.util.Map=var843, $r2=var2115, java.lang.Object=var3456, $r3=var3018, org.hibernate.mapping.PersistentClass=var2727, r4=var1010, org.hibernate.MappingException=var1045, $r21=var2603, $r20=var2550, $r17=var1008, $r18=var1520, $r19=var450, java.lang.Throwable=var917, $r24=var2685}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto r6 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getReferencedProperty(java.lang.String)>(r5);	$r21 = new org.hibernate.MappingException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19);	$r24 = (java.lang.Throwable) $r21;	throw $r24
;block_num 2