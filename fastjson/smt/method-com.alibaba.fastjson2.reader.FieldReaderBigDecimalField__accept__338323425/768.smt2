(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var534 0)
(declare-sort var1388 0)
(declare-sort var2831 0)
(declare-sort var3453 0)
(declare-sort var2333 0)
(declare-sort var2819 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3453) var2831)
(declare-fun cast-from-var534-to-var3453 (var534) var3453)
(declare-fun var2819-init () var2819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3453) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2819 String var2928) void)
(declare-fun cast-from-var2333-to-var2928 (var2333) var2928)
(declare-const null-var534 var534)
(declare-const null-var1388 var1388)
(declare-const null-Int Int)
(declare-const null-var2831 var2831)
(declare-const null-var2333 var2333)
(declare-const var3765 var534) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField 
(assert (not (= var3765 null-var534)))
(declare-const var296 var1388) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var296 null-var1388)))
(declare-const var3366 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3366 null-Int)))
(define-const var2835 var2831 (schema/-488737871 (cast-from-var534-to-var3453 var3765))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field> 
(assert (not (= var2835 null-var2831))) ; Negate: Cond: $r1 == null  
(declare-const var1953 var2333) ; Statement: $r6 := @caughtexception 
(assert (not (= var1953 null-var2333)))
(define-const var3788 var2819 var2819-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1649 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1649)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1649!1 String)
(assert (= var1649!1 ""))
(assert true)
(define-const var1768 String (append/672562846 var1649!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1649!2 String)
(assert (= var1649!2 (str.++ var1649!1 "set ")))
(define-const var298 String (fieldName/-488737871 (cast-from-var534-to-var3453 var3765))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName> 
(assert true)
(define-const var3494 String (append/672562846 var1768 var298)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var298)))
(assert true)
(define-const var1777 String (append/672562846 var3494 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3494!1 String)
(assert (= var3494!1 (str.++ var3494 " error")))
(assert true)
(define-const var3985 String (toString/-2075883882 var1777)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3788 var3985 (cast-from-var2333-to-var2928 var1953))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var3788!1 var2819)
(declare-const var3985!1 String)
(declare-const var1953!1 var2333)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var534-to-var3453=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalField], com.alibaba.fastjson2.reader.FieldReader), var2819-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2333-to-var2928=([java.lang.Exception], java.lang.Throwable)}
; {var534=com.alibaba.fastjson2.reader.FieldReaderBigDecimalField, var3765=r0, var1388=java.lang.Object, var296=r2, var3366=i0, var2831=com.alibaba.fastjson2.schema.JSONSchema, var3453=com.alibaba.fastjson2.reader.FieldReader, var2835=$r1, var2333=java.lang.Exception, var1953=$r6, var2819=com.alibaba.fastjson2.JSONException, var3788=$r7, var1649=$r8, var1768=$r10, var298=$r9, var3494=$r11, var1777=$r12, var3985=$r13, var2928=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalField=var534, r0=var3765, java.lang.Object=var1388, r2=var296, i0=var3366, com.alibaba.fastjson2.schema.JSONSchema=var2831, com.alibaba.fastjson2.reader.FieldReader=var3453, $r1=var2835, java.lang.Exception=var2333, $r6=var1953, com.alibaba.fastjson2.JSONException=var2819, $r7=var3788, $r8=var1649, $r10=var1768, $r9=var298, $r11=var3494, $r12=var1777, $r13=var3985, java.lang.Throwable=var2928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2