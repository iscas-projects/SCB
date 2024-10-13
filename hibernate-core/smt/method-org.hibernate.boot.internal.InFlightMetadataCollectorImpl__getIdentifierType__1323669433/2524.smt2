(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var269 0)
(declare-sort var1404 0)
(declare-sort var1381 0)
(declare-sort var3115 0)
(declare-sort var1816 0)
(declare-sort var1586 0)
(declare-sort var2975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1317447214 (var269) var1381)
(declare-fun var1381_get/1088891777 (var1381 var3115) var3115)
(declare-fun cast-from-String-to-var3115 (String) var3115)
(declare-fun cast-from-var3115-to-var1816 (var3115) var1816)
(declare-fun var1586-init () var1586)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1586 String) void)
(declare-fun cast-from-var1586-to-var2975 (var1586) var2975)
(declare-const null-var269 var269)
(declare-const null-String String)
(declare-const null-var1816 var1816)
(declare-const var3540 var269) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3540 null-var269)))
(declare-const var477 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var477 null-String)))
(define-const var1815 var1381 (entityBindingMap/1317447214 var3540)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap> 
(define-const var1043 var3115 (var1381_get/1088891777 var1815 (cast-from-String-to-var3115 var477))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3038 var1816 (cast-from-var3115-to-var1816 var1043)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (not (= var3038 null-var1816)))) ; Negate: Cond: r4 != null  
(define-const var3782 var1586 var1586-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var1337 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1337)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1337!1 String)
(assert (= var1337!1 ""))
(assert true)
(define-const var3736 String (append/672562846 var1337!1 "persistent class not known: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var1337!2 String)
(assert (= var1337!2 (str.++ var1337!1 "persistent class not known: ")))
(assert true)
(define-const var571 String (append/672562846 var3736 var477)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 var477)))
(assert true)
(define-const var2808 String (toString/-2075883882 var571)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3782 var2808)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var3782!1 var1586)
(declare-const var2808!1 String)
(define-const var1047 var2975 (cast-from-var1586-to-var2975 var3782!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var1381_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3115=([java.lang.String], java.lang.Object), cast-from-var3115-to-var1816=([java.lang.Object], org.hibernate.mapping.PersistentClass), var1586-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1586-to-var2975=([org.hibernate.MappingException], java.lang.Throwable)}
; {var269=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3540=r0, var477=r1, var1404=null_type, var1381=java.util.Map, var1815=$r2, var3115=java.lang.Object, var1043=$r3, var1816=org.hibernate.mapping.PersistentClass, var3038=r4, var1586=org.hibernate.MappingException, var3782=$r13, var1337=$r12, var3736=$r9, var571=$r10, var2808=$r11, var2975=java.lang.Throwable, var1047=$r14}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var269, r0=var3540, r1=var477, null_type=var1404, java.util.Map=var1381, $r2=var1815, java.lang.Object=var3115, $r3=var1043, org.hibernate.mapping.PersistentClass=var1816, r4=var3038, org.hibernate.MappingException=var1586, $r13=var3782, $r12=var1337, $r9=var3736, $r10=var571, $r11=var2808, java.lang.Throwable=var2975, $r14=var1047}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r13 = new org.hibernate.MappingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2