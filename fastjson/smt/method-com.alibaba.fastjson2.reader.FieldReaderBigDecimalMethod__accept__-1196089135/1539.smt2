(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var1748 0)
(declare-sort var2008 0)
(declare-sort var3168 0)
(declare-sort var207 0)
(declare-sort var3121 0)
(declare-sort var2590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3168) var2008)
(declare-fun cast-from-var1097-to-var3168 (var1097) var3168)
(declare-fun var3121-init () var3121)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3168) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3121 String var2590) void)
(declare-fun cast-from-var207-to-var2590 (var207) var2590)
(declare-const null-var1097 var1097)
(declare-const null-var1748 var1748)
(declare-const null-Int Int)
(declare-const null-var2008 var2008)
(declare-const null-var207 var207)
(declare-const var944 var1097) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod 
(assert (not (= var944 null-var1097)))
(declare-const var449 var1748) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var449 null-var1748)))
(declare-const var2385 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2385 null-Int)))
(define-const var3974 var2008 (schema/-488737871 (cast-from-var1097-to-var3168 var944))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method> 
(assert (not (= var3974 null-var2008))) ; Negate: Cond: $r1 == null  
(declare-const var1716 var207) ; Statement: $r7 := @caughtexception 
(assert (not (= var1716 null-var207)))
(define-const var1579 var3121 var3121-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var838 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var838)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var838!1 String)
(assert (= var838!1 ""))
(assert true)
(define-const var1999 String (append/672562846 var838!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var838!2 String)
(assert (= var838!2 (str.++ var838!1 "set ")))
(define-const var2719 String (fieldName/-488737871 (cast-from-var1097-to-var3168 var944))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName> 
(assert true)
(define-const var2534 String (append/672562846 var1999 var2719)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1999!1 String)
(assert (= var1999!1 (str.++ var1999 var2719)))
(assert true)
(define-const var443 String (append/672562846 var2534 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2534!1 String)
(assert (= var2534!1 (str.++ var2534 " error")))
(assert true)
(define-const var2861 String (toString/-2075883882 var443)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1579 var2861 (cast-from-var207-to-var2590 var1716))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1579!1 var3121)
(declare-const var2861!1 String)
(declare-const var1716!1 var207)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1097-to-var3168=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod], com.alibaba.fastjson2.reader.FieldReader), var3121-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var207-to-var2590=([java.lang.Exception], java.lang.Throwable)}
; {var1097=com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod, var944=r0, var1748=java.lang.Object, var449=r2, var2385=l0, var2008=com.alibaba.fastjson2.schema.JSONSchema, var3168=com.alibaba.fastjson2.reader.FieldReader, var3974=$r1, var207=java.lang.Exception, var1716=$r7, var3121=com.alibaba.fastjson2.JSONException, var1579=$r8, var838=$r9, var1999=$r11, var2719=$r10, var2534=$r12, var443=$r13, var2861=$r14, var2590=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod=var1097, r0=var944, java.lang.Object=var1748, r2=var449, l0=var2385, com.alibaba.fastjson2.schema.JSONSchema=var2008, com.alibaba.fastjson2.reader.FieldReader=var3168, $r1=var3974, java.lang.Exception=var207, $r7=var1716, com.alibaba.fastjson2.JSONException=var3121, $r8=var1579, $r9=var838, $r11=var1999, $r10=var2719, $r12=var2534, $r13=var443, $r14=var2861, java.lang.Throwable=var2590}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2