(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var720 0)
(declare-sort var3417 0)
(declare-sort var2339 0)
(declare-sort var2780 0)
(declare-sort var2663 0)
(declare-sort var3570 0)
(declare-sort var2460 0)
(declare-sort var1775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var3417) Int)
(declare-fun schema/-488737871 (var2663) var2780)
(declare-fun cast-from-var720-to-var2663 (var720) var2663)
(declare-fun var2460-init () var2460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2663) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3417 String) String)
(declare-fun <init>/-743866570 (var2460 String var1775) void)
(declare-fun cast-from-var3570-to-var1775 (var3570) var1775)
(declare-const null-var720 var720)
(declare-const null-var3417 var3417)
(declare-const null-var2339 var2339)
(declare-const null-var2780 var2780)
(declare-const null-var3570 var3570)
(declare-const var1138 var720) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Method 
(assert (not (= var1138 null-var720)))
(declare-const var787 var3417) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var787 null-var3417)))
(declare-const var1259 var2339) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1259 null-var2339)))
(assert true)
(define-const var428 Int (readInt32/1162195591 var787)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var1061 var2780 (schema/-488737871 (cast-from-var720-to-var2663 var1138))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.reflect.Method method> 
(assert (not (= var1061 null-var2780))) ; Negate: Cond: $r3 == null  
(declare-const var3658 var3570) ; Statement: $r8 := @caughtexception 
(assert (not (= var3658 null-var3570)))
(define-const var2744 var2460 var2460-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3068 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3068)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3068!1 String)
(assert (= var3068!1 ""))
(assert true)
(define-const var912 String (append/672562846 var3068!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3068!2 String)
(assert (= var3068!2 (str.++ var3068!1 "set ")))
(define-const var403 String (fieldName/-488737871 (cast-from-var720-to-var2663 var1138))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.String fieldName> 
(assert true)
(define-const var1533 String (append/672562846 var912 var403)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var912!1 String)
(assert (= var912!1 (str.++ var912 var403)))
(assert true)
(define-const var2470 String (append/672562846 var1533 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1533!1 String)
(assert (= var1533!1 (str.++ var1533 " error")))
(assert true)
(define-const var586 String (toString/-2075883882 var2470)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var960 String (info/-1659839707 var787 var586)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2744 var960 (cast-from-var3570-to-var1775 var3658))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2744!1 var2460)
(declare-const var960!1 String)
(declare-const var3658!1 var3570)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var720-to-var2663=([com.alibaba.fastjson2.reader.FieldReaderInt8Method], com.alibaba.fastjson2.reader.FieldReader), var2460-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3570-to-var1775=([java.lang.Exception], java.lang.Throwable)}
; {var720=com.alibaba.fastjson2.reader.FieldReaderInt8Method, var1138=r2, var3417=com.alibaba.fastjson2.JSONReader, var787=r0, var2339=java.lang.Object, var1259=r4, var428=r1, var2780=com.alibaba.fastjson2.schema.JSONSchema, var2663=com.alibaba.fastjson2.reader.FieldReader, var1061=$r3, var3570=java.lang.Exception, var3658=$r8, var2460=com.alibaba.fastjson2.JSONException, var2744=$r9, var3068=$r10, var912=$r12, var403=$r11, var1533=$r13, var2470=$r14, var586=$r15, var960=$r16, var1775=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8Method=var720, r2=var1138, com.alibaba.fastjson2.JSONReader=var3417, r0=var787, java.lang.Object=var2339, r4=var1259, r1=var428, com.alibaba.fastjson2.schema.JSONSchema=var2780, com.alibaba.fastjson2.reader.FieldReader=var2663, $r3=var1061, java.lang.Exception=var3570, $r8=var3658, com.alibaba.fastjson2.JSONException=var2460, $r9=var2744, $r10=var3068, $r12=var912, $r11=var403, $r13=var1533, $r14=var2470, $r15=var586, $r16=var960, java.lang.Throwable=var1775}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2