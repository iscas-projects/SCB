(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var1751 0)
(declare-sort var2590 0)
(declare-sort var39 0)
(declare-sort var180 0)
(declare-sort var2886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyMap/-702752123 (var975) var2590)
(declare-fun get/499451311 (var39 var1751) var1751)
(declare-fun cast-from-var2590-to-var39 (var2590) var39)
(declare-fun cast-from-var1751-to-var180 (var1751) var180)
(declare-fun var2886-init () var2886)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1751) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2886 String) void)
(declare-const null-var975 var975)
(declare-const null-var1751 var1751)
(declare-const null-var180 var180)
(declare-const var3815 var975) ; Statement: r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet 
(assert (not (= var3815 null-var975)))
(declare-const var1808 var1751) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1808 null-var1751)))
(assert true)
(define-const var3217 var2590 (getPropertyMap/-702752123 var3815)) ; Statement: $r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>() 
(assert true)
(define-const var2289 var1751 (get/499451311 (cast-from-var2590-to-var39 var3217) var1808)) ; Statement: $r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3050 var180 (cast-from-var1751-to-var180 var2289)) ; Statement: r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3 
 ; Statement: if r4 == null goto $r5 = new java.lang.IllegalArgumentException 
(assert (= var3050 null-var180)) ; Cond: r4 == null 
(define-const var3694 var2886 var2886-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3851 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3851)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3851!1 String)
(assert (= var3851!1 ""))
(assert true)
(define-const var1843 String (append/672562846 var3851!1 "Undefined property ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ") 
(declare-const var3851!2 String)
(assert (= var3851!2 (str.++ var3851!1 "Undefined property ")))
(assert true)
(define-const var2614 String (append/-1031950772 var1843 var1808)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1843!1 String)
(assert (str.prefixof var1843 var1843!1))
(assert true)
(define-const var2926 String (toString/-2075883882 var2614)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3694 var2926)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3694!1 var2886)
(declare-const var2926!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyMap/-702752123=([com.oracle.webservices.internal.api.message.BasePropertySet], com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var2590-to-var39=([com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap], java.util.HashMap), cast-from-var1751-to-var180=([java.lang.Object], com.oracle.webservices.internal.api.message.BasePropertySet$Accessor), var2886-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var975=com.oracle.webservices.internal.api.message.BasePropertySet, var3815=r0, var1751=java.lang.Object, var1808=r1, var2590=com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap, var3217=$r2, var39=java.util.HashMap, var2289=$r3, var180=com.oracle.webservices.internal.api.message.BasePropertySet$Accessor, var3050=r4, var2886=java.lang.IllegalArgumentException, var3694=$r5, var3851=$r6, var1843=$r7, var2614=$r8, var2926=$r9}
; {com.oracle.webservices.internal.api.message.BasePropertySet=var975, r0=var3815, java.lang.Object=var1751, r1=var1808, com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap=var2590, $r2=var3217, java.util.HashMap=var39, $r3=var2289, com.oracle.webservices.internal.api.message.BasePropertySet$Accessor=var180, r4=var3050, java.lang.IllegalArgumentException=var2886, $r5=var3694, $r6=var3851, $r7=var1843, $r8=var2614, $r9=var2926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet;	r1 := @parameter0: java.lang.Object;	$r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>();	$r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3;	if r4 == null goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2