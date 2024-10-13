(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var407 0)
(declare-sort var3583 0)
(declare-sort var1309 0)
(declare-sort var2082 0)
(declare-sort var2593 0)
(declare-sort var674 0)
(declare-sort var3290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3583_toLongValue/427458670 (var407) Int)
(declare-fun schema/-488737871 (var2082) var1309)
(declare-fun cast-from-var2152-to-var2082 (var2152) var2082)
(declare-fun var674-init () var674)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2082) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var674 String var3290) void)
(declare-fun cast-from-var2593-to-var3290 (var2593) var3290)
(declare-const null-var2152 var2152)
(declare-const null-var407 var407)
(declare-const null-var1309 var1309)
(declare-const null-var2593 var2593)
(declare-const var454 var2152) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod 
(assert (not (= var454 null-var2152)))
(declare-const var3281 var407) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3281 null-var407)))
(declare-const var3696 var407) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3696 null-var407)))
(define-const var2453 Int (var3583_toLongValue/427458670 var3696)) ; Statement: l0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: long toLongValue(java.lang.Object)>(r0) 
(define-const var3659 var1309 (schema/-488737871 (cast-from-var2152-to-var2082 var454))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3659 null-var1309))) ; Negate: Cond: $r2 == null  
(declare-const var3999 var2593) ; Statement: $r8 := @caughtexception 
(assert (not (= var3999 null-var2593)))
(define-const var2623 var674 var674-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1061 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var1444 String (append/672562846 var1061!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 "set ")))
(define-const var3056 String (fieldName/-488737871 (cast-from-var2152-to-var2082 var454))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var95 String (append/672562846 var1444 var3056)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1444!1 String)
(assert (= var1444!1 (str.++ var1444 var3056)))
(assert true)
(define-const var3743 String (append/672562846 var95 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var95!1 String)
(assert (= var95!1 (str.++ var95 " error")))
(assert true)
(define-const var327 String (toString/-2075883882 var3743)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2623 var327 (cast-from-var2593-to-var3290 var3999))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2623!1 var674)
(declare-const var327!1 String)
(declare-const var3999!1 var2593)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3583_toLongValue/427458670=([java.lang.Object], long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2152-to-var2082=([com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var674-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2593-to-var3290=([java.lang.Exception], java.lang.Throwable)}
; {var2152=com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod, var454=r1, var407=java.lang.Object, var3281=r3, var3696=r0, var3583=com.alibaba.fastjson2.util.TypeUtils, var2453=l0, var1309=com.alibaba.fastjson2.schema.JSONSchema, var2082=com.alibaba.fastjson2.reader.FieldReader, var3659=$r2, var2593=java.lang.Exception, var3999=$r8, var674=com.alibaba.fastjson2.JSONException, var2623=$r9, var1061=$r10, var1444=$r12, var3056=$r11, var95=$r13, var3743=$r14, var327=$r15, var3290=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod=var2152, r1=var454, java.lang.Object=var407, r3=var3281, r0=var3696, com.alibaba.fastjson2.util.TypeUtils=var3583, l0=var2453, com.alibaba.fastjson2.schema.JSONSchema=var1309, com.alibaba.fastjson2.reader.FieldReader=var2082, $r2=var3659, java.lang.Exception=var2593, $r8=var3999, com.alibaba.fastjson2.JSONException=var674, $r9=var2623, $r10=var1061, $r12=var1444, $r11=var3056, $r13=var95, $r14=var3743, $r15=var327, java.lang.Throwable=var3290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	l0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: long toLongValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2