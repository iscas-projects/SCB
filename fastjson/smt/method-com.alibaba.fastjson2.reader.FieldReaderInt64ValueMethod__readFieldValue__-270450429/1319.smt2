(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1184 0)
(declare-sort var1198 0)
(declare-sort var2454 0)
(declare-sort var2287 0)
(declare-sort var787 0)
(declare-sort var2751 0)
(declare-sort var2998 0)
(declare-sort var1688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt64Value/-1923595893 (var1198) Int)
(declare-fun schema/-488737871 (var787) var2287)
(declare-fun cast-from-var1184-to-var787 (var1184) var787)
(declare-fun var2998-init () var2998)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var787) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1198 String) String)
(declare-fun <init>/-743866570 (var2998 String var1688) void)
(declare-fun cast-from-var2751-to-var1688 (var2751) var1688)
(declare-const null-var1184 var1184)
(declare-const null-var1198 var1198)
(declare-const null-var2454 var2454)
(declare-const null-var2287 var2287)
(declare-const null-var2751 var2751)
(declare-const var1601 var1184) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod 
(assert (not (= var1601 null-var1184)))
(declare-const var1937 var1198) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1937 null-var1198)))
(declare-const var1068 var2454) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1068 null-var2454)))
(assert true)
(define-const var1641 Int (readInt64Value/-1923595893 var1937)) ; Statement: l0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readInt64Value()>() 
(define-const var3034 var2287 (schema/-488737871 (cast-from-var1184-to-var787 var1601))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3034 null-var2287))) ; Negate: Cond: $r2 == null  
(declare-const var3132 var2751) ; Statement: $r8 := @caughtexception 
(assert (not (= var3132 null-var2751)))
(define-const var609 var2998 var2998-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var630 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var630)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var630!1 String)
(assert (= var630!1 ""))
(assert true)
(define-const var1872 String (append/672562846 var630!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var630!2 String)
(assert (= var630!2 (str.++ var630!1 "set ")))
(define-const var1647 String (fieldName/-488737871 (cast-from-var1184-to-var787 var1601))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2094 String (append/672562846 var1872 var1647)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 var1647)))
(assert true)
(define-const var1217 String (append/672562846 var2094 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2094!1 String)
(assert (= var2094!1 (str.++ var2094 " error")))
(assert true)
(define-const var539 String (toString/-2075883882 var1217)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3891 String (info/-1659839707 var1937 var539)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var609 var3891 (cast-from-var2751-to-var1688 var3132))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var609!1 var2998)
(declare-const var3891!1 String)
(declare-const var3132!1 var2751)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt64Value/-1923595893=([com.alibaba.fastjson2.JSONReader], long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1184-to-var787=([com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2998-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2751-to-var1688=([java.lang.Exception], java.lang.Throwable)}
; {var1184=com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod, var1601=r1, var1198=com.alibaba.fastjson2.JSONReader, var1937=r0, var2454=java.lang.Object, var1068=r3, var1641=l0, var2287=com.alibaba.fastjson2.schema.JSONSchema, var787=com.alibaba.fastjson2.reader.FieldReader, var3034=$r2, var2751=java.lang.Exception, var3132=$r8, var2998=com.alibaba.fastjson2.JSONException, var609=$r9, var630=$r10, var1872=$r12, var1647=$r11, var2094=$r13, var1217=$r14, var539=$r15, var3891=$r16, var1688=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod=var1184, r1=var1601, com.alibaba.fastjson2.JSONReader=var1198, r0=var1937, java.lang.Object=var2454, r3=var1068, l0=var1641, com.alibaba.fastjson2.schema.JSONSchema=var2287, com.alibaba.fastjson2.reader.FieldReader=var787, $r2=var3034, java.lang.Exception=var2751, $r8=var3132, com.alibaba.fastjson2.JSONException=var2998, $r9=var609, $r10=var630, $r12=var1872, $r11=var1647, $r13=var2094, $r14=var1217, $r15=var539, $r16=var3891, java.lang.Throwable=var1688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	l0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readInt64Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2