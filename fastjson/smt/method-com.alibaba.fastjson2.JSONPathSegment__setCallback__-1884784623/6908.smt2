(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2802 0)
(declare-sort var1062 0)
(declare-sort var867 0)
(declare-sort var3345 0)
(declare-sort var2519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3345-init () var3345)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2519) ClassObject)
(declare-fun cast-from-var2802-to-var2519 (var2802) var2519)
(declare-fun append/-1031950772 (String var2519) String)
(declare-fun cast-from-ClassObject-to-var2519 (ClassObject) var2519)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3345 String) void)
(declare-const null-var2802 var2802)
(declare-const null-var1062 var1062)
(declare-const null-var867 var867)
(declare-const var1595 var2802) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var1595 null-var2802)))
(declare-const var2091 var1062) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2091 null-var1062)))
(declare-const var3560 var867) ; Statement: r8 := @parameter1: java.util.function.BiFunction 
(assert (not (= var3560 null-var867)))
(define-const var3793 var3345 var3345-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var2837 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2837)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2837!1 String)
(assert (= var2837!1 ""))
(assert true)
(define-const var1294 String (append/672562846 var2837!1 "UnsupportedOperation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2837!2 String)
(assert (= var2837!2 (str.++ var2837!1 "UnsupportedOperation ")))
(assert true)
(define-const var3519 ClassObject (getClass/1258963082 (cast-from-var2802-to-var2519 var1595))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1728 String (append/-1031950772 var1294 (cast-from-ClassObject-to-var2519 var3519))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1294!1 String)
(assert (str.prefixof var1294 var1294!1))
(assert true)
(define-const var663 String (toString/-2075883882 var1728)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3793 var663)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var3793!1 var3345)
(declare-const var663!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3345-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2802-to-var2519=([com.alibaba.fastjson2.JSONPathSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2519=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2802=com.alibaba.fastjson2.JSONPathSegment, var1595=r2, var1062=com.alibaba.fastjson2.JSONPath$Context, var2091=r7, var867=java.util.function.BiFunction, var3560=r8, var3345=com.alibaba.fastjson2.JSONException, var3793=$r0, var2837=$r1, var1294=$r4, var2519=java.lang.Object, var3519=$r3, var1728=$r5, var663=$r6}
; {com.alibaba.fastjson2.JSONPathSegment=var2802, r2=var1595, com.alibaba.fastjson2.JSONPath$Context=var1062, r7=var2091, java.util.function.BiFunction=var867, r8=var3560, com.alibaba.fastjson2.JSONException=var3345, $r0=var3793, $r1=var2837, $r4=var1294, java.lang.Object=var2519, $r3=var3519, $r5=var1728, $r6=var663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONPathSegment;	r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r8 := @parameter1: java.util.function.BiFunction;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1