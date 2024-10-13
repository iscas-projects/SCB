(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3004 0)
(declare-sort var3931 0)
(declare-sort var3384 0)
(declare-sort var2708 0)
(declare-sort var1188 0)
(declare-sort var2771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/499451311 (var2708 var3384) var3384)
(declare-fun cast-from-var3004-to-var2708 (var3004) var2708)
(declare-fun cast-from-String-to-var3384 (String) var3384)
(declare-fun extensible/-852280500 (var3004) Bool)
(declare-fun var1188-init () var1188)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-852280500 (var3004) var2771)
(declare-fun getClass/1258963082 (var3384) ClassObject)
(declare-fun cast-from-var2771-to-var3384 (var2771) var3384)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1188 String) void)
(declare-const null-var3004 var3004)
(declare-const null-String String)
(declare-const null-var3384 var3384)
(declare-const var2964 var3004) ; Statement: r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet$MapView 
(assert (not (= var2964 null-var3004)))
(declare-const var3658 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3658 null-String)))
(declare-const var2899 var3384) ; Statement: r14 := @parameter1: java.lang.Object 
(assert (not (= var2899 null-var3384)))
(assert true)
(define-const var1251 var3384 (get/499451311 (cast-from-var3004-to-var2708 var2964) (cast-from-String-to-var3384 var3658))) ; Statement: r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r2 == null goto $z0 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: boolean extensible> 
(assert (= var1251 null-var3384)) ; Cond: r2 == null 
(define-const var138 Bool (extensible/-852280500 var2964)) ; Statement: $z0 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: boolean extensible> 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalStateException 
(assert (= (ite var138 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3674 var1188 var1188-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var3968 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3968)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3968!1 String)
(assert (= var3968!1 ""))
(assert true)
(define-const var1598 String (append/672562846 var3968!1 "Unknown property [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown property [") 
(declare-const var3968!2 String)
(assert (= var3968!2 (str.++ var3968!1 "Unknown property [")))
(assert true)
(define-const var3689 String (append/672562846 var1598 var3658)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1598!1 String)
(assert (= var1598!1 (str.++ var1598 var3658)))
(assert true)
(define-const var1475 String (append/672562846 var3689 "] for PropertySet [")) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for PropertySet [") 
(declare-const var3689!1 String)
(assert (= var3689!1 (str.++ var3689 "] for PropertySet [")))
(define-const var1636 var2771 (this$0/-852280500 var2964)) ; Statement: $r7 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: com.oracle.webservices.internal.api.message.BasePropertySet this$0> 
(assert true)
(define-const var356 ClassObject (getClass/1258963082 (cast-from-var2771-to-var3384 var1636))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3175 String (getName/-1958580599 var356)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2844 String (append/672562846 var1475 var3175)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1475!1 String)
(assert (= var1475!1 (str.++ var1475 var3175)))
(assert true)
(define-const var2078 String (append/672562846 var2844 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2844!1 String)
(assert (= var2844!1 (str.++ var2844 "]")))
(assert true)
(define-const var2385 String (toString/-2075883882 var2078)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3674 var2385)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var3674!1 var1188)
(declare-const var2385!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var3004-to-var2708=([com.oracle.webservices.internal.api.message.BasePropertySet$MapView], java.util.HashMap), cast-from-String-to-var3384=([java.lang.String], java.lang.Object), extensible/-852280500=([com.oracle.webservices.internal.api.message.BasePropertySet$MapView], boolean), var1188-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-852280500=([com.oracle.webservices.internal.api.message.BasePropertySet$MapView], com.oracle.webservices.internal.api.message.BasePropertySet), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2771-to-var3384=([com.oracle.webservices.internal.api.message.BasePropertySet], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3004=com.oracle.webservices.internal.api.message.BasePropertySet$MapView, var2964=r0, var3658=r1, var3931=null_type, var3384=java.lang.Object, var2899=r14, var2708=java.util.HashMap, var1251=r2, var138=$z0, var1188=java.lang.IllegalStateException, var3674=$r3, var3968=$r4, var1598=$r5, var3689=$r6, var1475=$r10, var2771=com.oracle.webservices.internal.api.message.BasePropertySet, var1636=$r7, var356=$r8, var3175=$r9, var2844=$r11, var2078=$r12, var2385=$r13}
; {com.oracle.webservices.internal.api.message.BasePropertySet$MapView=var3004, r0=var2964, r1=var3658, null_type=var3931, java.lang.Object=var3384, r14=var2899, java.util.HashMap=var2708, r2=var1251, $z0=var138, java.lang.IllegalStateException=var1188, $r3=var3674, $r4=var3968, $r5=var1598, $r6=var3689, $r10=var1475, com.oracle.webservices.internal.api.message.BasePropertySet=var2771, $r7=var1636, $r8=var356, $r9=var3175, $r11=var2844, $r12=var2078, $r13=var2385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.oracle.webservices.internal.api.message.BasePropertySet$MapView;	r1 := @parameter0: java.lang.String;	r14 := @parameter1: java.lang.Object;	r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	if r2 == null goto $z0 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: boolean extensible>;	$z0 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: boolean extensible>;	if $z0 == 0 goto $r3 = new java.lang.IllegalStateException;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown property [");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for PropertySet [");	$r7 = r0.<com.oracle.webservices.internal.api.message.BasePropertySet$MapView: com.oracle.webservices.internal.api.message.BasePropertySet this$0>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r3
;block_num 3