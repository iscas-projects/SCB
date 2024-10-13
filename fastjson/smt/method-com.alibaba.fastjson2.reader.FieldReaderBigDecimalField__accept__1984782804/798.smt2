(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var2383 0)
(declare-sort var619 0)
(declare-sort var3357 0)
(declare-sort var3604 0)
(declare-sort var3274 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3357) var619)
(declare-fun cast-from-var433-to-var3357 (var433) var3357)
(declare-fun var3274-init () var3274)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3357) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3274 String var2713) void)
(declare-fun cast-from-var3604-to-var2713 (var3604) var2713)
(declare-const null-var433 var433)
(declare-const null-var2383 var2383)
(declare-const null-Int Int)
(declare-const null-var619 var619)
(declare-const null-var3604 var3604)
(declare-const var2679 var433) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField 
(assert (not (= var2679 null-var433)))
(declare-const var3709 var2383) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3709 null-var2383)))
(declare-const var1678 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1678 null-Int)))
(define-const var3056 var619 (schema/-488737871 (cast-from-var433-to-var3357 var2679))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field> 
(assert (not (= var3056 null-var619))) ; Negate: Cond: $r1 == null  
(declare-const var1939 var3604) ; Statement: $r6 := @caughtexception 
(assert (not (= var1939 null-var3604)))
(define-const var1934 var3274 var3274-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var731 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var731)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var731!1 String)
(assert (= var731!1 ""))
(assert true)
(define-const var1230 String (append/672562846 var731!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var731!2 String)
(assert (= var731!2 (str.++ var731!1 "set ")))
(define-const var1956 String (fieldName/-488737871 (cast-from-var433-to-var3357 var2679))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName> 
(assert true)
(define-const var915 String (append/672562846 var1230 var1956)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1230!1 String)
(assert (= var1230!1 (str.++ var1230 var1956)))
(assert true)
(define-const var894 String (append/672562846 var915 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var915!1 String)
(assert (= var915!1 (str.++ var915 " error")))
(assert true)
(define-const var814 String (toString/-2075883882 var894)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1934 var814 (cast-from-var3604-to-var2713 var1939))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1934!1 var3274)
(declare-const var814!1 String)
(declare-const var1939!1 var3604)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var433-to-var3357=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalField], com.alibaba.fastjson2.reader.FieldReader), var3274-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3604-to-var2713=([java.lang.Exception], java.lang.Throwable)}
; {var433=com.alibaba.fastjson2.reader.FieldReaderBigDecimalField, var2679=r0, var2383=java.lang.Object, var3709=r2, var1678=l0, var619=com.alibaba.fastjson2.schema.JSONSchema, var3357=com.alibaba.fastjson2.reader.FieldReader, var3056=$r1, var3604=java.lang.Exception, var1939=$r6, var3274=com.alibaba.fastjson2.JSONException, var1934=$r7, var731=$r8, var1230=$r10, var1956=$r9, var915=$r11, var894=$r12, var814=$r13, var2713=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalField=var433, r0=var2679, java.lang.Object=var2383, r2=var3709, l0=var1678, com.alibaba.fastjson2.schema.JSONSchema=var619, com.alibaba.fastjson2.reader.FieldReader=var3357, $r1=var3056, java.lang.Exception=var3604, $r6=var1939, com.alibaba.fastjson2.JSONException=var3274, $r7=var1934, $r8=var731, $r10=var1230, $r9=var1956, $r11=var915, $r12=var894, $r13=var814, java.lang.Throwable=var2713}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2