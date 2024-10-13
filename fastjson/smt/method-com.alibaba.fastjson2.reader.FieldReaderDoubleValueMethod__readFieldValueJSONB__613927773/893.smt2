(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3288 0)
(declare-sort var2032 0)
(declare-sort var1487 0)
(declare-sort var3285 0)
(declare-sort var2266 0)
(declare-sort var3500 0)
(declare-sort var2411 0)
(declare-sort var1944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readDoubleValue/1971910102 (var2032) Float64)
(declare-fun schema/-488737871 (var2266) var3285)
(declare-fun cast-from-var3288-to-var2266 (var3288) var2266)
(declare-fun var2411-init () var2411)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2266) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2032 String) String)
(declare-fun <init>/-743866570 (var2411 String var1944) void)
(declare-fun cast-from-var3500-to-var1944 (var3500) var1944)
(declare-const null-var3288 var3288)
(declare-const null-var2032 var2032)
(declare-const null-var1487 var1487)
(declare-const null-var3285 var3285)
(declare-const null-var3500 var3500)
(declare-const var2 var3288) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod 
(assert (not (= var2 null-var3288)))
(declare-const var216 var2032) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var216 null-var2032)))
(declare-const var2426 var1487) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2426 null-var1487)))
(assert true)
(define-const var1161 Float64 (readDoubleValue/1971910102 var216)) ; Statement: d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>() 
(define-const var3894 var3285 (schema/-488737871 (cast-from-var3288-to-var2266 var2))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3894 null-var3285))) ; Negate: Cond: $r2 == null  
(declare-const var401 var3500) ; Statement: $r8 := @caughtexception 
(assert (not (= var401 null-var3500)))
(define-const var67 var2411 var2411-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var387 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var387)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var387!1 String)
(assert (= var387!1 ""))
(assert true)
(define-const var152 String (append/672562846 var387!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var387!2 String)
(assert (= var387!2 (str.++ var387!1 "set ")))
(define-const var1581 String (fieldName/-488737871 (cast-from-var3288-to-var2266 var2))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var1062 String (append/672562846 var152 var1581)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var152!1 String)
(assert (= var152!1 (str.++ var152 var1581)))
(assert true)
(define-const var2256 String (append/672562846 var1062 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 " error")))
(assert true)
(define-const var3551 String (toString/-2075883882 var2256)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var86 String (info/-1659839707 var216 var3551)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var67 var86 (cast-from-var3500-to-var1944 var401))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var67!1 var2411)
(declare-const var86!1 String)
(declare-const var401!1 var3500)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readDoubleValue/1971910102=([com.alibaba.fastjson2.JSONReader], double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3288-to-var2266=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2411-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3500-to-var1944=([java.lang.Exception], java.lang.Throwable)}
; {var3288=com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod, var2=r1, var2032=com.alibaba.fastjson2.JSONReader, var216=r0, var1487=java.lang.Object, var2426=r3, var1161=d0, var3285=com.alibaba.fastjson2.schema.JSONSchema, var2266=com.alibaba.fastjson2.reader.FieldReader, var3894=$r2, var3500=java.lang.Exception, var401=$r8, var2411=com.alibaba.fastjson2.JSONException, var67=$r9, var387=$r10, var152=$r12, var1581=$r11, var1062=$r13, var2256=$r14, var3551=$r15, var86=$r16, var1944=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod=var3288, r1=var2, com.alibaba.fastjson2.JSONReader=var2032, r0=var216, java.lang.Object=var1487, r3=var2426, d0=var1161, com.alibaba.fastjson2.schema.JSONSchema=var3285, com.alibaba.fastjson2.reader.FieldReader=var2266, $r2=var3894, java.lang.Exception=var3500, $r8=var401, com.alibaba.fastjson2.JSONException=var2411, $r9=var67, $r10=var387, $r12=var152, $r11=var1581, $r13=var1062, $r14=var2256, $r15=var3551, $r16=var86, java.lang.Throwable=var1944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	d0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: double readDoubleValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2