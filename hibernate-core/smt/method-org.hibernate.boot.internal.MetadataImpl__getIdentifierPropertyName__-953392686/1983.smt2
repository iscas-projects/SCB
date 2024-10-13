(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort var3833 0)
(declare-sort var155 0)
(declare-sort var254 0)
(declare-sort var3601 0)
(declare-sort var989 0)
(declare-sort var3314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1077866378 (var2947) var155)
(declare-fun var155_get/1088891777 (var155 var254) var254)
(declare-fun cast-from-String-to-var254 (String) var254)
(declare-fun cast-from-var254-to-var3601 (var254) var3601)
(declare-fun var989-init () var989)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var989 String) void)
(declare-fun cast-from-var989-to-var3314 (var989) var3314)
(declare-const null-var2947 var2947)
(declare-const null-String String)
(declare-const null-var3601 var3601)
(declare-const var3207 var2947) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var3207 null-var2947)))
(declare-const var3046 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3046 null-String)))
(define-const var3085 var155 (entityBindingMap/1077866378 var3207)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap> 
(define-const var1032 var254 (var155_get/1088891777 var3085 (cast-from-String-to-var254 var3046))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var864 var3601 (cast-from-var254-to-var3601 var1032)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $z0 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: boolean hasIdentifierProperty()>() 
(assert (not (not (= var864 null-var3601)))) ; Negate: Cond: r4 != null  
(define-const var3195 var989 var989-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var2001 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2001)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2001!1 String)
(assert (= var2001!1 ""))
(assert true)
(define-const var2767 String (append/672562846 var2001!1 "persistent class not known: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var2001!2 String)
(assert (= var2001!2 (str.++ var2001!1 "persistent class not known: ")))
(assert true)
(define-const var3850 String (append/672562846 var2767 var3046)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2767!1 String)
(assert (= var2767!1 (str.++ var2767 var3046)))
(assert true)
(define-const var1640 String (toString/-2075883882 var3850)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3195 var1640)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var3195!1 var989)
(declare-const var1640!1 String)
(define-const var1999 var3314 (cast-from-var989-to-var3314 var3195!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1077866378=([org.hibernate.boot.internal.MetadataImpl], java.util.Map), var155_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var254=([java.lang.String], java.lang.Object), cast-from-var254-to-var3601=([java.lang.Object], org.hibernate.mapping.PersistentClass), var989-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var989-to-var3314=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2947=org.hibernate.boot.internal.MetadataImpl, var3207=r0, var3046=r1, var3833=null_type, var155=java.util.Map, var3085=$r2, var254=java.lang.Object, var1032=$r3, var3601=org.hibernate.mapping.PersistentClass, var864=r4, var989=org.hibernate.MappingException, var3195=$r13, var2001=$r12, var2767=$r9, var3850=$r10, var1640=$r11, var3314=java.lang.Throwable, var1999=$r14}
; {org.hibernate.boot.internal.MetadataImpl=var2947, r0=var3207, r1=var3046, null_type=var3833, java.util.Map=var155, $r2=var3085, java.lang.Object=var254, $r3=var1032, org.hibernate.mapping.PersistentClass=var3601, r4=var864, org.hibernate.MappingException=var989, $r13=var3195, $r12=var2001, $r9=var2767, $r10=var3850, $r11=var1640, java.lang.Throwable=var3314, $r14=var1999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $z0 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: boolean hasIdentifierProperty()>();	$r13 = new org.hibernate.MappingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2