(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3737 0)
(declare-sort var932 0)
(declare-sort var215 0)
(declare-sort var637 0)
(declare-sort var809 0)
(declare-sort var3898 0)
(declare-sort var3417 0)
(declare-sort var470 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBigDecimal/-1756410963 (var932) var637)
(declare-fun schema/-488737871 (var3898) var809)
(declare-fun cast-from-var3737-to-var3898 (var3737) var3898)
(declare-fun var470-init () var470)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3898) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var932 String) String)
(declare-fun <init>/-743866570 (var470 String var1129) void)
(declare-fun cast-from-var3417-to-var1129 (var3417) var1129)
(declare-const null-var3737 var3737)
(declare-const null-var932 var932)
(declare-const null-var215 var215)
(declare-const null-var809 var809)
(declare-const null-var3417 var3417)
(declare-const var2810 var3737) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod 
(assert (not (= var2810 null-var3737)))
(declare-const var768 var932) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var768 null-var932)))
(declare-const var3751 var215) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var3751 null-var215)))
(assert true)
(define-const var208 var637 (readBigDecimal/-1756410963 var768)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal readBigDecimal()>() 
(define-const var2627 var809 (schema/-488737871 (cast-from-var3737-to-var3898 var2810))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method> 
(assert (not (= var2627 null-var809))) ; Negate: Cond: $r3 == null  
(declare-const var3877 var3417) ; Statement: $r8 := @caughtexception 
(assert (not (= var3877 null-var3417)))
(define-const var1847 var470 var470-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var462 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var462)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var462!1 String)
(assert (= var462!1 ""))
(assert true)
(define-const var110 String (append/672562846 var462!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var462!2 String)
(assert (= var462!2 (str.++ var462!1 "set ")))
(define-const var2714 String (fieldName/-488737871 (cast-from-var3737-to-var3898 var2810))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName> 
(assert true)
(define-const var2251 String (append/672562846 var110 var2714)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var110!1 String)
(assert (= var110!1 (str.++ var110 var2714)))
(assert true)
(define-const var2302 String (append/672562846 var2251 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2251!1 String)
(assert (= var2251!1 (str.++ var2251 " error")))
(assert true)
(define-const var1173 String (toString/-2075883882 var2302)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3086 String (info/-1659839707 var768 var1173)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var1847 var3086 (cast-from-var3417-to-var1129 var3877))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var1847!1 var470)
(declare-const var3086!1 String)
(declare-const var3877!1 var3417)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readBigDecimal/-1756410963=([com.alibaba.fastjson2.JSONReader], java.math.BigDecimal), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3737-to-var3898=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod], com.alibaba.fastjson2.reader.FieldReader), var470-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3417-to-var1129=([java.lang.Exception], java.lang.Throwable)}
; {var3737=com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod, var2810=r2, var932=com.alibaba.fastjson2.JSONReader, var768=r0, var215=java.lang.Object, var3751=r4, var637=java.math.BigDecimal, var208=r1, var809=com.alibaba.fastjson2.schema.JSONSchema, var3898=com.alibaba.fastjson2.reader.FieldReader, var2627=$r3, var3417=java.lang.Exception, var3877=$r8, var470=com.alibaba.fastjson2.JSONException, var1847=$r9, var462=$r10, var110=$r12, var2714=$r11, var2251=$r13, var2302=$r14, var1173=$r15, var3086=$r16, var1129=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod=var3737, r2=var2810, com.alibaba.fastjson2.JSONReader=var932, r0=var768, java.lang.Object=var215, r4=var3751, java.math.BigDecimal=var637, r1=var208, com.alibaba.fastjson2.schema.JSONSchema=var809, com.alibaba.fastjson2.reader.FieldReader=var3898, $r3=var2627, java.lang.Exception=var3417, $r8=var3877, com.alibaba.fastjson2.JSONException=var470, $r9=var1847, $r10=var462, $r12=var110, $r11=var2714, $r13=var2251, $r14=var2302, $r15=var1173, $r16=var3086, java.lang.Throwable=var1129}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal readBigDecimal()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2