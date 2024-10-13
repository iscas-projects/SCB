(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2443 0)
(declare-sort var2735 0)
(declare-sort var1137 0)
(declare-sort var1954 0)
(declare-sort var3730 0)
(declare-sort var2368 0)
(declare-sort var2892 0)
(declare-sort var1100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readFloat/1858673563 (var2735) Float32)
(declare-fun schema/-488737871 (var3730) var1954)
(declare-fun cast-from-var2443-to-var3730 (var2443) var3730)
(declare-fun var2892-init () var2892)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3730) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2735 String) String)
(declare-fun <init>/-743866570 (var2892 String var1100) void)
(declare-fun cast-from-var2368-to-var1100 (var2368) var1100)
(declare-const null-var2443 var2443)
(declare-const null-var2735 var2735)
(declare-const null-var1137 var1137)
(declare-const null-var1954 var1954)
(declare-const null-var2368 var2368)
(declare-const var1908 var2443) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatField 
(assert (not (= var1908 null-var2443)))
(declare-const var1605 var2735) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1605 null-var2735)))
(declare-const var539 var1137) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var539 null-var1137)))
(assert true)
(define-const var3703 Float32 (readFloat/1858673563 var1605)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Float readFloat()>() 
(define-const var557 var1954 (schema/-488737871 (cast-from-var2443-to-var3730 var1908))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.reflect.Field field> 
(assert (not (= var557 null-var1954))) ; Negate: Cond: $r3 == null  
(declare-const var2418 var2368) ; Statement: $r7 := @caughtexception 
(assert (not (= var2418 null-var2368)))
(define-const var3406 var2892 var2892-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var658 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var658)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var658!1 String)
(assert (= var658!1 ""))
(assert true)
(define-const var13 String (append/672562846 var658!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var658!2 String)
(assert (= var658!2 (str.++ var658!1 "set ")))
(define-const var1438 String (fieldName/-488737871 (cast-from-var2443-to-var3730 var1908))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.String fieldName> 
(assert true)
(define-const var2256 String (append/672562846 var13 var1438)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var13!1 String)
(assert (= var13!1 (str.++ var13 var1438)))
(assert true)
(define-const var3849 String (append/672562846 var2256 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2256!1 String)
(assert (= var2256!1 (str.++ var2256 " error")))
(assert true)
(define-const var3142 String (toString/-2075883882 var3849)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2188 String (info/-1659839707 var1605 var3142)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var3406 var2188 (cast-from-var2368-to-var1100 var2418))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var3406!1 var2892)
(declare-const var2188!1 String)
(declare-const var2418!1 var2368)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readFloat/1858673563=([com.alibaba.fastjson2.JSONReader], java.lang.Float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2443-to-var3730=([com.alibaba.fastjson2.reader.FieldReaderFloatField], com.alibaba.fastjson2.reader.FieldReader), var2892-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2368-to-var1100=([java.lang.Exception], java.lang.Throwable)}
; {var2443=com.alibaba.fastjson2.reader.FieldReaderFloatField, var1908=r2, var2735=com.alibaba.fastjson2.JSONReader, var1605=r0, var1137=java.lang.Object, var539=r4, var3703=r1, var1954=com.alibaba.fastjson2.schema.JSONSchema, var3730=com.alibaba.fastjson2.reader.FieldReader, var557=$r3, var2368=java.lang.Exception, var2418=$r7, var2892=com.alibaba.fastjson2.JSONException, var3406=$r8, var658=$r9, var13=$r11, var1438=$r10, var2256=$r12, var3849=$r13, var3142=$r14, var2188=$r15, var1100=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatField=var2443, r2=var1908, com.alibaba.fastjson2.JSONReader=var2735, r0=var1605, java.lang.Object=var1137, r4=var539, r1=var3703, com.alibaba.fastjson2.schema.JSONSchema=var1954, com.alibaba.fastjson2.reader.FieldReader=var3730, $r3=var557, java.lang.Exception=var2368, $r7=var2418, com.alibaba.fastjson2.JSONException=var2892, $r8=var3406, $r9=var658, $r11=var13, $r10=var1438, $r12=var2256, $r13=var3849, $r14=var3142, $r15=var2188, java.lang.Throwable=var1100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Float readFloat()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2