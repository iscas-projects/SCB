(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1353 0)
(declare-sort var1014 0)
(declare-sort var2433 0)
(declare-sort var3825 0)
(declare-sort var362 0)
(declare-sort var923 0)
(declare-sort var844 0)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var1014) Int)
(declare-fun schema/-488737871 (var362) var3825)
(declare-fun cast-from-var1353-to-var362 (var1353) var362)
(declare-fun var844-init () var844)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var362) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1014 String) String)
(declare-fun <init>/-743866570 (var844 String var1664) void)
(declare-fun cast-from-var923-to-var1664 (var923) var1664)
(declare-const null-var1353 var1353)
(declare-const null-var1014 var1014)
(declare-const null-var2433 var2433)
(declare-const null-var3825 var3825)
(declare-const null-var923 var923)
(declare-const var1958 var1353) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Field 
(assert (not (= var1958 null-var1353)))
(declare-const var3056 var1014) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3056 null-var1014)))
(declare-const var127 var2433) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var127 null-var2433)))
(assert true)
(define-const var1376 Int (readInt32/1162195591 var3056)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var1400 var3825 (schema/-488737871 (cast-from-var1353-to-var362 var1958))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.reflect.Field field> 
(assert (not (= var1400 null-var3825))) ; Negate: Cond: $r3 == null  
(declare-const var3047 var923) ; Statement: $r7 := @caughtexception 
(assert (not (= var3047 null-var923)))
(define-const var3641 var844 var844-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2866 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2866)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2866!1 String)
(assert (= var2866!1 ""))
(assert true)
(define-const var1944 String (append/672562846 var2866!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2866!2 String)
(assert (= var2866!2 (str.++ var2866!1 "set ")))
(define-const var2220 String (fieldName/-488737871 (cast-from-var1353-to-var362 var1958))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.String fieldName> 
(assert true)
(define-const var3120 String (append/672562846 var1944 var2220)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1944!1 String)
(assert (= var1944!1 (str.++ var1944 var2220)))
(assert true)
(define-const var529 String (append/672562846 var3120 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3120!1 String)
(assert (= var3120!1 (str.++ var3120 " error")))
(assert true)
(define-const var1862 String (toString/-2075883882 var529)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3147 String (info/-1659839707 var3056 var1862)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var3641 var3147 (cast-from-var923-to-var1664 var3047))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var3641!1 var844)
(declare-const var3147!1 String)
(declare-const var3047!1 var923)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1353-to-var362=([com.alibaba.fastjson2.reader.FieldReaderInt8Field], com.alibaba.fastjson2.reader.FieldReader), var844-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var923-to-var1664=([java.lang.Exception], java.lang.Throwable)}
; {var1353=com.alibaba.fastjson2.reader.FieldReaderInt8Field, var1958=r2, var1014=com.alibaba.fastjson2.JSONReader, var3056=r0, var2433=java.lang.Object, var127=r4, var1376=r1, var3825=com.alibaba.fastjson2.schema.JSONSchema, var362=com.alibaba.fastjson2.reader.FieldReader, var1400=$r3, var923=java.lang.Exception, var3047=$r7, var844=com.alibaba.fastjson2.JSONException, var3641=$r8, var2866=$r9, var1944=$r11, var2220=$r10, var3120=$r12, var529=$r13, var1862=$r14, var3147=$r15, var1664=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8Field=var1353, r2=var1958, com.alibaba.fastjson2.JSONReader=var1014, r0=var3056, java.lang.Object=var2433, r4=var127, r1=var1376, com.alibaba.fastjson2.schema.JSONSchema=var3825, com.alibaba.fastjson2.reader.FieldReader=var362, $r3=var1400, java.lang.Exception=var923, $r7=var3047, com.alibaba.fastjson2.JSONException=var844, $r8=var3641, $r9=var2866, $r11=var1944, $r10=var2220, $r12=var3120, $r13=var529, $r14=var1862, $r15=var3147, java.lang.Throwable=var1664}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Field;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2