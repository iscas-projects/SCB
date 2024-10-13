(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1119 0)
(declare-sort var3757 0)
(declare-sort var1447 0)
(declare-sort var1306 0)
(declare-sort var2761 0)
(declare-sort var33 0)
(declare-sort var3051 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var3757) Int)
(declare-fun schema/-488737871 (var2761) var1306)
(declare-fun cast-from-var1119-to-var2761 (var1119) var2761)
(declare-fun var3051-init () var3051)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2761) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3757 String) String)
(declare-fun <init>/-743866570 (var3051 String var217) void)
(declare-fun cast-from-var33-to-var217 (var33) var217)
(declare-const null-var1119 var1119)
(declare-const null-var3757 var3757)
(declare-const null-var1447 var1447)
(declare-const null-var1306 var1306)
(declare-const null-var33 var33)
(declare-const var3432 var1119) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod 
(assert (not (= var3432 null-var1119)))
(declare-const var1945 var3757) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1945 null-var3757)))
(declare-const var107 var1447) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var107 null-var1447)))
(assert true)
(define-const var3107 Int (readInt32Value/1995748807 var1945)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var43 var1306 (schema/-488737871 (cast-from-var1119-to-var2761 var3432))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var43 null-var1306))) ; Negate: Cond: $r2 == null  
(declare-const var421 var33) ; Statement: $r8 := @caughtexception 
(assert (not (= var421 null-var33)))
(define-const var460 var3051 var3051-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2812 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2812)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2812!1 String)
(assert (= var2812!1 ""))
(assert true)
(define-const var143 String (append/672562846 var2812!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2812!2 String)
(assert (= var2812!2 (str.++ var2812!1 "set ")))
(define-const var1223 String (fieldName/-488737871 (cast-from-var1119-to-var2761 var3432))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var3527 String (append/672562846 var143 var1223)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var143!1 String)
(assert (= var143!1 (str.++ var143 var1223)))
(assert true)
(define-const var765 String (append/672562846 var3527 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3527!1 String)
(assert (= var3527!1 (str.++ var3527 " error")))
(assert true)
(define-const var3349 String (toString/-2075883882 var765)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2732 String (info/-1659839707 var1945 var3349)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var460 var2732 (cast-from-var33-to-var217 var421))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var460!1 var3051)
(declare-const var2732!1 String)
(declare-const var421!1 var33)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1119-to-var2761=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3051-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var33-to-var217=([java.lang.Exception], java.lang.Throwable)}
; {var1119=com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod, var3432=r1, var3757=com.alibaba.fastjson2.JSONReader, var1945=r0, var1447=java.lang.Object, var107=r3, var3107=i0, var1306=com.alibaba.fastjson2.schema.JSONSchema, var2761=com.alibaba.fastjson2.reader.FieldReader, var43=$r2, var33=java.lang.Exception, var421=$r8, var3051=com.alibaba.fastjson2.JSONException, var460=$r9, var2812=$r10, var143=$r12, var1223=$r11, var3527=$r13, var765=$r14, var3349=$r15, var2732=$r16, var217=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod=var1119, r1=var3432, com.alibaba.fastjson2.JSONReader=var3757, r0=var1945, java.lang.Object=var1447, r3=var107, i0=var3107, com.alibaba.fastjson2.schema.JSONSchema=var1306, com.alibaba.fastjson2.reader.FieldReader=var2761, $r2=var43, java.lang.Exception=var33, $r8=var421, com.alibaba.fastjson2.JSONException=var3051, $r9=var460, $r10=var2812, $r12=var143, $r11=var1223, $r13=var3527, $r14=var765, $r15=var3349, $r16=var2732, java.lang.Throwable=var217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2