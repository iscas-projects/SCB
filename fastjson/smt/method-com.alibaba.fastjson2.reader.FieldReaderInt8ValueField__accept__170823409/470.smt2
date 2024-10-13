(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2133 0)
(declare-sort var3160 0)
(declare-sort var2074 0)
(declare-sort var3291 0)
(declare-sort var3435 0)
(declare-sort var3178 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3291) var2074)
(declare-fun cast-from-var2133-to-var3291 (var2133) var3291)
(declare-fun var3178-init () var3178)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3291) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3178 String var2354) void)
(declare-fun cast-from-var3435-to-var2354 (var3435) var2354)
(declare-const null-var2133 var2133)
(declare-const null-var3160 var3160)
(declare-const null-Int Int)
(declare-const null-var2074 var2074)
(declare-const null-var3435 var3435)
(declare-const var1364 var2133) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField 
(assert (not (= var1364 null-var2133)))
(declare-const var2398 var3160) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2398 null-var3160)))
(declare-const var2372 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2372 null-Int)))
(define-const var2403 var2074 (schema/-488737871 (cast-from-var2133-to-var3291 var1364))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field> 
(assert (not (= var2403 null-var2074))) ; Negate: Cond: $r1 == null  
(declare-const var227 var3435) ; Statement: $r5 := @caughtexception 
(assert (not (= var227 null-var3435)))
(define-const var1045 var3178 var3178-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3540 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3540)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3540!1 String)
(assert (= var3540!1 ""))
(assert true)
(define-const var1857 String (append/672562846 var3540!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3540!2 String)
(assert (= var3540!2 (str.++ var3540!1 "set ")))
(define-const var2722 String (fieldName/-488737871 (cast-from-var2133-to-var3291 var1364))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName> 
(assert true)
(define-const var2111 String (append/672562846 var1857 var2722)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1857!1 String)
(assert (= var1857!1 (str.++ var1857 var2722)))
(assert true)
(define-const var926 String (append/672562846 var2111 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2111!1 String)
(assert (= var2111!1 (str.++ var2111 " error")))
(assert true)
(define-const var1315 String (toString/-2075883882 var926)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1045 var1315 (cast-from-var3435-to-var2354 var227))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var1045!1 var3178)
(declare-const var1315!1 String)
(declare-const var227!1 var3435)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2133-to-var3291=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueField], com.alibaba.fastjson2.reader.FieldReader), var3178-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3435-to-var2354=([java.lang.Exception], java.lang.Throwable)}
; {var2133=com.alibaba.fastjson2.reader.FieldReaderInt8ValueField, var1364=r0, var3160=java.lang.Object, var2398=r2, var2372=l0, var2074=com.alibaba.fastjson2.schema.JSONSchema, var3291=com.alibaba.fastjson2.reader.FieldReader, var2403=$r1, var3435=java.lang.Exception, var227=$r5, var3178=com.alibaba.fastjson2.JSONException, var1045=$r6, var3540=$r7, var1857=$r9, var2722=$r8, var2111=$r10, var926=$r11, var1315=$r12, var2354=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueField=var2133, r0=var1364, java.lang.Object=var3160, r2=var2398, l0=var2372, com.alibaba.fastjson2.schema.JSONSchema=var2074, com.alibaba.fastjson2.reader.FieldReader=var3291, $r1=var2403, java.lang.Exception=var3435, $r5=var227, com.alibaba.fastjson2.JSONException=var3178, $r6=var1045, $r7=var3540, $r9=var1857, $r8=var2722, $r10=var2111, $r11=var926, $r12=var1315, java.lang.Throwable=var2354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field>;	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 2