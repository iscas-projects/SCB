(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2977 0)
(declare-sort var2907 0)
(declare-sort var843 0)
(declare-sort var499 0)
(declare-sort var3914 0)
(declare-sort var894 0)
(declare-sort var3216 0)
(declare-sort var2973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var2907) Int)
(declare-fun schema/-488737871 (var3914) var499)
(declare-fun cast-from-var2977-to-var3914 (var2977) var3914)
(declare-fun var3216-init () var3216)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3914) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2907 String) String)
(declare-fun <init>/-743866570 (var3216 String var2973) void)
(declare-fun cast-from-var894-to-var2973 (var894) var2973)
(declare-const null-var2977 var2977)
(declare-const null-var2907 var2907)
(declare-const null-var843 var843)
(declare-const null-var499 var499)
(declare-const null-var894 var894)
(declare-const var3084 var2977) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField 
(assert (not (= var3084 null-var2977)))
(declare-const var1152 var2907) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1152 null-var2907)))
(declare-const var2777 var843) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2777 null-var843)))
(assert true)
(define-const var1157 Int (readInt32Value/1995748807 var1152)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var1048 var499 (schema/-488737871 (cast-from-var2977-to-var3914 var3084))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field> 
(assert (not (= var1048 null-var499))) ; Negate: Cond: $r2 == null  
(declare-const var3872 var894) ; Statement: $r6 := @caughtexception 
(assert (not (= var3872 null-var894)))
(define-const var1568 var3216 var3216-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3409 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3409)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3409!1 String)
(assert (= var3409!1 ""))
(assert true)
(define-const var851 String (append/672562846 var3409!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3409!2 String)
(assert (= var3409!2 (str.++ var3409!1 "set ")))
(define-const var3038 String (fieldName/-488737871 (cast-from-var2977-to-var3914 var3084))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName> 
(assert true)
(define-const var1232 String (append/672562846 var851 var3038)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var851!1 String)
(assert (= var851!1 (str.++ var851 var3038)))
(assert true)
(define-const var2808 String (append/672562846 var1232 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1232!1 String)
(assert (= var1232!1 (str.++ var1232 " error")))
(assert true)
(define-const var3021 String (toString/-2075883882 var2808)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2965 String (info/-1659839707 var1152 var3021)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var1568 var2965 (cast-from-var894-to-var2973 var3872))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1568!1 var3216)
(declare-const var2965!1 String)
(declare-const var3872!1 var894)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2977-to-var3914=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueField], com.alibaba.fastjson2.reader.FieldReader), var3216-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var894-to-var2973=([java.lang.Exception], java.lang.Throwable)}
; {var2977=com.alibaba.fastjson2.reader.FieldReaderInt8ValueField, var3084=r1, var2907=com.alibaba.fastjson2.JSONReader, var1152=r0, var843=java.lang.Object, var2777=r3, var1157=i0, var499=com.alibaba.fastjson2.schema.JSONSchema, var3914=com.alibaba.fastjson2.reader.FieldReader, var1048=$r2, var894=java.lang.Exception, var3872=$r6, var3216=com.alibaba.fastjson2.JSONException, var1568=$r7, var3409=$r8, var851=$r10, var3038=$r9, var1232=$r11, var2808=$r12, var3021=$r13, var2965=$r14, var2973=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueField=var2977, r1=var3084, com.alibaba.fastjson2.JSONReader=var2907, r0=var1152, java.lang.Object=var843, r3=var2777, i0=var1157, com.alibaba.fastjson2.schema.JSONSchema=var499, com.alibaba.fastjson2.reader.FieldReader=var3914, $r2=var1048, java.lang.Exception=var894, $r6=var3872, com.alibaba.fastjson2.JSONException=var3216, $r7=var1568, $r8=var3409, $r10=var851, $r9=var3038, $r11=var1232, $r12=var2808, $r13=var3021, $r14=var2965, java.lang.Throwable=var2973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2