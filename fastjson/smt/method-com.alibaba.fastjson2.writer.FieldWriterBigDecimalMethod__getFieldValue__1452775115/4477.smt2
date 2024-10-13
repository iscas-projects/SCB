(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2315 0)
(declare-sort var2816 0)
(declare-sort var312 0)
(declare-sort var390 0)
(declare-sort var3396 0)
(declare-sort var2806 0)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var390) var312)
(declare-fun cast-from-var2315-to-var390 (var2315) var390)
(declare-fun arr-var2816-init () (Array Int var2816))
(declare-fun var2806-init () var2806)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var390) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2806 String var142) void)
(declare-fun cast-from-var3396-to-var142 (var3396) var142)
(declare-const null-var2315 var2315)
(declare-const null-var2816 var2816)
(declare-const null-var3396 var3396)
(declare-const var3657 var2315) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod 
(assert (not (= var3657 null-var2315)))
(declare-const var3913 var2816) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3913 null-var2816)))
(define-const var2236 var312 (method/-2048851183 (cast-from-var2315-to-var390 var3657))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod: java.lang.reflect.Method method> 
(define-const var3806 (Array Int var2816) arr-var2816-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3450 var3396) ; Statement: $r5 := @caughtexception 
(assert (not (= var3450 null-var3396)))
(define-const var875 var2806 var2806-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3268 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3268)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3268!1 String)
(assert (= var3268!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var3268!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var3268!2 String)
(assert (= var3268!2 (str.++ var3268!1 "invoke getter method error, ")))
(define-const var2084 String (fieldName/-2048851183 (cast-from-var2315-to-var390 var3657))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod: java.lang.String fieldName> 
(assert true)
(define-const var3004 String (append/672562846 var3362 var2084)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var2084)))
(assert true)
(define-const var1633 String (toString/-2075883882 var3004)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var875 var1633 (cast-from-var3396-to-var142 var3450))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var875!1 var2806)
(declare-const var1633!1 String)
(declare-const var3450!1 var3396)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2315-to-var390=([com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var2816-init=([], java.lang.Object[]), var2806-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3396-to-var142=([java.lang.Exception], java.lang.Throwable)}
; {var2315=com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod, var3657=r0, var2816=java.lang.Object, var3913=r1, var312=java.lang.reflect.Method, var390=com.alibaba.fastjson2.writer.FieldWriter, var2236=$r3, var3806=$r2, var3396=java.lang.Exception, var3450=$r5, var2806=com.alibaba.fastjson2.JSONException, var875=$r6, var3268=$r7, var3362=$r9, var2084=$r8, var3004=$r10, var1633=$r11, var142=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod=var2315, r0=var3657, java.lang.Object=var2816, r1=var3913, java.lang.reflect.Method=var312, com.alibaba.fastjson2.writer.FieldWriter=var390, $r3=var2236, $r2=var3806, java.lang.Exception=var3396, $r5=var3450, com.alibaba.fastjson2.JSONException=var2806, $r6=var875, $r7=var3268, $r9=var3362, $r8=var2084, $r10=var3004, $r11=var1633, java.lang.Throwable=var142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterBigDecimalMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2