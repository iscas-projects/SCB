(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort var2241 0)
(declare-sort var3530 0)
(declare-sort var2266 0)
(declare-sort var3566 0)
(declare-sort var23 0)
(declare-sort var2073 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3530_toDoubleValue/-1723342258 (var2241) Float64)
(declare-fun schema/-488737871 (var3566) var2266)
(declare-fun cast-from-var1796-to-var3566 (var1796) var3566)
(declare-fun var2073-init () var2073)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3566) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2073 String var814) void)
(declare-fun cast-from-var23-to-var814 (var23) var814)
(declare-const null-var1796 var1796)
(declare-const null-var2241 var2241)
(declare-const null-var2266 var2266)
(declare-const null-var23 var23)
(declare-const var1833 var1796) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod 
(assert (not (= var1833 null-var1796)))
(declare-const var866 var2241) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var866 null-var2241)))
(declare-const var2697 var2241) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2697 null-var2241)))
(define-const var3486 Float64 (var3530_toDoubleValue/-1723342258 var2697)) ; Statement: d0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: double toDoubleValue(java.lang.Object)>(r0) 
(define-const var3291 var2266 (schema/-488737871 (cast-from-var1796-to-var3566 var1833))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3291 null-var2266))) ; Negate: Cond: $r2 == null  
(declare-const var603 var23) ; Statement: $r8 := @caughtexception 
(assert (not (= var603 null-var23)))
(define-const var2267 var2073 var2073-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1004 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1004)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1004!1 String)
(assert (= var1004!1 ""))
(assert true)
(define-const var63 String (append/672562846 var1004!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1004!2 String)
(assert (= var1004!2 (str.++ var1004!1 "set ")))
(define-const var2308 String (fieldName/-488737871 (cast-from-var1796-to-var3566 var1833))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2350 String (append/672562846 var63 var2308)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var63!1 String)
(assert (= var63!1 (str.++ var63 var2308)))
(assert true)
(define-const var3236 String (append/672562846 var2350 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2350!1 String)
(assert (= var2350!1 (str.++ var2350 " error")))
(assert true)
(define-const var991 String (toString/-2075883882 var3236)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2267 var991 (cast-from-var23-to-var814 var603))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2267!1 var2073)
(declare-const var991!1 String)
(declare-const var603!1 var23)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3530_toDoubleValue/-1723342258=([java.lang.Object], double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1796-to-var3566=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2073-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var23-to-var814=([java.lang.Exception], java.lang.Throwable)}
; {var1796=com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod, var1833=r1, var2241=java.lang.Object, var866=r3, var2697=r0, var3530=com.alibaba.fastjson2.util.TypeUtils, var3486=d0, var2266=com.alibaba.fastjson2.schema.JSONSchema, var3566=com.alibaba.fastjson2.reader.FieldReader, var3291=$r2, var23=java.lang.Exception, var603=$r8, var2073=com.alibaba.fastjson2.JSONException, var2267=$r9, var1004=$r10, var63=$r12, var2308=$r11, var2350=$r13, var3236=$r14, var991=$r15, var814=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod=var1796, r1=var1833, java.lang.Object=var2241, r3=var866, r0=var2697, com.alibaba.fastjson2.util.TypeUtils=var3530, d0=var3486, com.alibaba.fastjson2.schema.JSONSchema=var2266, com.alibaba.fastjson2.reader.FieldReader=var3566, $r2=var3291, java.lang.Exception=var23, $r8=var603, com.alibaba.fastjson2.JSONException=var2073, $r9=var2267, $r10=var1004, $r12=var63, $r11=var2308, $r13=var2350, $r14=var3236, $r15=var991, java.lang.Throwable=var814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	d0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: double toDoubleValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2