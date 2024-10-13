(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort var1922 0)
(declare-sort var1353 0)
(declare-sort var2512 0)
(declare-sort var2390 0)
(declare-sort var37 0)
(declare-sort var3441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2512) var1353)
(declare-fun cast-from-var3933-to-var2512 (var3933) var2512)
(declare-fun fieldOffset/-488737871 (var2512) Int)
(declare-fun var37-init () var37)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2512) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var37 String var3441) void)
(declare-fun cast-from-var2390-to-var3441 (var2390) var3441)
(declare-const null-var3933 var3933)
(declare-const null-var1922 var1922)
(declare-const null-Float64 Float64)
(declare-const null-var1353 var1353)
(declare-const null-var2390 var2390)
(declare-const var2159 var3933) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var2159 null-var3933)))
(declare-const var1727 var1922) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1727 null-var1922)))
(declare-const var219 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var219 null-Float64)))
(define-const var3517 var1353 (schema/-488737871 (cast-from-var3933-to-var2512 var2159))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var3517 null-var1353)) ; Cond: $r1 == null 
(define-const var1287 Int (fieldOffset/-488737871 (cast-from-var3933-to-var2512 var2159))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var3837 Int (ite (> var1287 (- 1)) 1 (ite (< var1287 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var3837 0))) ; Negate: Cond: $b1 == 0  
(declare-const var1501 var2390) ; Statement: $r8 := @caughtexception 
(assert (not (= var1501 null-var2390)))
(define-const var921 var37 var37-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3736 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3736)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3736!1 String)
(assert (= var3736!1 ""))
(assert true)
(define-const var605 String (append/672562846 var3736!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3736!2 String)
(assert (= var3736!2 (str.++ var3736!1 "set ")))
(define-const var2990 String (fieldName/-488737871 (cast-from-var3933-to-var2512 var2159))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var2530 String (append/672562846 var605 var2990)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var605!1 String)
(assert (= var605!1 (str.++ var605 var2990)))
(assert true)
(define-const var3138 String (append/672562846 var2530 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2530!1 String)
(assert (= var2530!1 (str.++ var2530 " error")))
(assert true)
(define-const var567 String (toString/-2075883882 var3138)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var921 var567 (cast-from-var2390-to-var3441 var1501))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var921!1 var37)
(declare-const var567!1 String)
(declare-const var1501!1 var2390)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3933-to-var2512=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var37-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2390-to-var3441=([java.lang.Exception], java.lang.Throwable)}
; {var3933=com.alibaba.fastjson2.reader.FieldReaderObjectField, var2159=r0, var1922=java.lang.Object, var1727=r2, var219=d0, var1353=com.alibaba.fastjson2.schema.JSONSchema, var2512=com.alibaba.fastjson2.reader.FieldReader, var3517=$r1, var1287=$l0, var3837=$b1, var2390=java.lang.Exception, var1501=$r8, var37=com.alibaba.fastjson2.JSONException, var921=$r9, var3736=$r10, var605=$r12, var2990=$r11, var2530=$r13, var3138=$r14, var567=$r15, var3441=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var3933, r0=var2159, java.lang.Object=var1922, r2=var1727, d0=var219, com.alibaba.fastjson2.schema.JSONSchema=var1353, com.alibaba.fastjson2.reader.FieldReader=var2512, $r1=var3517, $l0=var1287, $b1=var3837, java.lang.Exception=var2390, $r8=var1501, com.alibaba.fastjson2.JSONException=var37, $r9=var921, $r10=var3736, $r12=var605, $r11=var2990, $r13=var2530, $r14=var3138, $r15=var567, java.lang.Throwable=var3441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	d0 := @parameter1: double;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3