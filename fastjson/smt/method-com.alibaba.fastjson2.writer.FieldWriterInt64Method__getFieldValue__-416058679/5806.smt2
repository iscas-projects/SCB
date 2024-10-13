(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2998 0)
(declare-sort var2362 0)
(declare-sort var3607 0)
(declare-sort var1821 0)
(declare-sort var3783 0)
(declare-sort var2721 0)
(declare-sort var3370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var1821) var3607)
(declare-fun cast-from-var2998-to-var1821 (var2998) var1821)
(declare-fun arr-var2362-init () (Array Int var2362))
(declare-fun var2721-init () var2721)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1821) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2721 String var3370) void)
(declare-fun cast-from-var3783-to-var3370 (var3783) var3370)
(declare-const null-var2998 var2998)
(declare-const null-var2362 var2362)
(declare-const null-var3783 var3783)
(declare-const var370 var2998) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt64Method 
(assert (not (= var370 null-var2998)))
(declare-const var3026 var2362) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3026 null-var2362)))
(define-const var2457 var3607 (method/-2048851183 (cast-from-var2998-to-var1821 var370))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt64Method: java.lang.reflect.Method method> 
(define-const var410 (Array Int var2362) arr-var2362-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3147 var3783) ; Statement: $r5 := @caughtexception 
(assert (not (= var3147 null-var3783)))
(define-const var3579 var2721 var2721-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2375 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2375)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2375!1 String)
(assert (= var2375!1 ""))
(assert true)
(define-const var1306 String (append/672562846 var2375!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var2375!2 String)
(assert (= var2375!2 (str.++ var2375!1 "invoke getter method error, ")))
(define-const var2615 String (fieldName/-2048851183 (cast-from-var2998-to-var1821 var370))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt64Method: java.lang.String fieldName> 
(assert true)
(define-const var1149 String (append/672562846 var1306 var2615)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1306!1 String)
(assert (= var1306!1 (str.++ var1306 var2615)))
(assert true)
(define-const var1583 String (toString/-2075883882 var1149)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3579 var1583 (cast-from-var3783-to-var3370 var3147))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3579!1 var2721)
(declare-const var1583!1 String)
(declare-const var3147!1 var3783)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2998-to-var1821=([com.alibaba.fastjson2.writer.FieldWriterInt64Method], com.alibaba.fastjson2.writer.FieldWriter), arr-var2362-init=([], java.lang.Object[]), var2721-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3783-to-var3370=([java.lang.Exception], java.lang.Throwable)}
; {var2998=com.alibaba.fastjson2.writer.FieldWriterInt64Method, var370=r0, var2362=java.lang.Object, var3026=r1, var3607=java.lang.reflect.Method, var1821=com.alibaba.fastjson2.writer.FieldWriter, var2457=$r3, var410=$r2, var3783=java.lang.Exception, var3147=$r5, var2721=com.alibaba.fastjson2.JSONException, var3579=$r6, var2375=$r7, var1306=$r9, var2615=$r8, var1149=$r10, var1583=$r11, var3370=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterInt64Method=var2998, r0=var370, java.lang.Object=var2362, r1=var3026, java.lang.reflect.Method=var3607, com.alibaba.fastjson2.writer.FieldWriter=var1821, $r3=var2457, $r2=var410, java.lang.Exception=var3783, $r5=var3147, com.alibaba.fastjson2.JSONException=var2721, $r6=var3579, $r7=var2375, $r9=var1306, $r8=var2615, $r10=var1149, $r11=var1583, java.lang.Throwable=var3370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt64Method;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt64Method: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt64Method: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2