(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1185 0)
(declare-sort var941 0)
(declare-sort var1594 0)
(declare-sort var1943 0)
(declare-sort var2875 0)
(declare-sort var1230 0)
(declare-sort var1454 0)
(declare-sort var1521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readDoubleValue/1971910102 (var941) Float64)
(declare-fun schema/-488737871 (var2875) var1943)
(declare-fun cast-from-var1185-to-var2875 (var1185) var2875)
(declare-fun var1454-init () var1454)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2875) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var941 String) String)
(declare-fun <init>/-743866570 (var1454 String var1521) void)
(declare-fun cast-from-var1230-to-var1521 (var1230) var1521)
(declare-const null-var1185 var1185)
(declare-const null-var941 var941)
(declare-const null-var1594 var1594)
(declare-const null-var1943 var1943)
(declare-const null-var1230 var1230)
(declare-const var1627 var1185) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod 
(assert (not (= var1627 null-var1185)))
(declare-const var861 var941) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var861 null-var941)))
(declare-const var471 var1594) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var471 null-var1594)))
(assert true)
(define-const var830 Float64 (readDoubleValue/1971910102 var861)) ; Statement: d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>() 
(define-const var2880 var1943 (schema/-488737871 (cast-from-var1185-to-var2875 var1627))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method> 
(assert (not (= var2880 null-var1943))) ; Negate: Cond: $r2 == null  
(declare-const var991 var1230) ; Statement: $r8 := @caughtexception 
(assert (not (= var991 null-var1230)))
(define-const var1009 var1454 var1454-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3176 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3176)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3176!1 String)
(assert (= var3176!1 ""))
(assert true)
(define-const var2819 String (append/672562846 var3176!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3176!2 String)
(assert (= var3176!2 (str.++ var3176!1 "set ")))
(define-const var27 String (fieldName/-488737871 (cast-from-var1185-to-var2875 var1627))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2480 String (append/672562846 var2819 var27)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2819!1 String)
(assert (= var2819!1 (str.++ var2819 var27)))
(assert true)
(define-const var1101 String (append/672562846 var2480 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2480!1 String)
(assert (= var2480!1 (str.++ var2480 " error")))
(assert true)
(define-const var994 String (toString/-2075883882 var1101)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2890 String (info/-1659839707 var861 var994)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var1009 var2890 (cast-from-var1230-to-var1521 var991))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var1009!1 var1454)
(declare-const var2890!1 String)
(declare-const var991!1 var1230)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readDoubleValue/1971910102=([com.alibaba.fastjson2.JSONReader], double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1185-to-var2875=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod], com.alibaba.fastjson2.reader.FieldReader), var1454-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1230-to-var1521=([java.lang.Exception], java.lang.Throwable)}
; {var1185=com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod, var1627=r1, var941=com.alibaba.fastjson2.JSONReader, var861=r0, var1594=java.lang.Object, var471=r3, var830=d0, var1943=com.alibaba.fastjson2.schema.JSONSchema, var2875=com.alibaba.fastjson2.reader.FieldReader, var2880=$r2, var1230=java.lang.Exception, var991=$r8, var1454=com.alibaba.fastjson2.JSONException, var1009=$r9, var3176=$r10, var2819=$r12, var27=$r11, var2480=$r13, var1101=$r14, var994=$r15, var2890=$r16, var1521=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod=var1185, r1=var1627, com.alibaba.fastjson2.JSONReader=var941, r0=var861, java.lang.Object=var1594, r3=var471, d0=var830, com.alibaba.fastjson2.schema.JSONSchema=var1943, com.alibaba.fastjson2.reader.FieldReader=var2875, $r2=var2880, java.lang.Exception=var1230, $r8=var991, com.alibaba.fastjson2.JSONException=var1454, $r9=var1009, $r10=var3176, $r12=var2819, $r11=var27, $r13=var2480, $r14=var1101, $r15=var994, $r16=var2890, java.lang.Throwable=var1521}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2