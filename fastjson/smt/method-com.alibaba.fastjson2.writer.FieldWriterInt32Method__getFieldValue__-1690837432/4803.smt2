(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1134 0)
(declare-sort var730 0)
(declare-sort var3366 0)
(declare-sort var2941 0)
(declare-sort var3852 0)
(declare-sort var2085 0)
(declare-sort var2131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var2941) var3366)
(declare-fun cast-from-var1134-to-var2941 (var1134) var2941)
(declare-fun arr-var730-init () (Array Int var730))
(declare-fun var2085-init () var2085)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var2941) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2085 String var2131) void)
(declare-fun cast-from-var3852-to-var2131 (var3852) var2131)
(declare-const null-var1134 var1134)
(declare-const null-var730 var730)
(declare-const null-var3852 var3852)
(declare-const var533 var1134) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt32Method 
(assert (not (= var533 null-var1134)))
(declare-const var1219 var730) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1219 null-var730)))
(define-const var1653 var3366 (method/-2048851183 (cast-from-var1134-to-var2941 var533))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt32Method: java.lang.reflect.Method method> 
(define-const var1748 (Array Int var730) arr-var730-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var477 var3852) ; Statement: $r5 := @caughtexception 
(assert (not (= var477 null-var3852)))
(define-const var219 var2085 var2085-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3891 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3891)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3891!1 String)
(assert (= var3891!1 ""))
(assert true)
(define-const var76 String (append/672562846 var3891!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var3891!2 String)
(assert (= var3891!2 (str.++ var3891!1 "invoke getter method error, ")))
(define-const var1674 String (fieldName/-2048851183 (cast-from-var1134-to-var2941 var533))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt32Method: java.lang.String fieldName> 
(assert true)
(define-const var2010 String (append/672562846 var76 var1674)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var76!1 String)
(assert (= var76!1 (str.++ var76 var1674)))
(assert true)
(define-const var26 String (toString/-2075883882 var2010)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var219 var26 (cast-from-var3852-to-var2131 var477))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var219!1 var2085)
(declare-const var26!1 String)
(declare-const var477!1 var3852)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1134-to-var2941=([com.alibaba.fastjson2.writer.FieldWriterInt32Method], com.alibaba.fastjson2.writer.FieldWriter), arr-var730-init=([], java.lang.Object[]), var2085-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3852-to-var2131=([java.lang.Exception], java.lang.Throwable)}
; {var1134=com.alibaba.fastjson2.writer.FieldWriterInt32Method, var533=r0, var730=java.lang.Object, var1219=r1, var3366=java.lang.reflect.Method, var2941=com.alibaba.fastjson2.writer.FieldWriter, var1653=$r3, var1748=$r2, var3852=java.lang.Exception, var477=$r5, var2085=com.alibaba.fastjson2.JSONException, var219=$r6, var3891=$r7, var76=$r9, var1674=$r8, var2010=$r10, var26=$r11, var2131=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterInt32Method=var1134, r0=var533, java.lang.Object=var730, r1=var1219, java.lang.reflect.Method=var3366, com.alibaba.fastjson2.writer.FieldWriter=var2941, $r3=var1653, $r2=var1748, java.lang.Exception=var3852, $r5=var477, com.alibaba.fastjson2.JSONException=var2085, $r6=var219, $r7=var3891, $r9=var76, $r8=var1674, $r10=var2010, $r11=var26, java.lang.Throwable=var2131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt32Method;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt32Method: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt32Method: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2