(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2588 0)
(declare-sort var894 0)
(declare-sort var1936 0)
(declare-sort var1781 0)
(declare-sort var385 0)
(declare-sort var2633 0)
(declare-sort var2133 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBoolValue/1806579152 (var894) Bool)
(declare-fun schema/-488737871 (var385) var1781)
(declare-fun cast-from-var2588-to-var385 (var2588) var385)
(declare-fun var2133-init () var2133)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var385) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var894 String) String)
(declare-fun <init>/-743866570 (var2133 String var429) void)
(declare-fun cast-from-var2633-to-var429 (var2633) var429)
(declare-const null-var2588 var2588)
(declare-const null-var894 var894)
(declare-const null-var1936 var1936)
(declare-const null-var1781 var1781)
(declare-const null-var2633 var2633)
(declare-const var3252 var2588) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField 
(assert (not (= var3252 null-var2588)))
(declare-const var3535 var894) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3535 null-var894)))
(declare-const var2787 var1936) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2787 null-var1936)))
(assert true)
(define-const var937 Bool (readBoolValue/1806579152 var3535)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>() 
(define-const var128 var1781 (schema/-488737871 (cast-from-var2588-to-var385 var3252))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.reflect.Field field> 
(assert (not (= var128 null-var1781))) ; Negate: Cond: $r2 == null  
(declare-const var1957 var2633) ; Statement: $r7 := @caughtexception 
(assert (not (= var1957 null-var2633)))
(define-const var435 var2133 var2133-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var853 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var853)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var853!1 String)
(assert (= var853!1 ""))
(assert true)
(define-const var2191 String (append/672562846 var853!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var853!2 String)
(assert (= var853!2 (str.++ var853!1 "set ")))
(define-const var3804 String (fieldName/-488737871 (cast-from-var2588-to-var385 var3252))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName> 
(assert true)
(define-const var427 String (append/672562846 var2191 var3804)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2191!1 String)
(assert (= var2191!1 (str.++ var2191 var3804)))
(assert true)
(define-const var2606 String (append/672562846 var427 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var427!1 String)
(assert (= var427!1 (str.++ var427 " error")))
(assert true)
(define-const var2488 String (toString/-2075883882 var2606)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1319 String (info/-1659839707 var3535 var2488)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var435 var1319 (cast-from-var2633-to-var429 var1957))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var435!1 var2133)
(declare-const var1319!1 String)
(declare-const var1957!1 var2633)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readBoolValue/1806579152=([com.alibaba.fastjson2.JSONReader], boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2588-to-var385=([com.alibaba.fastjson2.reader.FieldReaderBoolValueField], com.alibaba.fastjson2.reader.FieldReader), var2133-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2633-to-var429=([java.lang.Exception], java.lang.Throwable)}
; {var2588=com.alibaba.fastjson2.reader.FieldReaderBoolValueField, var3252=r1, var894=com.alibaba.fastjson2.JSONReader, var3535=r0, var1936=java.lang.Object, var2787=r3, var937=z0, var1781=com.alibaba.fastjson2.schema.JSONSchema, var385=com.alibaba.fastjson2.reader.FieldReader, var128=$r2, var2633=java.lang.Exception, var1957=$r7, var2133=com.alibaba.fastjson2.JSONException, var435=$r8, var853=$r9, var2191=$r11, var3804=$r10, var427=$r12, var2606=$r13, var2488=$r14, var1319=$r15, var429=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueField=var2588, r1=var3252, com.alibaba.fastjson2.JSONReader=var894, r0=var3535, java.lang.Object=var1936, r3=var2787, z0=var937, com.alibaba.fastjson2.schema.JSONSchema=var1781, com.alibaba.fastjson2.reader.FieldReader=var385, $r2=var128, java.lang.Exception=var2633, $r7=var1957, com.alibaba.fastjson2.JSONException=var2133, $r8=var435, $r9=var853, $r11=var2191, $r10=var3804, $r12=var427, $r13=var2606, $r14=var2488, $r15=var1319, java.lang.Throwable=var429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2