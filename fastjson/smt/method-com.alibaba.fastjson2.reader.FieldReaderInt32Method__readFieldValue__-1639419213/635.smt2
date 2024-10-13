(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var370 0)
(declare-sort var382 0)
(declare-sort var1097 0)
(declare-sort var3258 0)
(declare-sort var2335 0)
(declare-sort var3448 0)
(declare-sort var405 0)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var382) Int)
(declare-fun schema/-488737871 (var2335) var3258)
(declare-fun cast-from-var370-to-var2335 (var370) var2335)
(declare-fun var405-init () var405)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2335) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var382 String) String)
(declare-fun <init>/-743866570 (var405 String var186) void)
(declare-fun cast-from-var3448-to-var186 (var3448) var186)
(declare-const null-var370 var370)
(declare-const null-var382 var382)
(declare-const null-var1097 var1097)
(declare-const null-var3258 var3258)
(declare-const null-var3448 var3448)
(declare-const var1234 var370) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method 
(assert (not (= var1234 null-var370)))
(declare-const var295 var382) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var295 null-var382)))
(declare-const var1875 var1097) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1875 null-var1097)))
(assert true)
(define-const var150 Int (readInt32/1162195591 var295)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var1740 var3258 (schema/-488737871 (cast-from-var370-to-var2335 var1234))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method> 
(assert (not (= var1740 null-var3258))) ; Negate: Cond: $r3 == null  
(declare-const var2144 var3448) ; Statement: $r8 := @caughtexception 
(assert (not (= var2144 null-var3448)))
(define-const var23 var405 var405-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2592 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2592)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2592!1 String)
(assert (= var2592!1 ""))
(assert true)
(define-const var971 String (append/672562846 var2592!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2592!2 String)
(assert (= var2592!2 (str.++ var2592!1 "set ")))
(define-const var2840 String (fieldName/-488737871 (cast-from-var370-to-var2335 var1234))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName> 
(assert true)
(define-const var1457 String (append/672562846 var971 var2840)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var971!1 String)
(assert (= var971!1 (str.++ var971 var2840)))
(assert true)
(define-const var3805 String (append/672562846 var1457 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1457!1 String)
(assert (= var1457!1 (str.++ var1457 " error")))
(assert true)
(define-const var504 String (toString/-2075883882 var3805)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2948 String (info/-1659839707 var295 var504)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var23 var2948 (cast-from-var3448-to-var186 var2144))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var23!1 var405)
(declare-const var2948!1 String)
(declare-const var2144!1 var3448)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var370-to-var2335=([com.alibaba.fastjson2.reader.FieldReaderInt32Method], com.alibaba.fastjson2.reader.FieldReader), var405-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3448-to-var186=([java.lang.Exception], java.lang.Throwable)}
; {var370=com.alibaba.fastjson2.reader.FieldReaderInt32Method, var1234=r2, var382=com.alibaba.fastjson2.JSONReader, var295=r0, var1097=java.lang.Object, var1875=r4, var150=r1, var3258=com.alibaba.fastjson2.schema.JSONSchema, var2335=com.alibaba.fastjson2.reader.FieldReader, var1740=$r3, var3448=java.lang.Exception, var2144=$r8, var405=com.alibaba.fastjson2.JSONException, var23=$r9, var2592=$r10, var971=$r12, var2840=$r11, var1457=$r13, var3805=$r14, var504=$r15, var2948=$r16, var186=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32Method=var370, r2=var1234, com.alibaba.fastjson2.JSONReader=var382, r0=var295, java.lang.Object=var1097, r4=var1875, r1=var150, com.alibaba.fastjson2.schema.JSONSchema=var3258, com.alibaba.fastjson2.reader.FieldReader=var2335, $r3=var1740, java.lang.Exception=var3448, $r8=var2144, com.alibaba.fastjson2.JSONException=var405, $r9=var23, $r10=var2592, $r12=var971, $r11=var2840, $r13=var1457, $r14=var3805, $r15=var504, $r16=var2948, java.lang.Throwable=var186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2