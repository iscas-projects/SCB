(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort var1944 0)
(declare-sort var2408 0)
(declare-sort var1184 0)
(declare-sort var3764 0)
(declare-sort var240 0)
(declare-sort var2616 0)
(declare-sort var1913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2408_toLong/-667032331 (var1944) Int)
(declare-fun schema/-488737871 (var3764) var1184)
(declare-fun cast-from-var1772-to-var3764 (var1772) var3764)
(declare-fun var2616-init () var2616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3764) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2616 String var1913) void)
(declare-fun cast-from-var240-to-var1913 (var240) var1913)
(declare-const null-var1772 var1772)
(declare-const null-var1944 var1944)
(declare-const null-var1184 var1184)
(declare-const null-var240 var240)
(declare-const var3603 var1772) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Field 
(assert (not (= var3603 null-var1772)))
(declare-const var3927 var1944) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3927 null-var1944)))
(declare-const var2511 var1944) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2511 null-var1944)))
(define-const var3385 Int (var2408_toLong/-667032331 var2511)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Long toLong(java.lang.Object)>(r0) 
(define-const var1907 var1184 (schema/-488737871 (cast-from-var1772-to-var3764 var3603))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.reflect.Field field> 
(assert (not (= var1907 null-var1184))) ; Negate: Cond: $r3 == null  
(declare-const var3093 var240) ; Statement: $r7 := @caughtexception 
(assert (not (= var3093 null-var240)))
(define-const var2204 var2616 var2616-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var520 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var520)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var520!1 String)
(assert (= var520!1 ""))
(assert true)
(define-const var2446 String (append/672562846 var520!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var520!2 String)
(assert (= var520!2 (str.++ var520!1 "set ")))
(define-const var2765 String (fieldName/-488737871 (cast-from-var1772-to-var3764 var3603))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.String fieldName> 
(assert true)
(define-const var3942 String (append/672562846 var2446 var2765)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2446!1 String)
(assert (= var2446!1 (str.++ var2446 var2765)))
(assert true)
(define-const var3407 String (append/672562846 var3942 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3942!1 String)
(assert (= var3942!1 (str.++ var3942 " error")))
(assert true)
(define-const var2173 String (toString/-2075883882 var3407)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2204 var2173 (cast-from-var240-to-var1913 var3093))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2204!1 var2616)
(declare-const var2173!1 String)
(declare-const var3093!1 var240)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2408_toLong/-667032331=([java.lang.Object], java.lang.Long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1772-to-var3764=([com.alibaba.fastjson2.reader.FieldReaderInt64Field], com.alibaba.fastjson2.reader.FieldReader), var2616-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var240-to-var1913=([java.lang.Exception], java.lang.Throwable)}
; {var1772=com.alibaba.fastjson2.reader.FieldReaderInt64Field, var3603=r2, var1944=java.lang.Object, var3927=r4, var2511=r0, var2408=com.alibaba.fastjson2.util.TypeUtils, var3385=r1, var1184=com.alibaba.fastjson2.schema.JSONSchema, var3764=com.alibaba.fastjson2.reader.FieldReader, var1907=$r3, var240=java.lang.Exception, var3093=$r7, var2616=com.alibaba.fastjson2.JSONException, var2204=$r8, var520=$r9, var2446=$r11, var2765=$r10, var3942=$r12, var3407=$r13, var2173=$r14, var1913=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64Field=var1772, r2=var3603, java.lang.Object=var1944, r4=var3927, r0=var2511, com.alibaba.fastjson2.util.TypeUtils=var2408, r1=var3385, com.alibaba.fastjson2.schema.JSONSchema=var1184, com.alibaba.fastjson2.reader.FieldReader=var3764, $r3=var1907, java.lang.Exception=var240, $r7=var3093, com.alibaba.fastjson2.JSONException=var2616, $r8=var2204, $r9=var520, $r11=var2446, $r10=var2765, $r12=var3942, $r13=var3407, $r14=var2173, java.lang.Throwable=var1913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Field;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Long toLong(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2