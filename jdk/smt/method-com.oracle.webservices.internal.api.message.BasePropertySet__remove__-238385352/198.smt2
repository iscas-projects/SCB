(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort var2212 0)
(declare-sort var2263 0)
(declare-sort var3216 0)
(declare-sort var3033 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyMap/-702752123 (var2696) var2263)
(declare-fun get/499451311 (var3216 var2212) var2212)
(declare-fun cast-from-var2263-to-var3216 (var2263) var3216)
(declare-fun cast-from-var2212-to-var3033 (var2212) var3033)
(declare-fun var2142-init () var2142)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2212) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2142 String) void)
(declare-const null-var2696 var2696)
(declare-const null-var2212 var2212)
(declare-const null-var3033 var3033)
(declare-const var643 var2696) ; Statement: r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet 
(assert (not (= var643 null-var2696)))
(declare-const var773 var2212) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var773 null-var2212)))
(assert true)
(define-const var1880 var2263 (getPropertyMap/-702752123 var643)) ; Statement: $r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>() 
(assert true)
(define-const var1272 var2212 (get/499451311 (cast-from-var2263-to-var3216 var1880) var773)) ; Statement: $r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2856 var3033 (cast-from-var2212-to-var3033 var1272)) ; Statement: r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3 
 ; Statement: if r4 == null goto $r5 = new java.lang.IllegalArgumentException 
(assert (= var2856 null-var3033)) ; Cond: r4 == null 
(define-const var551 var2142 var2142-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1838 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1838)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1838!1 String)
(assert (= var1838!1 ""))
(assert true)
(define-const var1093 String (append/672562846 var1838!1 "Undefined property ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ") 
(declare-const var1838!2 String)
(assert (= var1838!2 (str.++ var1838!1 "Undefined property ")))
(assert true)
(define-const var2991 String (append/-1031950772 var1093 var773)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1093!1 String)
(assert (str.prefixof var1093 var1093!1))
(assert true)
(define-const var1557 String (toString/-2075883882 var2991)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var551 var1557)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var551!1 var2142)
(declare-const var1557!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyMap/-702752123=([com.oracle.webservices.internal.api.message.BasePropertySet], com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var2263-to-var3216=([com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap], java.util.HashMap), cast-from-var2212-to-var3033=([java.lang.Object], com.oracle.webservices.internal.api.message.BasePropertySet$Accessor), var2142-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2696=com.oracle.webservices.internal.api.message.BasePropertySet, var643=r0, var2212=java.lang.Object, var773=r1, var2263=com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap, var1880=$r2, var3216=java.util.HashMap, var1272=$r3, var3033=com.oracle.webservices.internal.api.message.BasePropertySet$Accessor, var2856=r4, var2142=java.lang.IllegalArgumentException, var551=$r5, var1838=$r6, var1093=$r7, var2991=$r8, var1557=$r9}
; {com.oracle.webservices.internal.api.message.BasePropertySet=var2696, r0=var643, java.lang.Object=var2212, r1=var773, com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap=var2263, $r2=var1880, java.util.HashMap=var3216, $r3=var1272, com.oracle.webservices.internal.api.message.BasePropertySet$Accessor=var3033, r4=var2856, java.lang.IllegalArgumentException=var2142, $r5=var551, $r6=var1838, $r7=var1093, $r8=var2991, $r9=var1557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet;	r1 := @parameter0: java.lang.Object;	$r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>();	$r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3;	if r4 == null goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2