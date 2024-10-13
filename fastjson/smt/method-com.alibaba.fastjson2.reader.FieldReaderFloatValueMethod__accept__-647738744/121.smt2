(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2504 0)
(declare-sort var1052 0)
(declare-sort var2167 0)
(declare-sort var2977 0)
(declare-sort var2204 0)
(declare-sort var3137 0)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2977) var2167)
(declare-fun cast-from-var2504-to-var2977 (var2504) var2977)
(declare-fun var3137-init () var3137)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2977) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3137 String var54) void)
(declare-fun cast-from-var2204-to-var54 (var2204) var54)
(declare-const null-var2504 var2504)
(declare-const null-var1052 var1052)
(declare-const null-Int Int)
(declare-const null-var2167 var2167)
(declare-const null-var2204 var2204)
(declare-const var349 var2504) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod 
(assert (not (= var349 null-var2504)))
(declare-const var822 var1052) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var822 null-var1052)))
(declare-const var1005 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1005 null-Int)))
(define-const var3712 var2167 (schema/-488737871 (cast-from-var2504-to-var2977 var349))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3712 null-var2167))) ; Negate: Cond: $r1 == null  
(declare-const var344 var2204) ; Statement: $r7 := @caughtexception 
(assert (not (= var344 null-var2204)))
(define-const var845 var3137 var3137-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1794 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1794)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1794!1 String)
(assert (= var1794!1 ""))
(assert true)
(define-const var3838 String (append/672562846 var1794!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1794!2 String)
(assert (= var1794!2 (str.++ var1794!1 "set ")))
(define-const var2761 String (fieldName/-488737871 (cast-from-var2504-to-var2977 var349))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var415 String (append/672562846 var3838 var2761)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 var2761)))
(assert true)
(define-const var3169 String (append/672562846 var415 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var415!1 String)
(assert (= var415!1 (str.++ var415 " error")))
(assert true)
(define-const var2522 String (toString/-2075883882 var3169)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var845 var2522 (cast-from-var2204-to-var54 var344))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var845!1 var3137)
(declare-const var2522!1 String)
(declare-const var344!1 var2204)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2504-to-var2977=([com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3137-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2204-to-var54=([java.lang.Exception], java.lang.Throwable)}
; {var2504=com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod, var349=r0, var1052=java.lang.Object, var822=r2, var1005=i0, var2167=com.alibaba.fastjson2.schema.JSONSchema, var2977=com.alibaba.fastjson2.reader.FieldReader, var3712=$r1, var2204=java.lang.Exception, var344=$r7, var3137=com.alibaba.fastjson2.JSONException, var845=$r8, var1794=$r9, var3838=$r11, var2761=$r10, var415=$r12, var3169=$r13, var2522=$r14, var54=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod=var2504, r0=var349, java.lang.Object=var1052, r2=var822, i0=var1005, com.alibaba.fastjson2.schema.JSONSchema=var2167, com.alibaba.fastjson2.reader.FieldReader=var2977, $r1=var3712, java.lang.Exception=var2204, $r7=var344, com.alibaba.fastjson2.JSONException=var3137, $r8=var845, $r9=var1794, $r11=var3838, $r10=var2761, $r12=var415, $r13=var3169, $r14=var2522, java.lang.Throwable=var54}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2