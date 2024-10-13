(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3277 0)
(declare-sort var3803 0)
(declare-sort var3087 0)
(declare-sort var2534 0)
(declare-sort var2071 0)
(declare-sort var1681 0)
(declare-sort var3472 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readFloatValue/2140018626 (var3803) Float32)
(declare-fun schema/-488737871 (var2071) var2534)
(declare-fun cast-from-var3277-to-var2071 (var3277) var2071)
(declare-fun var3472-init () var3472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2071) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3803 String) String)
(declare-fun <init>/-743866570 (var3472 String var2324) void)
(declare-fun cast-from-var1681-to-var2324 (var1681) var2324)
(declare-const null-var3277 var3277)
(declare-const null-var3803 var3803)
(declare-const null-var3087 var3087)
(declare-const null-var2534 var2534)
(declare-const null-var1681 var1681)
(declare-const var3459 var3277) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod 
(assert (not (= var3459 null-var3277)))
(declare-const var3522 var3803) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3522 null-var3803)))
(declare-const var3211 var3087) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3211 null-var3087)))
(assert true)
(define-const var2171 Float32 (readFloatValue/2140018626 var3522)) ; Statement: f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>() 
(define-const var2503 var2534 (schema/-488737871 (cast-from-var3277-to-var2071 var3459))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method> 
(assert (not (= var2503 null-var2534))) ; Negate: Cond: $r2 == null  
(declare-const var2898 var1681) ; Statement: $r8 := @caughtexception 
(assert (not (= var2898 null-var1681)))
(define-const var2158 var3472 var3472-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3326 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3326)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3326!1 String)
(assert (= var3326!1 ""))
(assert true)
(define-const var3588 String (append/672562846 var3326!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3326!2 String)
(assert (= var3326!2 (str.++ var3326!1 "set ")))
(define-const var315 String (fieldName/-488737871 (cast-from-var3277-to-var2071 var3459))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var1908 String (append/672562846 var3588 var315)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3588!1 String)
(assert (= var3588!1 (str.++ var3588 var315)))
(assert true)
(define-const var3039 String (append/672562846 var1908 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1908!1 String)
(assert (= var1908!1 (str.++ var1908 " error")))
(assert true)
(define-const var2183 String (toString/-2075883882 var3039)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2390 String (info/-1659839707 var3522 var2183)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2158 var2390 (cast-from-var1681-to-var2324 var2898))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2158!1 var3472)
(declare-const var2390!1 String)
(declare-const var2898!1 var1681)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readFloatValue/2140018626=([com.alibaba.fastjson2.JSONReader], float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3277-to-var2071=([com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3472-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1681-to-var2324=([java.lang.Exception], java.lang.Throwable)}
; {var3277=com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod, var3459=r1, var3803=com.alibaba.fastjson2.JSONReader, var3522=r0, var3087=java.lang.Object, var3211=r3, var2171=f0, var2534=com.alibaba.fastjson2.schema.JSONSchema, var2071=com.alibaba.fastjson2.reader.FieldReader, var2503=$r2, var1681=java.lang.Exception, var2898=$r8, var3472=com.alibaba.fastjson2.JSONException, var2158=$r9, var3326=$r10, var3588=$r12, var315=$r11, var1908=$r13, var3039=$r14, var2183=$r15, var2390=$r16, var2324=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod=var3277, r1=var3459, com.alibaba.fastjson2.JSONReader=var3803, r0=var3522, java.lang.Object=var3087, r3=var3211, f0=var2171, com.alibaba.fastjson2.schema.JSONSchema=var2534, com.alibaba.fastjson2.reader.FieldReader=var2071, $r2=var2503, java.lang.Exception=var1681, $r8=var2898, com.alibaba.fastjson2.JSONException=var3472, $r9=var2158, $r10=var3326, $r12=var3588, $r11=var315, $r13=var1908, $r14=var3039, $r15=var2183, $r16=var2390, java.lang.Throwable=var2324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2