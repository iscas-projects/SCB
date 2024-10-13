(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var2588 0)
(declare-sort var153 0)
(declare-sort var3906 0)
(declare-sort var948 0)
(declare-sort var2022 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3906) var153)
(declare-fun cast-from-var3381-to-var3906 (var3381) var3906)
(declare-fun fieldOffset/-488737871 (var3906) Int)
(declare-fun var2022-init () var2022)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3906) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2022 String var1271) void)
(declare-fun cast-from-var948-to-var1271 (var948) var1271)
(declare-const null-var3381 var3381)
(declare-const null-var2588 var2588)
(declare-const null-Int Int)
(declare-const null-var153 var153)
(declare-const null-var948 var948)
(declare-const var473 var3381) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var473 null-var3381)))
(declare-const var2564 var2588) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2564 null-var2588)))
(declare-const var2363 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var2363 null-Int)))
(define-const var1386 var153 (schema/-488737871 (cast-from-var3381-to-var3906 var473))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var1386 null-var153)) ; Cond: $r1 == null 
(define-const var1799 Int (fieldOffset/-488737871 (cast-from-var3381-to-var3906 var473))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var1135 Int (ite (> var1799 (- 1)) 1 (ite (< var1799 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var1135 0))) ; Negate: Cond: $b1 == 0  
(declare-const var404 var948) ; Statement: $r8 := @caughtexception 
(assert (not (= var404 null-var948)))
(define-const var2291 var2022 var2022-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1351 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1351)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1351!1 String)
(assert (= var1351!1 ""))
(assert true)
(define-const var3848 String (append/672562846 var1351!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1351!2 String)
(assert (= var1351!2 (str.++ var1351!1 "set ")))
(define-const var3257 String (fieldName/-488737871 (cast-from-var3381-to-var3906 var473))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var257 String (append/672562846 var3848 var3257)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3848!1 String)
(assert (= var3848!1 (str.++ var3848 var3257)))
(assert true)
(define-const var2556 String (append/672562846 var257 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var257!1 String)
(assert (= var257!1 (str.++ var257 " error")))
(assert true)
(define-const var2088 String (toString/-2075883882 var2556)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2291 var2088 (cast-from-var948-to-var1271 var404))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2291!1 var2022)
(declare-const var2088!1 String)
(declare-const var404!1 var948)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3381-to-var3906=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var2022-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var948-to-var1271=([java.lang.Exception], java.lang.Throwable)}
; {var3381=com.alibaba.fastjson2.reader.FieldReaderObjectField, var473=r0, var2588=java.lang.Object, var2564=r2, var2363=c2, var153=com.alibaba.fastjson2.schema.JSONSchema, var3906=com.alibaba.fastjson2.reader.FieldReader, var1386=$r1, var1799=$l0, var1135=$b1, var948=java.lang.Exception, var404=$r8, var2022=com.alibaba.fastjson2.JSONException, var2291=$r9, var1351=$r10, var3848=$r12, var3257=$r11, var257=$r13, var2556=$r14, var2088=$r15, var1271=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var3381, r0=var473, java.lang.Object=var2588, r2=var2564, c2=var2363, com.alibaba.fastjson2.schema.JSONSchema=var153, com.alibaba.fastjson2.reader.FieldReader=var3906, $r1=var1386, $l0=var1799, $b1=var1135, java.lang.Exception=var948, $r8=var404, com.alibaba.fastjson2.JSONException=var2022, $r9=var2291, $r10=var1351, $r12=var3848, $r11=var3257, $r13=var257, $r14=var2556, $r15=var2088, java.lang.Throwable=var1271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	c2 := @parameter1: char;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3