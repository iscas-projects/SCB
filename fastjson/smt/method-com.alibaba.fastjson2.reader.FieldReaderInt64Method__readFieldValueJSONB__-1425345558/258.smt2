(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var561 0)
(declare-sort var119 0)
(declare-sort var1480 0)
(declare-sort var2056 0)
(declare-sort var694 0)
(declare-sort var3537 0)
(declare-sort var1303 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt64/-1177916662 (var119) Int)
(declare-fun schema/-488737871 (var694) var2056)
(declare-fun cast-from-var561-to-var694 (var561) var694)
(declare-fun var1303-init () var1303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var694) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var119 String) String)
(declare-fun <init>/-743866570 (var1303 String var500) void)
(declare-fun cast-from-var3537-to-var500 (var3537) var500)
(declare-const null-var561 var561)
(declare-const null-var119 var119)
(declare-const null-var1480 var1480)
(declare-const null-var2056 var2056)
(declare-const null-var3537 var3537)
(declare-const var1914 var561) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method 
(assert (not (= var1914 null-var561)))
(declare-const var2542 var119) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2542 null-var119)))
(declare-const var533 var1480) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var533 null-var1480)))
(assert true)
(define-const var155 Int (readInt64/-1177916662 var2542)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>() 
(define-const var937 var2056 (schema/-488737871 (cast-from-var561-to-var694 var1914))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method> 
(assert (not (= var937 null-var2056))) ; Negate: Cond: $r3 == null  
(declare-const var3587 var3537) ; Statement: $r8 := @caughtexception 
(assert (not (= var3587 null-var3537)))
(define-const var363 var1303 var1303-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2029 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2029)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2029!1 String)
(assert (= var2029!1 ""))
(assert true)
(define-const var278 String (append/672562846 var2029!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2029!2 String)
(assert (= var2029!2 (str.++ var2029!1 "set ")))
(define-const var122 String (fieldName/-488737871 (cast-from-var561-to-var694 var1914))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName> 
(assert true)
(define-const var3744 String (append/672562846 var278 var122)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var278!1 String)
(assert (= var278!1 (str.++ var278 var122)))
(assert true)
(define-const var1913 String (append/672562846 var3744 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3744!1 String)
(assert (= var3744!1 (str.++ var3744 " error")))
(assert true)
(define-const var1577 String (toString/-2075883882 var1913)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2501 String (info/-1659839707 var2542 var1577)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var363 var2501 (cast-from-var3537-to-var500 var3587))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var363!1 var1303)
(declare-const var2501!1 String)
(declare-const var3587!1 var3537)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt64/-1177916662=([com.alibaba.fastjson2.JSONReader], java.lang.Long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var561-to-var694=([com.alibaba.fastjson2.reader.FieldReaderInt64Method], com.alibaba.fastjson2.reader.FieldReader), var1303-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3537-to-var500=([java.lang.Exception], java.lang.Throwable)}
; {var561=com.alibaba.fastjson2.reader.FieldReaderInt64Method, var1914=r2, var119=com.alibaba.fastjson2.JSONReader, var2542=r0, var1480=java.lang.Object, var533=r4, var155=r1, var2056=com.alibaba.fastjson2.schema.JSONSchema, var694=com.alibaba.fastjson2.reader.FieldReader, var937=$r3, var3537=java.lang.Exception, var3587=$r8, var1303=com.alibaba.fastjson2.JSONException, var363=$r9, var2029=$r10, var278=$r12, var122=$r11, var3744=$r13, var1913=$r14, var1577=$r15, var2501=$r16, var500=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64Method=var561, r2=var1914, com.alibaba.fastjson2.JSONReader=var119, r0=var2542, java.lang.Object=var1480, r4=var533, r1=var155, com.alibaba.fastjson2.schema.JSONSchema=var2056, com.alibaba.fastjson2.reader.FieldReader=var694, $r3=var937, java.lang.Exception=var3537, $r8=var3587, com.alibaba.fastjson2.JSONException=var1303, $r9=var363, $r10=var2029, $r12=var278, $r11=var122, $r13=var3744, $r14=var1913, $r15=var1577, $r16=var2501, java.lang.Throwable=var500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2