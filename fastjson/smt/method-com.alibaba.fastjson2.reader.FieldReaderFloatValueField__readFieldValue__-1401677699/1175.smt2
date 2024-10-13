(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2147 0)
(declare-sort var2866 0)
(declare-sort var782 0)
(declare-sort var1291 0)
(declare-sort var2229 0)
(declare-sort var3708 0)
(declare-sort var873 0)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readFloatValue/2140018626 (var2866) Float32)
(declare-fun schema/-488737871 (var2229) var1291)
(declare-fun cast-from-var2147-to-var2229 (var2147) var2229)
(declare-fun var873-init () var873)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2229) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2866 String) String)
(declare-fun <init>/-743866570 (var873 String var2249) void)
(declare-fun cast-from-var3708-to-var2249 (var3708) var2249)
(declare-const null-var2147 var2147)
(declare-const null-var2866 var2866)
(declare-const null-var782 var782)
(declare-const null-var1291 var1291)
(declare-const null-var3708 var3708)
(declare-const var2270 var2147) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueField 
(assert (not (= var2270 null-var2147)))
(declare-const var2715 var2866) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2715 null-var2866)))
(declare-const var1248 var782) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1248 null-var782)))
(assert true)
(define-const var3478 Float32 (readFloatValue/2140018626 var2715)) ; Statement: f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>() 
(define-const var1142 var1291 (schema/-488737871 (cast-from-var2147-to-var2229 var2270))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.reflect.Field field> 
(assert (not (= var1142 null-var1291))) ; Negate: Cond: $r2 == null  
(declare-const var2984 var3708) ; Statement: $r6 := @caughtexception 
(assert (not (= var2984 null-var3708)))
(define-const var3864 var873 var873-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1775 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1775)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1775!1 String)
(assert (= var1775!1 ""))
(assert true)
(define-const var1410 String (append/672562846 var1775!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1775!2 String)
(assert (= var1775!2 (str.++ var1775!1 "set ")))
(define-const var2314 String (fieldName/-488737871 (cast-from-var2147-to-var2229 var2270))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.String fieldName> 
(assert true)
(define-const var3126 String (append/672562846 var1410 var2314)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 var2314)))
(assert true)
(define-const var2354 String (append/672562846 var3126 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3126!1 String)
(assert (= var3126!1 (str.++ var3126 " error")))
(assert true)
(define-const var577 String (toString/-2075883882 var2354)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var210 String (info/-1659839707 var2715 var577)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var3864 var210 (cast-from-var3708-to-var2249 var2984))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var3864!1 var873)
(declare-const var210!1 String)
(declare-const var2984!1 var3708)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readFloatValue/2140018626=([com.alibaba.fastjson2.JSONReader], float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2147-to-var2229=([com.alibaba.fastjson2.reader.FieldReaderFloatValueField], com.alibaba.fastjson2.reader.FieldReader), var873-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3708-to-var2249=([java.lang.Exception], java.lang.Throwable)}
; {var2147=com.alibaba.fastjson2.reader.FieldReaderFloatValueField, var2270=r1, var2866=com.alibaba.fastjson2.JSONReader, var2715=r0, var782=java.lang.Object, var1248=r3, var3478=f0, var1291=com.alibaba.fastjson2.schema.JSONSchema, var2229=com.alibaba.fastjson2.reader.FieldReader, var1142=$r2, var3708=java.lang.Exception, var2984=$r6, var873=com.alibaba.fastjson2.JSONException, var3864=$r7, var1775=$r8, var1410=$r10, var2314=$r9, var3126=$r11, var2354=$r12, var577=$r13, var210=$r14, var2249=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueField=var2147, r1=var2270, com.alibaba.fastjson2.JSONReader=var2866, r0=var2715, java.lang.Object=var782, r3=var1248, f0=var3478, com.alibaba.fastjson2.schema.JSONSchema=var1291, com.alibaba.fastjson2.reader.FieldReader=var2229, $r2=var1142, java.lang.Exception=var3708, $r6=var2984, com.alibaba.fastjson2.JSONException=var873, $r7=var3864, $r8=var1775, $r10=var1410, $r9=var2314, $r11=var3126, $r12=var2354, $r13=var577, $r14=var210, java.lang.Throwable=var2249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2