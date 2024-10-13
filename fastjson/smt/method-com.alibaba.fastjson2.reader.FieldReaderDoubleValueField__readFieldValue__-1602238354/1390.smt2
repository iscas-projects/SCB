(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3589 0)
(declare-sort var1408 0)
(declare-sort var1306 0)
(declare-sort var3239 0)
(declare-sort var1297 0)
(declare-sort var3820 0)
(declare-sort var3493 0)
(declare-sort var2750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readDoubleValue/1971910102 (var1408) Float64)
(declare-fun schema/-488737871 (var1297) var3239)
(declare-fun cast-from-var3589-to-var1297 (var3589) var1297)
(declare-fun var3493-init () var3493)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1297) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1408 String) String)
(declare-fun <init>/-743866570 (var3493 String var2750) void)
(declare-fun cast-from-var3820-to-var2750 (var3820) var2750)
(declare-const null-var3589 var3589)
(declare-const null-var1408 var1408)
(declare-const null-var1306 var1306)
(declare-const null-var3239 var3239)
(declare-const null-var3820 var3820)
(declare-const var3070 var3589) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueField 
(assert (not (= var3070 null-var3589)))
(declare-const var1905 var1408) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1905 null-var1408)))
(declare-const var2936 var1306) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2936 null-var1306)))
(assert true)
(define-const var3801 Float64 (readDoubleValue/1971910102 var1905)) ; Statement: d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>() 
(define-const var20 var3239 (schema/-488737871 (cast-from-var3589-to-var1297 var3070))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.reflect.Field field> 
(assert (not (= var20 null-var3239))) ; Negate: Cond: $r2 == null  
(declare-const var2829 var3820) ; Statement: $r6 := @caughtexception 
(assert (not (= var2829 null-var3820)))
(define-const var2512 var3493 var3493-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var875 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var875)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var875!1 String)
(assert (= var875!1 ""))
(assert true)
(define-const var2682 String (append/672562846 var875!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var875!2 String)
(assert (= var875!2 (str.++ var875!1 "set ")))
(define-const var2903 String (fieldName/-488737871 (cast-from-var3589-to-var1297 var3070))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.String fieldName> 
(assert true)
(define-const var1952 String (append/672562846 var2682 var2903)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2682!1 String)
(assert (= var2682!1 (str.++ var2682 var2903)))
(assert true)
(define-const var2820 String (append/672562846 var1952 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1952!1 String)
(assert (= var1952!1 (str.++ var1952 " error")))
(assert true)
(define-const var1544 String (toString/-2075883882 var2820)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3213 String (info/-1659839707 var1905 var1544)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var2512 var3213 (cast-from-var3820-to-var2750 var2829))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var2512!1 var3493)
(declare-const var3213!1 String)
(declare-const var2829!1 var3820)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readDoubleValue/1971910102=([com.alibaba.fastjson2.JSONReader], double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3589-to-var1297=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueField], com.alibaba.fastjson2.reader.FieldReader), var3493-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3820-to-var2750=([java.lang.Exception], java.lang.Throwable)}
; {var3589=com.alibaba.fastjson2.reader.FieldReaderDoubleValueField, var3070=r1, var1408=com.alibaba.fastjson2.JSONReader, var1905=r0, var1306=java.lang.Object, var2936=r3, var3801=d0, var3239=com.alibaba.fastjson2.schema.JSONSchema, var1297=com.alibaba.fastjson2.reader.FieldReader, var20=$r2, var3820=java.lang.Exception, var2829=$r6, var3493=com.alibaba.fastjson2.JSONException, var2512=$r7, var875=$r8, var2682=$r10, var2903=$r9, var1952=$r11, var2820=$r12, var1544=$r13, var3213=$r14, var2750=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueField=var3589, r1=var3070, com.alibaba.fastjson2.JSONReader=var1408, r0=var1905, java.lang.Object=var1306, r3=var2936, d0=var3801, com.alibaba.fastjson2.schema.JSONSchema=var3239, com.alibaba.fastjson2.reader.FieldReader=var1297, $r2=var20, java.lang.Exception=var3820, $r6=var2829, com.alibaba.fastjson2.JSONException=var3493, $r7=var2512, $r8=var875, $r10=var2682, $r9=var2903, $r11=var1952, $r12=var2820, $r13=var1544, $r14=var3213, java.lang.Throwable=var2750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2