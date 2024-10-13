(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var2211 0)
(declare-sort var26 0)
(declare-sort var2980 0)
(declare-sort var2414 0)
(declare-sort var1593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2414-init () var2414)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1593) String)
(declare-fun cast-from-ClassObject-to-var1593 (ClassObject) var1593)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2414 String var2980) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2301 var2301)
(declare-const var26-METHOD_NEW_PROXY_INSTANCE var2211)
(declare-const null-var2980 var2980)
(declare-const var3311 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3311 null-ClassObject)))
(declare-const var1533 var2301) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.JSONObject 
(assert (not (= var1533 null-var2301)))
(define-const var2124 var2211 var26-METHOD_NEW_PROXY_INSTANCE) ; Statement: r15 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodHandle METHOD_NEW_PROXY_INSTANCE> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1326 var2980) ; Statement: $r14 := @caughtexception 
(assert (not (= var1326 null-var2980)))
(define-const var1351 Bool (ite (= 1 1) true false)) ; Statement: <com.alibaba.fastjson2.util.TypeUtils: boolean METHOD_NEW_PROXY_INSTANCE_ERROR> = 1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var737 var2980) ; Statement: $r8 := @caughtexception 
(assert (not (= var737 null-var2980)))
(define-const var1020 var2414 var2414-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var267 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var267)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var267!1 String)
(assert (= var267!1 ""))
(assert true)
(define-const var367 String (append/672562846 var267!1 "create proxy error : ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create proxy error : ") 
(declare-const var267!2 String)
(assert (= var267!2 (str.++ var267!1 "create proxy error : ")))
(assert true)
(define-const var3102 String (append/-1031950772 var367 (cast-from-ClassObject-to-var1593 var3311))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var367!1 String)
(assert (str.prefixof var367 var367!1))
(assert true)
(define-const var1420 String (toString/-2075883882 var3102)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1020 var1420 var737)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8) 

(declare-const var1020!1 var2414)
(declare-const var1420!1 String)
(declare-const var737!1 var2980)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2414-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1593=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3311=r0, var2301=com.alibaba.fastjson2.JSONObject, var1533=r2, var2211=java.lang.invoke.MethodHandle, var26=com.alibaba.fastjson2.util.TypeUtils, var2124=r15, var2980=java.lang.Throwable, var1326=$r14, var1351=<com.alibaba.fastjson2.util.TypeUtils: boolean METHOD_NEW_PROXY_INSTANCE_ERROR>, var737=$r8, var2414=com.alibaba.fastjson2.JSONException, var1020=$r9, var267=$r10, var367=$r11, var1593=java.lang.Object, var3102=$r12, var1420=$r13}
; {r0=var3311, com.alibaba.fastjson2.JSONObject=var2301, r2=var1533, java.lang.invoke.MethodHandle=var2211, com.alibaba.fastjson2.util.TypeUtils=var26, r15=var2124, java.lang.Throwable=var2980, $r14=var1326, <com.alibaba.fastjson2.util.TypeUtils: boolean METHOD_NEW_PROXY_INSTANCE_ERROR>=var1351, $r8=var737, com.alibaba.fastjson2.JSONException=var2414, $r9=var1020, $r10=var267, $r11=var367, java.lang.Object=var1593, $r12=var3102, $r13=var1420}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r2 := @parameter1: com.alibaba.fastjson2.JSONObject;	r15 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodHandle METHOD_NEW_PROXY_INSTANCE>;	$r14 := @caughtexception;	<com.alibaba.fastjson2.util.TypeUtils: boolean METHOD_NEW_PROXY_INSTANCE_ERROR> = 1;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create proxy error : ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8);	throw $r9
;block_num 3