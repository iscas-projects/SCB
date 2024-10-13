(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1194 0)
(declare-sort var3163 0)
(declare-sort var948 0)
(declare-sort var372 0)
(declare-sort var1535 0)
(declare-sort var967 0)
(declare-sort var1662 0)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var948_toIntValue/835222454 (var3163) Int)
(declare-fun schema/-488737871 (var1535) var372)
(declare-fun cast-from-var1194-to-var1535 (var1194) var1535)
(declare-fun var1662-init () var1662)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1535) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1662 String var3131) void)
(declare-fun cast-from-var967-to-var3131 (var967) var3131)
(declare-const null-var1194 var1194)
(declare-const null-var3163 var3163)
(declare-const null-var372 var372)
(declare-const null-var967 var967)
(declare-const var349 var1194) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod 
(assert (not (= var349 null-var1194)))
(declare-const var3278 var3163) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3278 null-var3163)))
(declare-const var1283 var3163) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1283 null-var3163)))
(define-const var1229 Int (var948_toIntValue/835222454 var1283)) ; Statement: i0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: int toIntValue(java.lang.Object)>(r0) 
(define-const var1436 var372 (schema/-488737871 (cast-from-var1194-to-var1535 var349))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var1436 null-var372))) ; Negate: Cond: $r2 == null  
(declare-const var1421 var967) ; Statement: $r8 := @caughtexception 
(assert (not (= var1421 null-var967)))
(define-const var234 var1662 var1662-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2088 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2088)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2088!1 String)
(assert (= var2088!1 ""))
(assert true)
(define-const var1565 String (append/672562846 var2088!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2088!2 String)
(assert (= var2088!2 (str.++ var2088!1 "set ")))
(define-const var3865 String (fieldName/-488737871 (cast-from-var1194-to-var1535 var349))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var3628 String (append/672562846 var1565 var3865)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 var3865)))
(assert true)
(define-const var491 String (append/672562846 var3628 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3628!1 String)
(assert (= var3628!1 (str.++ var3628 " error")))
(assert true)
(define-const var3239 String (toString/-2075883882 var491)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var234 var3239 (cast-from-var967-to-var3131 var1421))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var234!1 var1662)
(declare-const var3239!1 String)
(declare-const var1421!1 var967)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var948_toIntValue/835222454=([java.lang.Object], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1194-to-var1535=([com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var1662-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var967-to-var3131=([java.lang.Exception], java.lang.Throwable)}
; {var1194=com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod, var349=r1, var3163=java.lang.Object, var3278=r3, var1283=r0, var948=com.alibaba.fastjson2.util.TypeUtils, var1229=i0, var372=com.alibaba.fastjson2.schema.JSONSchema, var1535=com.alibaba.fastjson2.reader.FieldReader, var1436=$r2, var967=java.lang.Exception, var1421=$r8, var1662=com.alibaba.fastjson2.JSONException, var234=$r9, var2088=$r10, var1565=$r12, var3865=$r11, var3628=$r13, var491=$r14, var3239=$r15, var3131=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod=var1194, r1=var349, java.lang.Object=var3163, r3=var3278, r0=var1283, com.alibaba.fastjson2.util.TypeUtils=var948, i0=var1229, com.alibaba.fastjson2.schema.JSONSchema=var372, com.alibaba.fastjson2.reader.FieldReader=var1535, $r2=var1436, java.lang.Exception=var967, $r8=var1421, com.alibaba.fastjson2.JSONException=var1662, $r9=var234, $r10=var2088, $r12=var1565, $r11=var3865, $r13=var3628, $r14=var491, $r15=var3239, java.lang.Throwable=var3131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	i0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: int toIntValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2