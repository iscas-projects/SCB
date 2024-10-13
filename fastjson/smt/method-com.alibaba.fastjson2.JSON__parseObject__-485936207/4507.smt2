(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1989 0)
(declare-sort var2126 0)
(declare-sort var1390 0)
(declare-sort var2308 0)
(declare-sort var581 0)
(declare-sort var1331 0)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var581-init () var581)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1331) String)
(declare-fun cast-from-var1989-to-var1331 (var1989) var1331)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var581 String var1013) void)
(declare-fun cast-from-var2308-to-var1013 (var2308) var1013)
(declare-const null-var1989 var1989)
(declare-const null-var2126 var2126)
(declare-const null-__Array__Int__var1390__ (Array Int var1390))
(declare-const null-var2308 var2308)
(declare-const var539 var1989) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var539 null-var1989)))
(declare-const var3273 var2126) ; Statement: r2 := @parameter1: java.util.function.Function 
(assert (not (= var3273 null-var2126)))
(declare-const var2508 (Array Int var1390)) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[] 
(assert (not (= var2508 null-__Array__Int__var1390__)))
 ; Statement: if r0 != null goto r12 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var539 null-var1989)))) ; Negate: Cond: r0 != null  
(declare-const var3437 var2308) ; Statement: $r3 := @caughtexception 
(assert (not (= var3437 null-var2308)))
(define-const var1160 var581 var581-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1902 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1902)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1902!1 String)
(assert (= var1902!1 ""))
(assert true)
(define-const var1455 String (append/672562846 var1902!1 "JSON#parseObject cannot parse \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'") 
(declare-const var1902!2 String)
(assert (= var1902!2 (str.++ var1902!1 "JSON#parseObject cannot parse \u0027")))
(assert true)
(define-const var153 String (append/-1031950772 var1455 (cast-from-var1989-to-var1331 var539))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1455!1 String)
(assert (str.prefixof var1455 var1455!1))
(assert true)
(define-const var2602 String (append/672562846 var153 "\u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var153!1 String)
(assert (= var153!1 (str.++ var153 "\u0027")))
(assert true)
(define-const var2937 String (toString/-2075883882 var2602)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1160 var2937 (cast-from-var2308-to-var1013 var3437))) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var1160!1 var581)
(declare-const var2937!1 String)
(declare-const var3437!1 var2308)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var581-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1989-to-var1331=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2308-to-var1013=([java.io.IOException], java.lang.Throwable)}
; {var1989=java.net.URL, var539=r0, var2126=java.util.function.Function, var3273=r2, var1390=com.alibaba.fastjson2.JSONReader$Feature, var2508=r1, var2308=java.io.IOException, var3437=$r3, var581=com.alibaba.fastjson2.JSONException, var1160=$r4, var1902=$r5, var1455=$r6, var1331=java.lang.Object, var153=$r7, var2602=$r8, var2937=$r9, var1013=java.lang.Throwable}
; {java.net.URL=var1989, r0=var539, java.util.function.Function=var2126, r2=var3273, com.alibaba.fastjson2.JSONReader$Feature=var1390, r1=var2508, java.io.IOException=var2308, $r3=var3437, com.alibaba.fastjson2.JSONException=var581, $r4=var1160, $r5=var1902, $r6=var1455, java.lang.Object=var1331, $r7=var153, $r8=var2602, $r9=var2937, java.lang.Throwable=var1013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r2 := @parameter1: java.util.function.Function;	r1 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[];	if r0 != null goto r12 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r3 := @caughtexception;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r4
;block_num 2