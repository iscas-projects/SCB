(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3041 0)
(declare-sort var588 0)
(declare-sort var2432 0)
(declare-sort var1854 0)
(declare-sort var1430 0)
(declare-sort var103 0)
(declare-sort var829 0)
(declare-sort var2036 0)
(declare-sort var728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBigDecimal/-1756410963 (var588) var1854)
(declare-fun schema/-488737871 (var103) var1430)
(declare-fun cast-from-var3041-to-var103 (var3041) var103)
(declare-fun var2036-init () var2036)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var103) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var588 String) String)
(declare-fun <init>/-743866570 (var2036 String var728) void)
(declare-fun cast-from-var829-to-var728 (var829) var728)
(declare-const null-var3041 var3041)
(declare-const null-var588 var588)
(declare-const null-var2432 var2432)
(declare-const null-var1430 var1430)
(declare-const null-var829 var829)
(declare-const var382 var3041) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField 
(assert (not (= var382 null-var3041)))
(declare-const var3476 var588) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3476 null-var588)))
(declare-const var1716 var2432) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1716 null-var2432)))
(assert true)
(define-const var3879 var1854 (readBigDecimal/-1756410963 var3476)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal readBigDecimal()>() 
(define-const var422 var1430 (schema/-488737871 (cast-from-var3041-to-var103 var382))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field> 
(assert (not (= var422 null-var1430))) ; Negate: Cond: $r3 == null  
(declare-const var542 var829) ; Statement: $r7 := @caughtexception 
(assert (not (= var542 null-var829)))
(define-const var2252 var2036 var2036-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3093 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3093)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3093!1 String)
(assert (= var3093!1 ""))
(assert true)
(define-const var1698 String (append/672562846 var3093!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3093!2 String)
(assert (= var3093!2 (str.++ var3093!1 "set ")))
(define-const var2282 String (fieldName/-488737871 (cast-from-var3041-to-var103 var382))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName> 
(assert true)
(define-const var2830 String (append/672562846 var1698 var2282)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 var2282)))
(assert true)
(define-const var1315 String (append/672562846 var2830 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2830!1 String)
(assert (= var2830!1 (str.++ var2830 " error")))
(assert true)
(define-const var2163 String (toString/-2075883882 var1315)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1519 String (info/-1659839707 var3476 var2163)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var2252 var1519 (cast-from-var829-to-var728 var542))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var2252!1 var2036)
(declare-const var1519!1 String)
(declare-const var542!1 var829)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readBigDecimal/-1756410963=([com.alibaba.fastjson2.JSONReader], java.math.BigDecimal), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3041-to-var103=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalField], com.alibaba.fastjson2.reader.FieldReader), var2036-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var829-to-var728=([java.lang.Exception], java.lang.Throwable)}
; {var3041=com.alibaba.fastjson2.reader.FieldReaderBigDecimalField, var382=r2, var588=com.alibaba.fastjson2.JSONReader, var3476=r0, var2432=java.lang.Object, var1716=r4, var1854=java.math.BigDecimal, var3879=r1, var1430=com.alibaba.fastjson2.schema.JSONSchema, var103=com.alibaba.fastjson2.reader.FieldReader, var422=$r3, var829=java.lang.Exception, var542=$r7, var2036=com.alibaba.fastjson2.JSONException, var2252=$r8, var3093=$r9, var1698=$r11, var2282=$r10, var2830=$r12, var1315=$r13, var2163=$r14, var1519=$r15, var728=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalField=var3041, r2=var382, com.alibaba.fastjson2.JSONReader=var588, r0=var3476, java.lang.Object=var2432, r4=var1716, java.math.BigDecimal=var1854, r1=var3879, com.alibaba.fastjson2.schema.JSONSchema=var1430, com.alibaba.fastjson2.reader.FieldReader=var103, $r3=var422, java.lang.Exception=var829, $r7=var542, com.alibaba.fastjson2.JSONException=var2036, $r8=var2252, $r9=var3093, $r11=var1698, $r10=var2282, $r12=var2830, $r13=var1315, $r14=var2163, $r15=var1519, java.lang.Throwable=var728}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal readBigDecimal()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2