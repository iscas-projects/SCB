(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1737 0)
(declare-sort var52 0)
(declare-sort var117 0)
(declare-sort var3470 0)
(declare-sort var1542 0)
(declare-sort var3265 0)
(declare-sort var2936 0)
(declare-sort var2135 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3470_toBigDecimal/-1065777989 (var52) var117)
(declare-fun schema/-488737871 (var3265) var1542)
(declare-fun cast-from-var1737-to-var3265 (var1737) var3265)
(declare-fun var2135-init () var2135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var3265) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2135 String var1386) void)
(declare-fun cast-from-var2936-to-var1386 (var2936) var1386)
(declare-const null-var1737 var1737)
(declare-const null-var52 var52)
(declare-const null-var1542 var1542)
(declare-const null-var2936 var2936)
(declare-const var3399 var1737) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc 
(assert (not (= var3399 null-var1737)))
(declare-const var12 var52) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var12 null-var52)))
(declare-const var344 var52) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var344 null-var52)))
(define-const var3730 var117 (var3470_toBigDecimal/-1065777989 var344)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0) 
(define-const var2682 var1542 (schema/-488737871 (cast-from-var1737-to-var3265 var3399))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function> 
(assert (not (= var2682 null-var1542))) ; Negate: Cond: $r3 == null  
(declare-const var648 var2936) ; Statement: $r7 := @caughtexception 
(assert (not (= var648 null-var2936)))
(define-const var2639 var2135 var2135-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1332 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1332)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1332!1 String)
(assert (= var1332!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var1332!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1332!2 String)
(assert (= var1332!2 (str.++ var1332!1 "set ")))
(assert true)
(define-const var3689 String (toString/2110042505 (cast-from-var1737-to-var3265 var3399))) ; Statement: $r10 = specialinvoke r2.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var3380 String (append/672562846 var2712 var3689)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 var3689)))
(assert true)
(define-const var2031 String (append/672562846 var3380 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3380!1 String)
(assert (= var3380!1 (str.++ var3380 " error")))
(assert true)
(define-const var1992 String (toString/-2075883882 var2031)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2639 var1992 (cast-from-var2936-to-var1386 var648))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2639!1 var2135)
(declare-const var1992!1 String)
(declare-const var648!1 var2936)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3470_toBigDecimal/-1065777989=([java.lang.Object], java.math.BigDecimal), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1737-to-var3265=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc], com.alibaba.fastjson2.reader.FieldReader), var2135-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2936-to-var1386=([java.lang.Exception], java.lang.Throwable)}
; {var1737=com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc, var3399=r2, var52=java.lang.Object, var12=r4, var344=r0, var117=java.math.BigDecimal, var3470=com.alibaba.fastjson2.util.TypeUtils, var3730=r1, var1542=com.alibaba.fastjson2.schema.JSONSchema, var3265=com.alibaba.fastjson2.reader.FieldReader, var2682=$r3, var2936=java.lang.Exception, var648=$r7, var2135=com.alibaba.fastjson2.JSONException, var2639=$r8, var1332=$r9, var2712=$r11, var3689=$r10, var3380=$r12, var2031=$r13, var1992=$r14, var1386=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc=var1737, r2=var3399, java.lang.Object=var52, r4=var12, r0=var344, java.math.BigDecimal=var117, com.alibaba.fastjson2.util.TypeUtils=var3470, r1=var3730, com.alibaba.fastjson2.schema.JSONSchema=var1542, com.alibaba.fastjson2.reader.FieldReader=var3265, $r3=var2682, java.lang.Exception=var2936, $r7=var648, com.alibaba.fastjson2.JSONException=var2135, $r8=var2639, $r9=var1332, $r11=var2712, $r10=var3689, $r12=var3380, $r13=var2031, $r14=var1992, java.lang.Throwable=var1386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = specialinvoke r2.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2