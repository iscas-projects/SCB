(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3171 0)
(declare-sort var2706 0)
(declare-sort var3951 0)
(declare-sort var2035 0)
(declare-sort var3563 0)
(declare-sort var3695 0)
(declare-sort var3999 0)
(declare-sort var1152 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBool/-2111978331 (var2706) var2035)
(declare-fun schema/-488737871 (var3695) var3563)
(declare-fun cast-from-var3171-to-var3695 (var3171) var3695)
(declare-fun var1152-init () var1152)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3695) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2706 String) String)
(declare-fun <init>/-743866570 (var1152 String var2585) void)
(declare-fun cast-from-var3999-to-var2585 (var3999) var2585)
(declare-const null-var3171 var3171)
(declare-const null-var2706 var2706)
(declare-const null-var3951 var3951)
(declare-const null-var3563 var3563)
(declare-const null-var3999 var3999)
(declare-const var3570 var3171) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolMethod 
(assert (not (= var3570 null-var3171)))
(declare-const var2513 var2706) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2513 null-var2706)))
(declare-const var3164 var3951) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var3164 null-var3951)))
(assert true)
(define-const var1194 var2035 (readBool/-2111978331 var2513)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Boolean readBool()>() 
(define-const var3605 var3563 (schema/-488737871 (cast-from-var3171-to-var3695 var3570))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.reflect.Method method> 
(assert (not (= var3605 null-var3563))) ; Negate: Cond: $r3 == null  
(declare-const var953 var3999) ; Statement: $r8 := @caughtexception 
(assert (not (= var953 null-var3999)))
(define-const var44 var1152 var1152-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1896 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1896)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1896!1 String)
(assert (= var1896!1 ""))
(assert true)
(define-const var773 String (append/672562846 var1896!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1896!2 String)
(assert (= var1896!2 (str.++ var1896!1 "set ")))
(define-const var2121 String (fieldName/-488737871 (cast-from-var3171-to-var3695 var3570))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.String fieldName> 
(assert true)
(define-const var2132 String (append/672562846 var773 var2121)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var773!1 String)
(assert (= var773!1 (str.++ var773 var2121)))
(assert true)
(define-const var3850 String (append/672562846 var2132 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 " error")))
(assert true)
(define-const var2891 String (toString/-2075883882 var3850)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2187 String (info/-1659839707 var2513 var2891)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var44 var2187 (cast-from-var3999-to-var2585 var953))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var44!1 var1152)
(declare-const var2187!1 String)
(declare-const var953!1 var3999)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readBool/-2111978331=([com.alibaba.fastjson2.JSONReader], java.lang.Boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3171-to-var3695=([com.alibaba.fastjson2.reader.FieldReaderBoolMethod], com.alibaba.fastjson2.reader.FieldReader), var1152-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3999-to-var2585=([java.lang.Exception], java.lang.Throwable)}
; {var3171=com.alibaba.fastjson2.reader.FieldReaderBoolMethod, var3570=r2, var2706=com.alibaba.fastjson2.JSONReader, var2513=r0, var3951=java.lang.Object, var3164=r4, var2035=java.lang.Boolean, var1194=r1, var3563=com.alibaba.fastjson2.schema.JSONSchema, var3695=com.alibaba.fastjson2.reader.FieldReader, var3605=$r3, var3999=java.lang.Exception, var953=$r8, var1152=com.alibaba.fastjson2.JSONException, var44=$r9, var1896=$r10, var773=$r12, var2121=$r11, var2132=$r13, var3850=$r14, var2891=$r15, var2187=$r16, var2585=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolMethod=var3171, r2=var3570, com.alibaba.fastjson2.JSONReader=var2706, r0=var2513, java.lang.Object=var3951, r4=var3164, java.lang.Boolean=var2035, r1=var1194, com.alibaba.fastjson2.schema.JSONSchema=var3563, com.alibaba.fastjson2.reader.FieldReader=var3695, $r3=var3605, java.lang.Exception=var3999, $r8=var953, com.alibaba.fastjson2.JSONException=var1152, $r9=var44, $r10=var1896, $r12=var773, $r11=var2121, $r13=var2132, $r14=var3850, $r15=var2891, $r16=var2187, java.lang.Throwable=var2585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Boolean readBool()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2