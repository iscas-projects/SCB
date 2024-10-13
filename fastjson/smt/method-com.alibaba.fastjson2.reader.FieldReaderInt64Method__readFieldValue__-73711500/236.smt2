(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort var3997 0)
(declare-sort var2095 0)
(declare-sort var3858 0)
(declare-sort var1131 0)
(declare-sort var594 0)
(declare-sort var2970 0)
(declare-sort var1653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt64/-1177916662 (var3997) Int)
(declare-fun schema/-488737871 (var1131) var3858)
(declare-fun cast-from-var1941-to-var1131 (var1941) var1131)
(declare-fun var2970-init () var2970)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1131) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3997 String) String)
(declare-fun <init>/-743866570 (var2970 String var1653) void)
(declare-fun cast-from-var594-to-var1653 (var594) var1653)
(declare-const null-var1941 var1941)
(declare-const null-var3997 var3997)
(declare-const null-var2095 var2095)
(declare-const null-var3858 var3858)
(declare-const null-var594 var594)
(declare-const var2308 var1941) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method 
(assert (not (= var2308 null-var1941)))
(declare-const var822 var3997) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var822 null-var3997)))
(declare-const var3290 var2095) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var3290 null-var2095)))
(assert true)
(define-const var312 Int (readInt64/-1177916662 var822)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>() 
(define-const var3537 var3858 (schema/-488737871 (cast-from-var1941-to-var1131 var2308))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method> 
(assert (not (= var3537 null-var3858))) ; Negate: Cond: $r3 == null  
(declare-const var1330 var594) ; Statement: $r8 := @caughtexception 
(assert (not (= var1330 null-var594)))
(define-const var1747 var2970 var2970-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2993 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2993)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2993!1 String)
(assert (= var2993!1 ""))
(assert true)
(define-const var1516 String (append/672562846 var2993!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2993!2 String)
(assert (= var2993!2 (str.++ var2993!1 "set ")))
(define-const var2369 String (fieldName/-488737871 (cast-from-var1941-to-var1131 var2308))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName> 
(assert true)
(define-const var2188 String (append/672562846 var1516 var2369)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1516!1 String)
(assert (= var1516!1 (str.++ var1516 var2369)))
(assert true)
(define-const var3807 String (append/672562846 var2188 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2188!1 String)
(assert (= var2188!1 (str.++ var2188 " error")))
(assert true)
(define-const var3907 String (toString/-2075883882 var3807)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1988 String (info/-1659839707 var822 var3907)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var1747 var1988 (cast-from-var594-to-var1653 var1330))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var1747!1 var2970)
(declare-const var1988!1 String)
(declare-const var1330!1 var594)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt64/-1177916662=([com.alibaba.fastjson2.JSONReader], java.lang.Long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1941-to-var1131=([com.alibaba.fastjson2.reader.FieldReaderInt64Method], com.alibaba.fastjson2.reader.FieldReader), var2970-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var594-to-var1653=([java.lang.Exception], java.lang.Throwable)}
; {var1941=com.alibaba.fastjson2.reader.FieldReaderInt64Method, var2308=r2, var3997=com.alibaba.fastjson2.JSONReader, var822=r0, var2095=java.lang.Object, var3290=r4, var312=r1, var3858=com.alibaba.fastjson2.schema.JSONSchema, var1131=com.alibaba.fastjson2.reader.FieldReader, var3537=$r3, var594=java.lang.Exception, var1330=$r8, var2970=com.alibaba.fastjson2.JSONException, var1747=$r9, var2993=$r10, var1516=$r12, var2369=$r11, var2188=$r13, var3807=$r14, var3907=$r15, var1988=$r16, var1653=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64Method=var1941, r2=var2308, com.alibaba.fastjson2.JSONReader=var3997, r0=var822, java.lang.Object=var2095, r4=var3290, r1=var312, com.alibaba.fastjson2.schema.JSONSchema=var3858, com.alibaba.fastjson2.reader.FieldReader=var1131, $r3=var3537, java.lang.Exception=var594, $r8=var1330, com.alibaba.fastjson2.JSONException=var2970, $r9=var1747, $r10=var2993, $r12=var1516, $r11=var2369, $r13=var2188, $r14=var3807, $r15=var3907, $r16=var1988, java.lang.Throwable=var1653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2