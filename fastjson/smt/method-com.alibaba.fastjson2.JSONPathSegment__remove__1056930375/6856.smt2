(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort var1812 0)
(declare-sort var3746 0)
(declare-sort var1844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3746-init () var3746)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1844) ClassObject)
(declare-fun cast-from-var2857-to-var1844 (var2857) var1844)
(declare-fun append/-1031950772 (String var1844) String)
(declare-fun cast-from-ClassObject-to-var1844 (ClassObject) var1844)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3746 String) void)
(declare-const null-var2857 var2857)
(declare-const null-var1812 var1812)
(declare-const var632 var2857) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var632 null-var2857)))
(declare-const var2982 var1812) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2982 null-var1812)))
(define-const var1705 var3746 var3746-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3426 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3426)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3426!1 String)
(assert (= var3426!1 ""))
(assert true)
(define-const var1134 String (append/672562846 var3426!1 "UnsupportedOperation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var3426!2 String)
(assert (= var3426!2 (str.++ var3426!1 "UnsupportedOperation ")))
(assert true)
(define-const var2292 ClassObject (getClass/1258963082 (cast-from-var2857-to-var1844 var632))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3406 String (append/-1031950772 var1134 (cast-from-ClassObject-to-var1844 var2292))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1134!1 String)
(assert (str.prefixof var1134 var1134!1))
(assert true)
(define-const var2211 String (toString/-2075883882 var3406)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1705 var2211)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1705!1 var3746)
(declare-const var2211!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3746-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2857-to-var1844=([com.alibaba.fastjson2.JSONPathSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1844=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2857=com.alibaba.fastjson2.JSONPathSegment, var632=r2, var1812=com.alibaba.fastjson2.JSONPath$Context, var2982=r7, var3746=com.alibaba.fastjson2.JSONException, var1705=$r0, var3426=$r1, var1134=$r4, var1844=java.lang.Object, var2292=$r3, var3406=$r5, var2211=$r6}
; {com.alibaba.fastjson2.JSONPathSegment=var2857, r2=var632, com.alibaba.fastjson2.JSONPath$Context=var1812, r7=var2982, com.alibaba.fastjson2.JSONException=var3746, $r0=var1705, $r1=var3426, $r4=var1134, java.lang.Object=var1844, $r3=var2292, $r5=var3406, $r6=var2211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONPathSegment;	r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1