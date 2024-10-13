(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var398 0)
(declare-sort var3143 0)
(declare-sort var1759 0)
(declare-sort var1504 0)
(declare-sort var2384 0)
(declare-sort var42 0)
(declare-sort var3214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1077866378 (var398) var1759)
(declare-fun var1759_get/1088891777 (var1759 var1504) var1504)
(declare-fun cast-from-String-to-var1504 (String) var1504)
(declare-fun cast-from-var1504-to-var2384 (var1504) var2384)
(declare-fun var42-init () var42)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var42 String) void)
(declare-fun cast-from-var42-to-var3214 (var42) var3214)
(declare-const null-var398 var398)
(declare-const null-String String)
(declare-const null-var2384 var2384)
(declare-const var3376 var398) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var3376 null-var398)))
(declare-const var466 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var466 null-String)))
(define-const var1996 var1759 (entityBindingMap/1077866378 var3376)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap> 
(define-const var1681 var1504 (var1759_get/1088891777 var1996 (cast-from-String-to-var1504 var466))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3408 var2384 (cast-from-var1504-to-var2384 var1681)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (not (= var3408 null-var2384)))) ; Negate: Cond: r4 != null  
(define-const var412 var42 var42-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var1097 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1097)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1097!1 String)
(assert (= var1097!1 ""))
(assert true)
(define-const var1687 String (append/672562846 var1097!1 "persistent class not known: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var1097!2 String)
(assert (= var1097!2 (str.++ var1097!1 "persistent class not known: ")))
(assert true)
(define-const var673 String (append/672562846 var1687 var466)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1687!1 String)
(assert (= var1687!1 (str.++ var1687 var466)))
(assert true)
(define-const var3624 String (toString/-2075883882 var673)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var412 var3624)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var412!1 var42)
(declare-const var3624!1 String)
(define-const var3766 var3214 (cast-from-var42-to-var3214 var412!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1077866378=([org.hibernate.boot.internal.MetadataImpl], java.util.Map), var1759_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1504=([java.lang.String], java.lang.Object), cast-from-var1504-to-var2384=([java.lang.Object], org.hibernate.mapping.PersistentClass), var42-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var42-to-var3214=([org.hibernate.MappingException], java.lang.Throwable)}
; {var398=org.hibernate.boot.internal.MetadataImpl, var3376=r0, var466=r1, var3143=null_type, var1759=java.util.Map, var1996=$r2, var1504=java.lang.Object, var1681=$r3, var2384=org.hibernate.mapping.PersistentClass, var3408=r4, var42=org.hibernate.MappingException, var412=$r13, var1097=$r12, var1687=$r9, var673=$r10, var3624=$r11, var3214=java.lang.Throwable, var3766=$r14}
; {org.hibernate.boot.internal.MetadataImpl=var398, r0=var3376, r1=var466, null_type=var3143, java.util.Map=var1759, $r2=var1996, java.lang.Object=var1504, $r3=var1681, org.hibernate.mapping.PersistentClass=var2384, r4=var3408, org.hibernate.MappingException=var42, $r13=var412, $r12=var1097, $r9=var1687, $r10=var673, $r11=var3624, java.lang.Throwable=var3214, $r14=var3766}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r13 = new org.hibernate.MappingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2