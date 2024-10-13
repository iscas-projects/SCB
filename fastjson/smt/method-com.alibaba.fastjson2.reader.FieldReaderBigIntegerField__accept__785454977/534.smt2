(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2549 0)
(declare-sort var3872 0)
(declare-sort var2728 0)
(declare-sort var3193 0)
(declare-sort var3965 0)
(declare-sort var3190 0)
(declare-sort var2598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3193) var2728)
(declare-fun cast-from-var2549-to-var3193 (var2549) var3193)
(declare-fun var3190-init () var3190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3193) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3190 String var2598) void)
(declare-fun cast-from-var3965-to-var2598 (var3965) var2598)
(declare-const null-var2549 var2549)
(declare-const null-var3872 var3872)
(declare-const null-Int Int)
(declare-const null-var2728 var2728)
(declare-const null-var3965 var3965)
(declare-const var3230 var2549) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField 
(assert (not (= var3230 null-var2549)))
(declare-const var2145 var3872) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2145 null-var3872)))
(declare-const var148 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var148 null-Int)))
(define-const var2131 var2728 (schema/-488737871 (cast-from-var2549-to-var3193 var3230))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field> 
(assert (not (= var2131 null-var2728))) ; Negate: Cond: $r1 == null  
(declare-const var1864 var3965) ; Statement: $r6 := @caughtexception 
(assert (not (= var1864 null-var3965)))
(define-const var342 var3190 var3190-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var2342 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2342)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2342!1 String)
(assert (= var2342!1 ""))
(assert true)
(define-const var3760 String (append/672562846 var2342!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 "set ")))
(define-const var2514 String (fieldName/-488737871 (cast-from-var2549-to-var3193 var3230))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName> 
(assert true)
(define-const var1844 String (append/672562846 var3760 var2514)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3760!1 String)
(assert (= var3760!1 (str.++ var3760 var2514)))
(assert true)
(define-const var3911 String (append/672562846 var1844 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 " error")))
(assert true)
(define-const var6 String (toString/-2075883882 var3911)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var342 var6 (cast-from-var3965-to-var2598 var1864))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var342!1 var3190)
(declare-const var6!1 String)
(declare-const var1864!1 var3965)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2549-to-var3193=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerField], com.alibaba.fastjson2.reader.FieldReader), var3190-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3965-to-var2598=([java.lang.Exception], java.lang.Throwable)}
; {var2549=com.alibaba.fastjson2.reader.FieldReaderBigIntegerField, var3230=r0, var3872=java.lang.Object, var2145=r2, var148=l0, var2728=com.alibaba.fastjson2.schema.JSONSchema, var3193=com.alibaba.fastjson2.reader.FieldReader, var2131=$r1, var3965=java.lang.Exception, var1864=$r6, var3190=com.alibaba.fastjson2.JSONException, var342=$r7, var2342=$r8, var3760=$r10, var2514=$r9, var1844=$r11, var3911=$r12, var6=$r13, var2598=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerField=var2549, r0=var3230, java.lang.Object=var3872, r2=var2145, l0=var148, com.alibaba.fastjson2.schema.JSONSchema=var2728, com.alibaba.fastjson2.reader.FieldReader=var3193, $r1=var2131, java.lang.Exception=var3965, $r6=var1864, com.alibaba.fastjson2.JSONException=var3190, $r7=var342, $r8=var2342, $r10=var3760, $r9=var2514, $r11=var1844, $r12=var3911, $r13=var6, java.lang.Throwable=var2598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2