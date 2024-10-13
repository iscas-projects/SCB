(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2225 0)
(declare-sort var1317 0)
(declare-sort var3650 0)
(declare-sort var1999 0)
(declare-sort var3126 0)
(declare-sort var3873 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1999) var3650)
(declare-fun cast-from-var2225-to-var1999 (var2225) var1999)
(declare-fun var3873-init () var3873)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1999) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3873 String var3850) void)
(declare-fun cast-from-var3126-to-var3850 (var3126) var3850)
(declare-const null-var2225 var2225)
(declare-const null-var1317 var1317)
(declare-const null-var3650 var3650)
(declare-const null-var3126 var3126)
(declare-const var1517 var2225) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField 
(assert (not (= var1517 null-var2225)))
(declare-const var221 var1317) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var221 null-var1317)))
(declare-const var918 var1317) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var918 null-var1317)))
(define-const var4 var3650 (schema/-488737871 (cast-from-var2225-to-var1999 var1517))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field> 
(assert (not (= var4 null-var3650))) ; Negate: Cond: $r1 == null  
(declare-const var143 var3126) ; Statement: $r6 := @caughtexception 
(assert (not (= var143 null-var3126)))
(define-const var1218 var3873 var3873-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var2726 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2726)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2726!1 String)
(assert (= var2726!1 ""))
(assert true)
(define-const var2667 String (append/672562846 var2726!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2726!2 String)
(assert (= var2726!2 (str.++ var2726!1 "set ")))
(define-const var2769 String (fieldName/-488737871 (cast-from-var2225-to-var1999 var1517))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName> 
(assert true)
(define-const var3813 String (append/672562846 var2667 var2769)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2667!1 String)
(assert (= var2667!1 (str.++ var2667 var2769)))
(assert true)
(define-const var3482 String (append/672562846 var3813 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 " error")))
(assert true)
(define-const var870 String (toString/-2075883882 var3482)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1218 var870 (cast-from-var3126-to-var3850 var143))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1218!1 var3873)
(declare-const var870!1 String)
(declare-const var143!1 var3126)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2225-to-var1999=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueField], com.alibaba.fastjson2.reader.FieldReader), var3873-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3126-to-var3850=([java.lang.Exception], java.lang.Throwable)}
; {var2225=com.alibaba.fastjson2.reader.FieldReaderInt8ValueField, var1517=r0, var1317=java.lang.Object, var221=r2, var918=r3, var3650=com.alibaba.fastjson2.schema.JSONSchema, var1999=com.alibaba.fastjson2.reader.FieldReader, var4=$r1, var3126=java.lang.Exception, var143=$r6, var3873=com.alibaba.fastjson2.JSONException, var1218=$r7, var2726=$r8, var2667=$r10, var2769=$r9, var3813=$r11, var3482=$r12, var870=$r13, var3850=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueField=var2225, r0=var1517, java.lang.Object=var1317, r2=var221, r3=var918, com.alibaba.fastjson2.schema.JSONSchema=var3650, com.alibaba.fastjson2.reader.FieldReader=var1999, $r1=var4, java.lang.Exception=var3126, $r6=var143, com.alibaba.fastjson2.JSONException=var3873, $r7=var1218, $r8=var2726, $r10=var2667, $r9=var2769, $r11=var3813, $r12=var3482, $r13=var870, java.lang.Throwable=var3850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2