(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2026 0)
(declare-sort var2169 0)
(declare-sort var3477 0)
(declare-sort var3307 0)
(declare-sort var554 0)
(declare-sort var3784 0)
(declare-sort var2175 0)
(declare-sort var106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3477_toDouble/-123925227 (var2169) Float64)
(declare-fun schema/-488737871 (var554) var3307)
(declare-fun cast-from-var2026-to-var554 (var2026) var554)
(declare-fun var2175-init () var2175)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var554) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2175 String var106) void)
(declare-fun cast-from-var3784-to-var106 (var3784) var106)
(declare-const null-var2026 var2026)
(declare-const null-var2169 var2169)
(declare-const null-var3307 var3307)
(declare-const null-var3784 var3784)
(declare-const var1948 var2026) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleMethod 
(assert (not (= var1948 null-var2026)))
(declare-const var1982 var2169) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var1982 null-var2169)))
(declare-const var3194 var2169) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3194 null-var2169)))
(define-const var512 Float64 (var3477_toDouble/-123925227 var3194)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Double toDouble(java.lang.Object)>(r0) 
(define-const var2459 var3307 (schema/-488737871 (cast-from-var2026-to-var554 var1948))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.reflect.Method method> 
(assert (not (= var2459 null-var3307))) ; Negate: Cond: $r3 == null  
(declare-const var2099 var3784) ; Statement: $r8 := @caughtexception 
(assert (not (= var2099 null-var3784)))
(define-const var119 var2175 var2175-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3891 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3891)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3891!1 String)
(assert (= var3891!1 ""))
(assert true)
(define-const var3513 String (append/672562846 var3891!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3891!2 String)
(assert (= var3891!2 (str.++ var3891!1 "set ")))
(define-const var542 String (fieldName/-488737871 (cast-from-var2026-to-var554 var1948))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.String fieldName> 
(assert true)
(define-const var555 String (append/672562846 var3513 var542)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3513!1 String)
(assert (= var3513!1 (str.++ var3513 var542)))
(assert true)
(define-const var3505 String (append/672562846 var555 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var555!1 String)
(assert (= var555!1 (str.++ var555 " error")))
(assert true)
(define-const var2916 String (toString/-2075883882 var3505)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var119 var2916 (cast-from-var3784-to-var106 var2099))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var119!1 var2175)
(declare-const var2916!1 String)
(declare-const var2099!1 var3784)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3477_toDouble/-123925227=([java.lang.Object], java.lang.Double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2026-to-var554=([com.alibaba.fastjson2.reader.FieldReaderDoubleMethod], com.alibaba.fastjson2.reader.FieldReader), var2175-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3784-to-var106=([java.lang.Exception], java.lang.Throwable)}
; {var2026=com.alibaba.fastjson2.reader.FieldReaderDoubleMethod, var1948=r2, var2169=java.lang.Object, var1982=r4, var3194=r0, var3477=com.alibaba.fastjson2.util.TypeUtils, var512=r1, var3307=com.alibaba.fastjson2.schema.JSONSchema, var554=com.alibaba.fastjson2.reader.FieldReader, var2459=$r3, var3784=java.lang.Exception, var2099=$r8, var2175=com.alibaba.fastjson2.JSONException, var119=$r9, var3891=$r10, var3513=$r12, var542=$r11, var555=$r13, var3505=$r14, var2916=$r15, var106=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleMethod=var2026, r2=var1948, java.lang.Object=var2169, r4=var1982, r0=var3194, com.alibaba.fastjson2.util.TypeUtils=var3477, r1=var512, com.alibaba.fastjson2.schema.JSONSchema=var3307, com.alibaba.fastjson2.reader.FieldReader=var554, $r3=var2459, java.lang.Exception=var3784, $r8=var2099, com.alibaba.fastjson2.JSONException=var2175, $r9=var119, $r10=var3891, $r12=var3513, $r11=var542, $r13=var555, $r14=var3505, $r15=var2916, java.lang.Throwable=var106}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleMethod;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Double toDouble(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2