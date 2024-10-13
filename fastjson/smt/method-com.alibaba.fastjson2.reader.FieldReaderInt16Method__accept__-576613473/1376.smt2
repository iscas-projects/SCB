(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2994 0)
(declare-sort var3067 0)
(declare-sort var3418 0)
(declare-sort var735 0)
(declare-sort var2618 0)
(declare-sort var778 0)
(declare-sort var1424 0)
(declare-sort var3617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3418_toShort/-1711034285 (var3067) Int)
(declare-fun schema/-488737871 (var2618) var735)
(declare-fun cast-from-var2994-to-var2618 (var2994) var2618)
(declare-fun var1424-init () var1424)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2618) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1424 String var3617) void)
(declare-fun cast-from-var778-to-var3617 (var778) var3617)
(declare-const null-var2994 var2994)
(declare-const null-var3067 var3067)
(declare-const null-var735 var735)
(declare-const null-var778 var778)
(declare-const var868 var2994) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Method 
(assert (not (= var868 null-var2994)))
(declare-const var1940 var3067) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var1940 null-var3067)))
(declare-const var3484 var3067) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3484 null-var3067)))
(define-const var1785 Int (var3418_toShort/-1711034285 var3484)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Short toShort(java.lang.Object)>(r0) 
(define-const var744 var735 (schema/-488737871 (cast-from-var2994-to-var2618 var868))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.reflect.Method method> 
(assert (not (= var744 null-var735))) ; Negate: Cond: $r3 == null  
(declare-const var94 var778) ; Statement: $r8 := @caughtexception 
(assert (not (= var94 null-var778)))
(define-const var2867 var1424 var1424-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3573 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3573)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3573!1 String)
(assert (= var3573!1 ""))
(assert true)
(define-const var1058 String (append/672562846 var3573!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3573!2 String)
(assert (= var3573!2 (str.++ var3573!1 "set ")))
(define-const var77 String (fieldName/-488737871 (cast-from-var2994-to-var2618 var868))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.String fieldName> 
(assert true)
(define-const var3026 String (append/672562846 var1058 var77)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1058!1 String)
(assert (= var1058!1 (str.++ var1058 var77)))
(assert true)
(define-const var150 String (append/672562846 var3026 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3026!1 String)
(assert (= var3026!1 (str.++ var3026 " error")))
(assert true)
(define-const var3061 String (toString/-2075883882 var150)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2867 var3061 (cast-from-var778-to-var3617 var94))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2867!1 var1424)
(declare-const var3061!1 String)
(declare-const var94!1 var778)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3418_toShort/-1711034285=([java.lang.Object], java.lang.Short), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2994-to-var2618=([com.alibaba.fastjson2.reader.FieldReaderInt16Method], com.alibaba.fastjson2.reader.FieldReader), var1424-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var778-to-var3617=([java.lang.Exception], java.lang.Throwable)}
; {var2994=com.alibaba.fastjson2.reader.FieldReaderInt16Method, var868=r2, var3067=java.lang.Object, var1940=r4, var3484=r0, var3418=com.alibaba.fastjson2.util.TypeUtils, var1785=r1, var735=com.alibaba.fastjson2.schema.JSONSchema, var2618=com.alibaba.fastjson2.reader.FieldReader, var744=$r3, var778=java.lang.Exception, var94=$r8, var1424=com.alibaba.fastjson2.JSONException, var2867=$r9, var3573=$r10, var1058=$r12, var77=$r11, var3026=$r13, var150=$r14, var3061=$r15, var3617=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16Method=var2994, r2=var868, java.lang.Object=var3067, r4=var1940, r0=var3484, com.alibaba.fastjson2.util.TypeUtils=var3418, r1=var1785, com.alibaba.fastjson2.schema.JSONSchema=var735, com.alibaba.fastjson2.reader.FieldReader=var2618, $r3=var744, java.lang.Exception=var778, $r8=var94, com.alibaba.fastjson2.JSONException=var1424, $r9=var2867, $r10=var3573, $r12=var1058, $r11=var77, $r13=var3026, $r14=var150, $r15=var3061, java.lang.Throwable=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Method;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Short toShort(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2