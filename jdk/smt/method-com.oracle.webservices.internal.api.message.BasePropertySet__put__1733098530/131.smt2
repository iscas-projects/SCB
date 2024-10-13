(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1116 0)
(declare-sort var966 0)
(declare-sort var3621 0)
(declare-sort var3751 0)
(declare-sort var2058 0)
(declare-sort var2392 0)
(declare-sort var3570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyMap/-702752123 (var1116) var3751)
(declare-fun get/499451311 (var2058 var3621) var3621)
(declare-fun cast-from-var3751-to-var2058 (var3751) var2058)
(declare-fun cast-from-String-to-var3621 (String) var3621)
(declare-fun cast-from-var3621-to-var2392 (var3621) var2392)
(declare-fun var3570-init () var3570)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3570 String) void)
(declare-const null-var1116 var1116)
(declare-const null-String String)
(declare-const null-var3621 var3621)
(declare-const null-var2392 var2392)
(declare-const var1138 var1116) ; Statement: r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet 
(assert (not (= var1138 null-var1116)))
(declare-const var597 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var597 null-String)))
(declare-const var3109 var3621) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var3109 null-var3621)))
(assert true)
(define-const var3730 var3751 (getPropertyMap/-702752123 var1138)) ; Statement: $r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>() 
(assert true)
(define-const var1708 var3621 (get/499451311 (cast-from-var3751-to-var2058 var3730) (cast-from-String-to-var3621 var597))) ; Statement: $r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var535 var2392 (cast-from-var3621-to-var2392 var1708)) ; Statement: r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3 
 ; Statement: if r4 == null goto $r5 = new java.lang.IllegalArgumentException 
(assert (= var535 null-var2392)) ; Cond: r4 == null 
(define-const var1067 var3570 var3570-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var236 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var236)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var236!1 String)
(assert (= var236!1 ""))
(assert true)
(define-const var3193 String (append/672562846 var236!1 "Undefined property ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ") 
(declare-const var236!2 String)
(assert (= var236!2 (str.++ var236!1 "Undefined property ")))
(assert true)
(define-const var616 String (append/672562846 var3193 var597)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3193!1 String)
(assert (= var3193!1 (str.++ var3193 var597)))
(assert true)
(define-const var3176 String (toString/-2075883882 var616)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1067 var3176)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var1067!1 var3570)
(declare-const var3176!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyMap/-702752123=([com.oracle.webservices.internal.api.message.BasePropertySet], com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var3751-to-var2058=([com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap], java.util.HashMap), cast-from-String-to-var3621=([java.lang.String], java.lang.Object), cast-from-var3621-to-var2392=([java.lang.Object], com.oracle.webservices.internal.api.message.BasePropertySet$Accessor), var3570-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1116=com.oracle.webservices.internal.api.message.BasePropertySet, var1138=r0, var597=r1, var966=null_type, var3621=java.lang.Object, var3109=r11, var3751=com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap, var3730=$r2, var2058=java.util.HashMap, var1708=$r3, var2392=com.oracle.webservices.internal.api.message.BasePropertySet$Accessor, var535=r4, var3570=java.lang.IllegalArgumentException, var1067=$r5, var236=$r6, var3193=$r7, var616=$r8, var3176=$r9}
; {com.oracle.webservices.internal.api.message.BasePropertySet=var1116, r0=var1138, r1=var597, null_type=var966, java.lang.Object=var3621, r11=var3109, com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap=var3751, $r2=var3730, java.util.HashMap=var2058, $r3=var1708, com.oracle.webservices.internal.api.message.BasePropertySet$Accessor=var2392, r4=var535, java.lang.IllegalArgumentException=var3570, $r5=var1067, $r6=var236, $r7=var3193, $r8=var616, $r9=var3176}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.Object;	$r2 = virtualinvoke r0.<com.oracle.webservices.internal.api.message.BasePropertySet: com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap getPropertyMap()>();	$r3 = virtualinvoke $r2.<com.oracle.webservices.internal.api.message.BasePropertySet$PropertyMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.oracle.webservices.internal.api.message.BasePropertySet$Accessor) $r3;	if r4 == null goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined property ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2