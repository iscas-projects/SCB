(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1434 0)
(declare-sort var200 0)
(declare-sort var1074 0)
(declare-sort var3719 0)
(declare-sort var2041 0)
(declare-sort var341 0)
(declare-sort var2087 0)
(declare-sort var3112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var200) Int)
(declare-fun wasNull/942798865 (var200) Bool)
(declare-fun schema/-488737871 (var2041) var3719)
(declare-fun cast-from-var1434-to-var2041 (var1434) var2041)
(declare-fun var2087-init () var2087)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2041) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var200 String) String)
(declare-fun <init>/-743866570 (var2087 String var3112) void)
(declare-fun cast-from-var341-to-var3112 (var341) var3112)
(declare-const null-var1434 var1434)
(declare-const null-var200 var200)
(declare-const null-var1074 var1074)
(declare-const null-Int Int)
(declare-const null-var3719 var3719)
(declare-const null-var341 var341)
(declare-const var3842 var1434) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field 
(assert (not (= var3842 null-var1434)))
(declare-const var2582 var200) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2582 null-var200)))
(declare-const var3322 var1074) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3322 null-var1074)))
(assert true)
(define-const var2062 Int (readInt32Value/1995748807 var2582)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(assert true)
(define-const var675 Bool (wasNull/942798865 var2582)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull()>() 
 ; Statement: if $z0 == 0 goto $s1 = (short) i0 
(assert (not (= (ite var675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3045 Int null-Int) ; Statement: r15 = null 
 ; Statement: goto [?= $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema>] 
(assert true) ; Non Conditional
(define-const var265 var3719 (schema/-488737871 (cast-from-var1434-to-var2041 var3842))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field> 
(assert (not (= var265 null-var3719))) ; Negate: Cond: $r2 == null  
(declare-const var3077 var341) ; Statement: $r6 := @caughtexception 
(assert (not (= var3077 null-var341)))
(define-const var1115 var2087 var2087-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1265 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1265)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1265!1 String)
(assert (= var1265!1 ""))
(assert true)
(define-const var814 String (append/672562846 var1265!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1265!2 String)
(assert (= var1265!2 (str.++ var1265!1 "set ")))
(define-const var119 String (fieldName/-488737871 (cast-from-var1434-to-var2041 var3842))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName> 
(assert true)
(define-const var2305 String (append/672562846 var814 var119)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var814!1 String)
(assert (= var814!1 (str.++ var814 var119)))
(assert true)
(define-const var3101 String (append/672562846 var2305 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2305!1 String)
(assert (= var2305!1 (str.++ var2305 " error")))
(assert true)
(define-const var3768 String (toString/-2075883882 var3101)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3224 String (info/-1659839707 var2582 var3768)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var1115 var3224 (cast-from-var341-to-var3112 var3077))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1115!1 var2087)
(declare-const var3224!1 String)
(declare-const var3077!1 var341)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), wasNull/942798865=([com.alibaba.fastjson2.JSONReader], boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1434-to-var2041=([com.alibaba.fastjson2.reader.FieldReaderInt16Field], com.alibaba.fastjson2.reader.FieldReader), var2087-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var341-to-var3112=([java.lang.Exception], java.lang.Throwable)}
; {var1434=com.alibaba.fastjson2.reader.FieldReaderInt16Field, var3842=r1, var200=com.alibaba.fastjson2.JSONReader, var2582=r0, var1074=java.lang.Object, var3322=r3, var2062=i0, var675=$z0, var3045=r15, var3719=com.alibaba.fastjson2.schema.JSONSchema, var2041=com.alibaba.fastjson2.reader.FieldReader, var265=$r2, var341=java.lang.Exception, var3077=$r6, var2087=com.alibaba.fastjson2.JSONException, var1115=$r7, var1265=$r8, var814=$r10, var119=$r9, var2305=$r11, var3101=$r12, var3768=$r13, var3224=$r14, var3112=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16Field=var1434, r1=var3842, com.alibaba.fastjson2.JSONReader=var200, r0=var2582, java.lang.Object=var1074, r3=var3322, i0=var2062, $z0=var675, r15=var3045, com.alibaba.fastjson2.schema.JSONSchema=var3719, com.alibaba.fastjson2.reader.FieldReader=var2041, $r2=var265, java.lang.Exception=var341, $r6=var3077, com.alibaba.fastjson2.JSONException=var2087, $r7=var1115, $r8=var1265, $r10=var814, $r9=var119, $r11=var2305, $r12=var3101, $r13=var3768, $r14=var3224, java.lang.Throwable=var3112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull()>();	if $z0 == 0 goto $s1 = (short) i0;	r15 = null;	goto [?= $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema>];	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 4