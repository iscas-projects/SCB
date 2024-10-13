(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1804 0)
(declare-sort var218 0)
(declare-sort var2302 0)
(declare-sort var2438 0)
(declare-sort var424 0)
(declare-sort var3069 0)
(declare-sort var2649 0)
(declare-sort var623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2302_toFloat/-881902445 (var218) Float32)
(declare-fun schema/-488737871 (var424) var2438)
(declare-fun cast-from-var1804-to-var424 (var1804) var424)
(declare-fun var2649-init () var2649)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var424) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2649 String var623) void)
(declare-fun cast-from-var3069-to-var623 (var3069) var623)
(declare-const null-var1804 var1804)
(declare-const null-var218 var218)
(declare-const null-var2438 var2438)
(declare-const null-var3069 var3069)
(declare-const var3398 var1804) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatMethod 
(assert (not (= var3398 null-var1804)))
(declare-const var1966 var218) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var1966 null-var218)))
(declare-const var781 var218) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var781 null-var218)))
(define-const var2398 Float32 (var2302_toFloat/-881902445 var781)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Float toFloat(java.lang.Object)>(r0) 
(define-const var2187 var2438 (schema/-488737871 (cast-from-var1804-to-var424 var3398))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.reflect.Method method> 
(assert (not (= var2187 null-var2438))) ; Negate: Cond: $r3 == null  
(declare-const var1019 var3069) ; Statement: $r8 := @caughtexception 
(assert (not (= var1019 null-var3069)))
(define-const var975 var2649 var2649-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3470 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3470)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3470!1 String)
(assert (= var3470!1 ""))
(assert true)
(define-const var1490 String (append/672562846 var3470!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3470!2 String)
(assert (= var3470!2 (str.++ var3470!1 "set ")))
(define-const var2855 String (fieldName/-488737871 (cast-from-var1804-to-var424 var3398))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.String fieldName> 
(assert true)
(define-const var1778 String (append/672562846 var1490 var2855)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1490!1 String)
(assert (= var1490!1 (str.++ var1490 var2855)))
(assert true)
(define-const var1259 String (append/672562846 var1778 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1778!1 String)
(assert (= var1778!1 (str.++ var1778 " error")))
(assert true)
(define-const var612 String (toString/-2075883882 var1259)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var975 var612 (cast-from-var3069-to-var623 var1019))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var975!1 var2649)
(declare-const var612!1 String)
(declare-const var1019!1 var3069)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2302_toFloat/-881902445=([java.lang.Object], java.lang.Float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1804-to-var424=([com.alibaba.fastjson2.reader.FieldReaderFloatMethod], com.alibaba.fastjson2.reader.FieldReader), var2649-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3069-to-var623=([java.lang.Exception], java.lang.Throwable)}
; {var1804=com.alibaba.fastjson2.reader.FieldReaderFloatMethod, var3398=r2, var218=java.lang.Object, var1966=r4, var781=r0, var2302=com.alibaba.fastjson2.util.TypeUtils, var2398=r1, var2438=com.alibaba.fastjson2.schema.JSONSchema, var424=com.alibaba.fastjson2.reader.FieldReader, var2187=$r3, var3069=java.lang.Exception, var1019=$r8, var2649=com.alibaba.fastjson2.JSONException, var975=$r9, var3470=$r10, var1490=$r12, var2855=$r11, var1778=$r13, var1259=$r14, var612=$r15, var623=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatMethod=var1804, r2=var3398, java.lang.Object=var218, r4=var1966, r0=var781, com.alibaba.fastjson2.util.TypeUtils=var2302, r1=var2398, com.alibaba.fastjson2.schema.JSONSchema=var2438, com.alibaba.fastjson2.reader.FieldReader=var424, $r3=var2187, java.lang.Exception=var3069, $r8=var1019, com.alibaba.fastjson2.JSONException=var2649, $r9=var975, $r10=var3470, $r12=var1490, $r11=var2855, $r13=var1778, $r14=var1259, $r15=var612, java.lang.Throwable=var623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatMethod;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Float toFloat(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2