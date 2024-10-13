(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1248 0)
(declare-sort var1532 0)
(declare-sort var1211 0)
(declare-sort var3605 0)
(declare-sort var1941 0)
(declare-sort var913 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3605) var1211)
(declare-fun cast-from-var1248-to-var3605 (var1248) var3605)
(declare-fun arr-var1532-init () (Array Int var1532))
(declare-fun var913-init () var913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3605) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var913 String var66) void)
(declare-fun cast-from-var1941-to-var66 (var1941) var66)
(declare-const null-var1248 var1248)
(declare-const null-var1532 var1532)
(declare-const null-var1941 var1941)
(declare-const var2742 var1248) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt16Method 
(assert (not (= var2742 null-var1248)))
(declare-const var3553 var1532) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3553 null-var1532)))
(define-const var1306 var1211 (method/-2048851183 (cast-from-var1248-to-var3605 var2742))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt16Method: java.lang.reflect.Method method> 
(define-const var1201 (Array Int var1532) arr-var1532-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var639 var1941) ; Statement: $r5 := @caughtexception 
(assert (not (= var639 null-var1941)))
(define-const var3717 var913 var913-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2504 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2504)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2504!1 String)
(assert (= var2504!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var2504!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var2504!2 String)
(assert (= var2504!2 (str.++ var2504!1 "invoke getter method error, ")))
(define-const var2473 String (fieldName/-2048851183 (cast-from-var1248-to-var3605 var2742))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt16Method: java.lang.String fieldName> 
(assert true)
(define-const var3791 String (append/672562846 var3437 var2473)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 var2473)))
(assert true)
(define-const var2178 String (toString/-2075883882 var3791)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3717 var2178 (cast-from-var1941-to-var66 var639))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3717!1 var913)
(declare-const var2178!1 String)
(declare-const var639!1 var1941)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1248-to-var3605=([com.alibaba.fastjson2.writer.FieldWriterInt16Method], com.alibaba.fastjson2.writer.FieldWriter), arr-var1532-init=([], java.lang.Object[]), var913-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1941-to-var66=([java.lang.Exception], java.lang.Throwable)}
; {var1248=com.alibaba.fastjson2.writer.FieldWriterInt16Method, var2742=r0, var1532=java.lang.Object, var3553=r1, var1211=java.lang.reflect.Method, var3605=com.alibaba.fastjson2.writer.FieldWriter, var1306=$r3, var1201=$r2, var1941=java.lang.Exception, var639=$r5, var913=com.alibaba.fastjson2.JSONException, var3717=$r6, var2504=$r7, var3437=$r9, var2473=$r8, var3791=$r10, var2178=$r11, var66=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterInt16Method=var1248, r0=var2742, java.lang.Object=var1532, r1=var3553, java.lang.reflect.Method=var1211, com.alibaba.fastjson2.writer.FieldWriter=var3605, $r3=var1306, $r2=var1201, java.lang.Exception=var1941, $r5=var639, com.alibaba.fastjson2.JSONException=var913, $r6=var3717, $r7=var2504, $r9=var3437, $r8=var2473, $r10=var3791, $r11=var2178, java.lang.Throwable=var66}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt16Method;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt16Method: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt16Method: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2