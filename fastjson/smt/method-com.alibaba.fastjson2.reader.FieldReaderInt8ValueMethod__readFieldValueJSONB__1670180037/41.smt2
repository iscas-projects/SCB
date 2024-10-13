(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2148 0)
(declare-sort var2322 0)
(declare-sort var3258 0)
(declare-sort var3484 0)
(declare-sort var3295 0)
(declare-sort var362 0)
(declare-sort var2351 0)
(declare-sort var2423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var2322) Int)
(declare-fun schema/-488737871 (var3295) var3484)
(declare-fun cast-from-var2148-to-var3295 (var2148) var3295)
(declare-fun var2351-init () var2351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3295) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2322 String) String)
(declare-fun <init>/-743866570 (var2351 String var2423) void)
(declare-fun cast-from-var362-to-var2423 (var362) var2423)
(declare-const null-var2148 var2148)
(declare-const null-var2322 var2322)
(declare-const null-var3258 var3258)
(declare-const null-var3484 var3484)
(declare-const null-var362 var362)
(declare-const var905 var2148) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod 
(assert (not (= var905 null-var2148)))
(declare-const var290 var2322) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var290 null-var2322)))
(declare-const var1674 var3258) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1674 null-var3258)))
(assert true)
(define-const var3963 Int (readInt32Value/1995748807 var290)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var3626 var3484 (schema/-488737871 (cast-from-var2148-to-var3295 var905))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3626 null-var3484))) ; Negate: Cond: $r2 == null  
(declare-const var2586 var362) ; Statement: $r8 := @caughtexception 
(assert (not (= var2586 null-var362)))
(define-const var2296 var2351 var2351-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var546 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var546)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var546!1 String)
(assert (= var546!1 ""))
(assert true)
(define-const var3376 String (append/672562846 var546!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var546!2 String)
(assert (= var546!2 (str.++ var546!1 "set ")))
(define-const var1194 String (fieldName/-488737871 (cast-from-var2148-to-var3295 var905))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var670 String (append/672562846 var3376 var1194)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3376!1 String)
(assert (= var3376!1 (str.++ var3376 var1194)))
(assert true)
(define-const var2248 String (append/672562846 var670 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 " error")))
(assert true)
(define-const var737 String (toString/-2075883882 var2248)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1751 String (info/-1659839707 var290 var737)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2296 var1751 (cast-from-var362-to-var2423 var2586))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2296!1 var2351)
(declare-const var1751!1 String)
(declare-const var2586!1 var362)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2148-to-var3295=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2351-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var362-to-var2423=([java.lang.Exception], java.lang.Throwable)}
; {var2148=com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod, var905=r1, var2322=com.alibaba.fastjson2.JSONReader, var290=r0, var3258=java.lang.Object, var1674=r3, var3963=i0, var3484=com.alibaba.fastjson2.schema.JSONSchema, var3295=com.alibaba.fastjson2.reader.FieldReader, var3626=$r2, var362=java.lang.Exception, var2586=$r8, var2351=com.alibaba.fastjson2.JSONException, var2296=$r9, var546=$r10, var3376=$r12, var1194=$r11, var670=$r13, var2248=$r14, var737=$r15, var1751=$r16, var2423=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod=var2148, r1=var905, com.alibaba.fastjson2.JSONReader=var2322, r0=var290, java.lang.Object=var3258, r3=var1674, i0=var3963, com.alibaba.fastjson2.schema.JSONSchema=var3484, com.alibaba.fastjson2.reader.FieldReader=var3295, $r2=var3626, java.lang.Exception=var362, $r8=var2586, com.alibaba.fastjson2.JSONException=var2351, $r9=var2296, $r10=var546, $r12=var3376, $r11=var1194, $r13=var670, $r14=var2248, $r15=var737, $r16=var1751, java.lang.Throwable=var2423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2