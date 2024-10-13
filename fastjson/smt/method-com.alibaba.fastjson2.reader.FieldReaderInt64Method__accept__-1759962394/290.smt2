(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1048 0)
(declare-sort var1422 0)
(declare-sort var720 0)
(declare-sort var892 0)
(declare-sort var1752 0)
(declare-sort var523 0)
(declare-sort var472 0)
(declare-sort var1311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var720_toLong/-667032331 (var1422) Int)
(declare-fun schema/-488737871 (var1752) var892)
(declare-fun cast-from-var1048-to-var1752 (var1048) var1752)
(declare-fun var472-init () var472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1752) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var472 String var1311) void)
(declare-fun cast-from-var523-to-var1311 (var523) var1311)
(declare-const null-var1048 var1048)
(declare-const null-var1422 var1422)
(declare-const null-var892 var892)
(declare-const null-var523 var523)
(declare-const var3892 var1048) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method 
(assert (not (= var3892 null-var1048)))
(declare-const var3227 var1422) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3227 null-var1422)))
(declare-const var1632 var1422) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1632 null-var1422)))
(define-const var2081 Int (var720_toLong/-667032331 var1632)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Long toLong(java.lang.Object)>(r0) 
(define-const var2284 var892 (schema/-488737871 (cast-from-var1048-to-var1752 var3892))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method> 
(assert (not (= var2284 null-var892))) ; Negate: Cond: $r3 == null  
(declare-const var1768 var523) ; Statement: $r8 := @caughtexception 
(assert (not (= var1768 null-var523)))
(define-const var2233 var472 var472-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2784 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2784)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2784!1 String)
(assert (= var2784!1 ""))
(assert true)
(define-const var71 String (append/672562846 var2784!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2784!2 String)
(assert (= var2784!2 (str.++ var2784!1 "set ")))
(define-const var3397 String (fieldName/-488737871 (cast-from-var1048-to-var1752 var3892))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName> 
(assert true)
(define-const var790 String (append/672562846 var71 var3397)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var71!1 String)
(assert (= var71!1 (str.++ var71 var3397)))
(assert true)
(define-const var2965 String (append/672562846 var790 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var790!1 String)
(assert (= var790!1 (str.++ var790 " error")))
(assert true)
(define-const var2806 String (toString/-2075883882 var2965)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2233 var2806 (cast-from-var523-to-var1311 var1768))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2233!1 var472)
(declare-const var2806!1 String)
(declare-const var1768!1 var523)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var720_toLong/-667032331=([java.lang.Object], java.lang.Long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1048-to-var1752=([com.alibaba.fastjson2.reader.FieldReaderInt64Method], com.alibaba.fastjson2.reader.FieldReader), var472-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var523-to-var1311=([java.lang.Exception], java.lang.Throwable)}
; {var1048=com.alibaba.fastjson2.reader.FieldReaderInt64Method, var3892=r2, var1422=java.lang.Object, var3227=r4, var1632=r0, var720=com.alibaba.fastjson2.util.TypeUtils, var2081=r1, var892=com.alibaba.fastjson2.schema.JSONSchema, var1752=com.alibaba.fastjson2.reader.FieldReader, var2284=$r3, var523=java.lang.Exception, var1768=$r8, var472=com.alibaba.fastjson2.JSONException, var2233=$r9, var2784=$r10, var71=$r12, var3397=$r11, var790=$r13, var2965=$r14, var2806=$r15, var1311=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64Method=var1048, r2=var3892, java.lang.Object=var1422, r4=var3227, r0=var1632, com.alibaba.fastjson2.util.TypeUtils=var720, r1=var2081, com.alibaba.fastjson2.schema.JSONSchema=var892, com.alibaba.fastjson2.reader.FieldReader=var1752, $r3=var2284, java.lang.Exception=var523, $r8=var1768, com.alibaba.fastjson2.JSONException=var472, $r9=var2233, $r10=var2784, $r12=var71, $r11=var3397, $r13=var790, $r14=var2965, $r15=var2806, java.lang.Throwable=var1311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Method;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Long toLong(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2