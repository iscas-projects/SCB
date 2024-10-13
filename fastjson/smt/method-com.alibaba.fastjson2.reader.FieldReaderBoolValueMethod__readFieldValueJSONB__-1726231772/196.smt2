(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var2758 0)
(declare-sort var1313 0)
(declare-sort var721 0)
(declare-sort var1673 0)
(declare-sort var2087 0)
(declare-sort var3851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBoolValue/1806579152 (var2758) Bool)
(declare-fun var1673-init () var1673)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2087) String)
(declare-fun cast-from-var2065-to-var2087 (var2065) var2087)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2758 String) String)
(declare-fun <init>/-743866570 (var1673 String var3851) void)
(declare-fun cast-from-var721-to-var3851 (var721) var3851)
(declare-const null-var2065 var2065)
(declare-const null-var2758 var2758)
(declare-const null-var1313 var1313)
(declare-const null-var721 var721)
(declare-const var2626 var2065) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod 
(assert (not (= var2626 null-var2065)))
(declare-const var2816 var2758) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2816 null-var2758)))
(declare-const var261 var1313) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var261 null-var1313)))
(assert true)
(define-const var1605 Bool (readBoolValue/1806579152 var2816)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3066 var721) ; Statement: $r6 := @caughtexception 
(assert (not (= var3066 null-var721)))
(define-const var707 var1673 var1673-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var2759 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2759)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2759!1 String)
(assert (= var2759!1 ""))
(assert true)
(define-const var346 String (append/672562846 var2759!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2759!2 String)
(assert (= var2759!2 (str.++ var2759!1 "set ")))
(define-const var2355 String (fieldName/-488737871 (cast-from-var2065-to-var2087 var2626))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var135 String (append/672562846 var346 var2355)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var346!1 String)
(assert (= var346!1 (str.++ var346 var2355)))
(assert true)
(define-const var3099 String (append/672562846 var135 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var135!1 String)
(assert (= var135!1 (str.++ var135 " error")))
(assert true)
(define-const var1420 String (toString/-2075883882 var3099)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var960 String (info/-1659839707 var2816 var1420)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var707 var960 (cast-from-var721-to-var3851 var3066))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var707!1 var1673)
(declare-const var960!1 String)
(declare-const var3066!1 var721)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readBoolValue/1806579152=([com.alibaba.fastjson2.JSONReader], boolean), var1673-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2065-to-var2087=([com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var721-to-var3851=([java.lang.Exception], java.lang.Throwable)}
; {var2065=com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod, var2626=r1, var2758=com.alibaba.fastjson2.JSONReader, var2816=r0, var1313=java.lang.Object, var261=r2, var1605=z0, var721=java.lang.Exception, var3066=$r6, var1673=com.alibaba.fastjson2.JSONException, var707=$r7, var2759=$r8, var346=$r10, var2087=com.alibaba.fastjson2.reader.FieldReader, var2355=$r9, var135=$r11, var3099=$r12, var1420=$r13, var960=$r14, var3851=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod=var2065, r1=var2626, com.alibaba.fastjson2.JSONReader=var2758, r0=var2816, java.lang.Object=var1313, r2=var261, z0=var1605, java.lang.Exception=var721, $r6=var3066, com.alibaba.fastjson2.JSONException=var1673, $r7=var707, $r8=var2759, $r10=var346, com.alibaba.fastjson2.reader.FieldReader=var2087, $r9=var2355, $r11=var135, $r12=var3099, $r13=var1420, $r14=var960, java.lang.Throwable=var3851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2