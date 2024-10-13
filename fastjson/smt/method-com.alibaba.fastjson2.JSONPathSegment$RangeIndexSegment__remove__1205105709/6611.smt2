(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2559 0)
(declare-sort var1322 0)
(declare-sort var453 0)
(declare-sort var2512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var1322) var1322)
(declare-fun value/1029745399 (var1322) var453)
(declare-fun var2512-init () var2512)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var453) ClassObject)
(declare-fun cast-from-var2559-to-var453 (var2559) var453)
(declare-fun append/-1031950772 (String var453) String)
(declare-fun cast-from-ClassObject-to-var453 (ClassObject) var453)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2512 String) void)
(declare-const null-var2559 var2559)
(declare-const null-var1322 var1322)
(declare-const var2388 var2559) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var2388 null-var2559)))
(declare-const var3187 var1322) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var3187 null-var1322)))
(define-const var2943 var1322 (parent/1029745399 var3187)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2943 null-var1322))) ; Cond: $r1 != null 
(define-const var221 var1322 (parent/1029745399 var3187)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var1860 var453 (value/1029745399 var221)) ; Statement: $r11 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var3366 Bool false) ; Statement: $z0 = $r11 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto $r13 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var3366 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3578 var2512 var2512-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var2503 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2503)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2503!1 String)
(assert (= var2503!1 ""))
(assert true)
(define-const var2673 String (append/672562846 var2503!1 "UnsupportedOperation ")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2503!2 String)
(assert (= var2503!2 (str.++ var2503!1 "UnsupportedOperation ")))
(assert true)
(define-const var1951 ClassObject (getClass/1258963082 (cast-from-var2559-to-var453 var2388))) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3256 String (append/-1031950772 var2673 (cast-from-ClassObject-to-var453 var1951))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2673!1 String)
(assert (str.prefixof var2673 var2673!1))
(assert true)
(define-const var1382 String (toString/-2075883882 var3256)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3578 var1382)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var3578!1 var2512)
(declare-const var1382!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var2512-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2559-to-var453=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var453=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2559=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var2388=r5, var1322=com.alibaba.fastjson2.JSONPath$Context, var3187=r0, var2943=$r1, var221=$r2, var453=java.lang.Object, var1860=$r11, var3366=$z0, var2512=com.alibaba.fastjson2.JSONException, var3578=$r13, var2503=$r12, var2673=$r7, var1951=$r6, var3256=$r8, var1382=$r9}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var2559, r5=var2388, com.alibaba.fastjson2.JSONPath$Context=var1322, r0=var3187, $r1=var2943, $r2=var221, java.lang.Object=var453, $r11=var1860, $z0=var3366, com.alibaba.fastjson2.JSONException=var2512, $r13=var3578, $r12=var2503, $r7=var2673, $r6=var1951, $r8=var3256, $r9=var1382}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r11 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	$z0 = $r11 instanceof java.util.List;	if $z0 == 0 goto $r13 = new com.alibaba.fastjson2.JSONException;	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r13
;block_num 4