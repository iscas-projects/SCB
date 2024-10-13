(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3211 0)
(declare-sort var1098 0)
(declare-sort var2578 0)
(declare-sort var3045 0)
(declare-sort var3624 0)
(declare-sort var879 0)
(declare-sort var583 0)
(declare-sort var1070 0)
(declare-sort var3861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3045_toBigInteger/-799479909 (var1098) var2578)
(declare-fun schema/-488737871 (var879) var3624)
(declare-fun cast-from-var3211-to-var879 (var3211) var879)
(declare-fun var1070-init () var1070)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var879) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1070 String var3861) void)
(declare-fun cast-from-var583-to-var3861 (var583) var3861)
(declare-const null-var3211 var3211)
(declare-const null-var1098 var1098)
(declare-const null-var3624 var3624)
(declare-const null-var583 var583)
(declare-const var1458 var3211) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField 
(assert (not (= var1458 null-var3211)))
(declare-const var3632 var1098) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3632 null-var1098)))
(declare-const var1486 var1098) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1486 null-var1098)))
(define-const var1802 var2578 (var3045_toBigInteger/-799479909 var1486)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0) 
(define-const var832 var3624 (schema/-488737871 (cast-from-var3211-to-var879 var1458))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field> 
(assert (not (= var832 null-var3624))) ; Negate: Cond: $r3 == null  
(declare-const var1596 var583) ; Statement: $r7 := @caughtexception 
(assert (not (= var1596 null-var583)))
(define-const var391 var1070 var1070-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var702 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var702)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var702!1 String)
(assert (= var702!1 ""))
(assert true)
(define-const var838 String (append/672562846 var702!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var702!2 String)
(assert (= var702!2 (str.++ var702!1 "set ")))
(define-const var1551 String (fieldName/-488737871 (cast-from-var3211-to-var879 var1458))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName> 
(assert true)
(define-const var3916 String (append/672562846 var838 var1551)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var838!1 String)
(assert (= var838!1 (str.++ var838 var1551)))
(assert true)
(define-const var1996 String (append/672562846 var3916 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3916!1 String)
(assert (= var3916!1 (str.++ var3916 " error")))
(assert true)
(define-const var2942 String (toString/-2075883882 var1996)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var391 var2942 (cast-from-var583-to-var3861 var1596))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var391!1 var1070)
(declare-const var2942!1 String)
(declare-const var1596!1 var583)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3045_toBigInteger/-799479909=([java.lang.Object], java.math.BigInteger), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3211-to-var879=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerField], com.alibaba.fastjson2.reader.FieldReader), var1070-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var583-to-var3861=([java.lang.Exception], java.lang.Throwable)}
; {var3211=com.alibaba.fastjson2.reader.FieldReaderBigIntegerField, var1458=r2, var1098=java.lang.Object, var3632=r4, var1486=r0, var2578=java.math.BigInteger, var3045=com.alibaba.fastjson2.util.TypeUtils, var1802=r1, var3624=com.alibaba.fastjson2.schema.JSONSchema, var879=com.alibaba.fastjson2.reader.FieldReader, var832=$r3, var583=java.lang.Exception, var1596=$r7, var1070=com.alibaba.fastjson2.JSONException, var391=$r8, var702=$r9, var838=$r11, var1551=$r10, var3916=$r12, var1996=$r13, var2942=$r14, var3861=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerField=var3211, r2=var1458, java.lang.Object=var1098, r4=var3632, r0=var1486, java.math.BigInteger=var2578, com.alibaba.fastjson2.util.TypeUtils=var3045, r1=var1802, com.alibaba.fastjson2.schema.JSONSchema=var3624, com.alibaba.fastjson2.reader.FieldReader=var879, $r3=var832, java.lang.Exception=var583, $r7=var1596, com.alibaba.fastjson2.JSONException=var1070, $r8=var391, $r9=var702, $r11=var838, $r10=var1551, $r12=var3916, $r13=var1996, $r14=var2942, java.lang.Throwable=var3861}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2