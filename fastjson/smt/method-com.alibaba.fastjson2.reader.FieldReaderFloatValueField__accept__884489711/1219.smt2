(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var3591 0)
(declare-sort var3290 0)
(declare-sort var2081 0)
(declare-sort var3427 0)
(declare-sort var2282 0)
(declare-sort var2254 0)
(declare-sort var1511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3290_toFloatValue/-1806772592 (var3591) Float32)
(declare-fun schema/-488737871 (var3427) var2081)
(declare-fun cast-from-var2650-to-var3427 (var2650) var3427)
(declare-fun var2254-init () var2254)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3427) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2254 String var1511) void)
(declare-fun cast-from-var2282-to-var1511 (var2282) var1511)
(declare-const null-var2650 var2650)
(declare-const null-var3591 var3591)
(declare-const null-var2081 var2081)
(declare-const null-var2282 var2282)
(declare-const var120 var2650) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueField 
(assert (not (= var120 null-var2650)))
(declare-const var1235 var3591) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1235 null-var3591)))
(declare-const var2121 var3591) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2121 null-var3591)))
(define-const var108 Float32 (var3290_toFloatValue/-1806772592 var2121)) ; Statement: f0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: float toFloatValue(java.lang.Object)>(r0) 
(define-const var84 var2081 (schema/-488737871 (cast-from-var2650-to-var3427 var120))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.reflect.Field field> 
(assert (not (= var84 null-var2081))) ; Negate: Cond: $r2 == null  
(declare-const var77 var2282) ; Statement: $r6 := @caughtexception 
(assert (not (= var77 null-var2282)))
(define-const var294 var2254 var2254-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1205 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1205)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1205!1 String)
(assert (= var1205!1 ""))
(assert true)
(define-const var1748 String (append/672562846 var1205!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1205!2 String)
(assert (= var1205!2 (str.++ var1205!1 "set ")))
(define-const var1144 String (fieldName/-488737871 (cast-from-var2650-to-var3427 var120))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.String fieldName> 
(assert true)
(define-const var2057 String (append/672562846 var1748 var1144)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1748!1 String)
(assert (= var1748!1 (str.++ var1748 var1144)))
(assert true)
(define-const var613 String (append/672562846 var2057 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 " error")))
(assert true)
(define-const var1791 String (toString/-2075883882 var613)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var294 var1791 (cast-from-var2282-to-var1511 var77))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var294!1 var2254)
(declare-const var1791!1 String)
(declare-const var77!1 var2282)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3290_toFloatValue/-1806772592=([java.lang.Object], float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2650-to-var3427=([com.alibaba.fastjson2.reader.FieldReaderFloatValueField], com.alibaba.fastjson2.reader.FieldReader), var2254-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2282-to-var1511=([java.lang.Exception], java.lang.Throwable)}
; {var2650=com.alibaba.fastjson2.reader.FieldReaderFloatValueField, var120=r1, var3591=java.lang.Object, var1235=r3, var2121=r0, var3290=com.alibaba.fastjson2.util.TypeUtils, var108=f0, var2081=com.alibaba.fastjson2.schema.JSONSchema, var3427=com.alibaba.fastjson2.reader.FieldReader, var84=$r2, var2282=java.lang.Exception, var77=$r6, var2254=com.alibaba.fastjson2.JSONException, var294=$r7, var1205=$r8, var1748=$r10, var1144=$r9, var2057=$r11, var613=$r12, var1791=$r13, var1511=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueField=var2650, r1=var120, java.lang.Object=var3591, r3=var1235, r0=var2121, com.alibaba.fastjson2.util.TypeUtils=var3290, f0=var108, com.alibaba.fastjson2.schema.JSONSchema=var2081, com.alibaba.fastjson2.reader.FieldReader=var3427, $r2=var84, java.lang.Exception=var2282, $r6=var77, com.alibaba.fastjson2.JSONException=var2254, $r7=var294, $r8=var1205, $r10=var1748, $r9=var1144, $r11=var2057, $r12=var613, $r13=var1791, java.lang.Throwable=var1511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueField;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	f0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: float toFloatValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2