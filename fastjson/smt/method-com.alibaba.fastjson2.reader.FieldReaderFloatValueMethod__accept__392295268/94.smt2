(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1417 0)
(declare-sort var2188 0)
(declare-sort var3202 0)
(declare-sort var3779 0)
(declare-sort var3118 0)
(declare-sort var120 0)
(declare-sort var452 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3202_toFloatValue/-1806772592 (var2188) Float32)
(declare-fun schema/-488737871 (var3118) var3779)
(declare-fun cast-from-var1417-to-var3118 (var1417) var3118)
(declare-fun var452-init () var452)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3118) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var452 String var3394) void)
(declare-fun cast-from-var120-to-var3394 (var120) var3394)
(declare-const null-var1417 var1417)
(declare-const null-var2188 var2188)
(declare-const null-var3779 var3779)
(declare-const null-var120 var120)
(declare-const var2346 var1417) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod 
(assert (not (= var2346 null-var1417)))
(declare-const var2856 var2188) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2856 null-var2188)))
(declare-const var713 var2188) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var713 null-var2188)))
(define-const var3555 Float32 (var3202_toFloatValue/-1806772592 var713)) ; Statement: f0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: float toFloatValue(java.lang.Object)>(r0) 
(define-const var574 var3779 (schema/-488737871 (cast-from-var1417-to-var3118 var2346))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method> 
(assert (not (= var574 null-var3779))) ; Negate: Cond: $r2 == null  
(declare-const var1625 var120) ; Statement: $r8 := @caughtexception 
(assert (not (= var1625 null-var120)))
(define-const var3167 var452 var452-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3540 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3540)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3540!1 String)
(assert (= var3540!1 ""))
(assert true)
(define-const var2663 String (append/672562846 var3540!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3540!2 String)
(assert (= var3540!2 (str.++ var3540!1 "set ")))
(define-const var2666 String (fieldName/-488737871 (cast-from-var1417-to-var3118 var2346))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var3374 String (append/672562846 var2663 var2666)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2663!1 String)
(assert (= var2663!1 (str.++ var2663 var2666)))
(assert true)
(define-const var2153 String (append/672562846 var3374 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3374!1 String)
(assert (= var3374!1 (str.++ var3374 " error")))
(assert true)
(define-const var2940 String (toString/-2075883882 var2153)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3167 var2940 (cast-from-var120-to-var3394 var1625))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var3167!1 var452)
(declare-const var2940!1 String)
(declare-const var1625!1 var120)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3202_toFloatValue/-1806772592=([java.lang.Object], float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1417-to-var3118=([com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod], com.alibaba.fastjson2.reader.FieldReader), var452-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var120-to-var3394=([java.lang.Exception], java.lang.Throwable)}
; {var1417=com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod, var2346=r1, var2188=java.lang.Object, var2856=r3, var713=r0, var3202=com.alibaba.fastjson2.util.TypeUtils, var3555=f0, var3779=com.alibaba.fastjson2.schema.JSONSchema, var3118=com.alibaba.fastjson2.reader.FieldReader, var574=$r2, var120=java.lang.Exception, var1625=$r8, var452=com.alibaba.fastjson2.JSONException, var3167=$r9, var3540=$r10, var2663=$r12, var2666=$r11, var3374=$r13, var2153=$r14, var2940=$r15, var3394=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod=var1417, r1=var2346, java.lang.Object=var2188, r3=var2856, r0=var713, com.alibaba.fastjson2.util.TypeUtils=var3202, f0=var3555, com.alibaba.fastjson2.schema.JSONSchema=var3779, com.alibaba.fastjson2.reader.FieldReader=var3118, $r2=var574, java.lang.Exception=var120, $r8=var1625, com.alibaba.fastjson2.JSONException=var452, $r9=var3167, $r10=var3540, $r12=var2663, $r11=var2666, $r13=var3374, $r14=var2153, $r15=var2940, java.lang.Throwable=var3394}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	f0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: float toFloatValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2