(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var1769 0)
(declare-sort var2465 0)
(declare-sort var3183 0)
(declare-sort var3246 0)
(declare-sort var825 0)
(declare-sort var2 0)
(declare-sort var2311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var1769) Int)
(declare-fun schema/-488737871 (var3246) var3183)
(declare-fun cast-from-var727-to-var3246 (var727) var3246)
(declare-fun var2-init () var2)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3246) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1769 String) String)
(declare-fun <init>/-743866570 (var2 String var2311) void)
(declare-fun cast-from-var825-to-var2311 (var825) var2311)
(declare-const null-var727 var727)
(declare-const null-var1769 var1769)
(declare-const null-var2465 var2465)
(declare-const null-var3183 var3183)
(declare-const null-var825 var825)
(declare-const var2591 var727) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method 
(assert (not (= var2591 null-var727)))
(declare-const var2057 var1769) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2057 null-var1769)))
(declare-const var2880 var2465) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2880 null-var2465)))
(assert true)
(define-const var539 Int (readInt32/1162195591 var2057)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var991 var3183 (schema/-488737871 (cast-from-var727-to-var3246 var2591))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method> 
(assert (not (= var991 null-var3183))) ; Negate: Cond: $r3 == null  
(declare-const var198 var825) ; Statement: $r8 := @caughtexception 
(assert (not (= var198 null-var825)))
(define-const var1405 var2 var2-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3481 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3481)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3481!1 String)
(assert (= var3481!1 ""))
(assert true)
(define-const var3457 String (append/672562846 var3481!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3481!2 String)
(assert (= var3481!2 (str.++ var3481!1 "set ")))
(define-const var565 String (fieldName/-488737871 (cast-from-var727-to-var3246 var2591))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName> 
(assert true)
(define-const var944 String (append/672562846 var3457 var565)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3457!1 String)
(assert (= var3457!1 (str.++ var3457 var565)))
(assert true)
(define-const var528 String (append/672562846 var944 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var944!1 String)
(assert (= var944!1 (str.++ var944 " error")))
(assert true)
(define-const var3084 String (toString/-2075883882 var528)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2529 String (info/-1659839707 var2057 var3084)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var1405 var2529 (cast-from-var825-to-var2311 var198))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var1405!1 var2)
(declare-const var2529!1 String)
(declare-const var198!1 var825)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var727-to-var3246=([com.alibaba.fastjson2.reader.FieldReaderInt32Method], com.alibaba.fastjson2.reader.FieldReader), var2-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var825-to-var2311=([java.lang.Exception], java.lang.Throwable)}
; {var727=com.alibaba.fastjson2.reader.FieldReaderInt32Method, var2591=r2, var1769=com.alibaba.fastjson2.JSONReader, var2057=r0, var2465=java.lang.Object, var2880=r4, var539=r1, var3183=com.alibaba.fastjson2.schema.JSONSchema, var3246=com.alibaba.fastjson2.reader.FieldReader, var991=$r3, var825=java.lang.Exception, var198=$r8, var2=com.alibaba.fastjson2.JSONException, var1405=$r9, var3481=$r10, var3457=$r12, var565=$r11, var944=$r13, var528=$r14, var3084=$r15, var2529=$r16, var2311=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32Method=var727, r2=var2591, com.alibaba.fastjson2.JSONReader=var1769, r0=var2057, java.lang.Object=var2465, r4=var2880, r1=var539, com.alibaba.fastjson2.schema.JSONSchema=var3183, com.alibaba.fastjson2.reader.FieldReader=var3246, $r3=var991, java.lang.Exception=var825, $r8=var198, com.alibaba.fastjson2.JSONException=var2, $r9=var1405, $r10=var3481, $r12=var3457, $r11=var565, $r13=var944, $r14=var528, $r15=var3084, $r16=var2529, java.lang.Throwable=var2311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2