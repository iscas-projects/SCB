(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var661 0)
(declare-sort var3146 0)
(declare-sort var3959 0)
(declare-sort var3863 0)
(declare-sort var662 0)
(declare-sort var3424 0)
(declare-sort var1377 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readFloatValue/2140018626 (var3146) Float32)
(declare-fun schema/-488737871 (var662) var3863)
(declare-fun cast-from-var661-to-var662 (var661) var662)
(declare-fun var1377-init () var1377)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var662) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3146 String) String)
(declare-fun <init>/-743866570 (var1377 String var3368) void)
(declare-fun cast-from-var3424-to-var3368 (var3424) var3368)
(declare-const null-var661 var661)
(declare-const null-var3146 var3146)
(declare-const null-var3959 var3959)
(declare-const null-var3863 var3863)
(declare-const null-var3424 var3424)
(declare-const var2657 var661) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod 
(assert (not (= var2657 null-var661)))
(declare-const var1584 var3146) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1584 null-var3146)))
(declare-const var3542 var3959) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3542 null-var3959)))
(assert true)
(define-const var3898 Float32 (readFloatValue/2140018626 var1584)) ; Statement: f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>() 
(define-const var1435 var3863 (schema/-488737871 (cast-from-var661-to-var662 var2657))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method> 
(assert (not (= var1435 null-var3863))) ; Negate: Cond: $r2 == null  
(declare-const var1324 var3424) ; Statement: $r8 := @caughtexception 
(assert (not (= var1324 null-var3424)))
(define-const var3943 var1377 var1377-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2482 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2482)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2482!1 String)
(assert (= var2482!1 ""))
(assert true)
(define-const var176 String (append/672562846 var2482!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2482!2 String)
(assert (= var2482!2 (str.++ var2482!1 "set ")))
(define-const var1007 String (fieldName/-488737871 (cast-from-var661-to-var662 var2657))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2848 String (append/672562846 var176 var1007)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var176!1 String)
(assert (= var176!1 (str.++ var176 var1007)))
(assert true)
(define-const var3286 String (append/672562846 var2848 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 " error")))
(assert true)
(define-const var2695 String (toString/-2075883882 var3286)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1645 String (info/-1659839707 var1584 var2695)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var3943 var1645 (cast-from-var3424-to-var3368 var1324))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var3943!1 var1377)
(declare-const var1645!1 String)
(declare-const var1324!1 var3424)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readFloatValue/2140018626=([com.alibaba.fastjson2.JSONReader], float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var661-to-var662=([com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod], com.alibaba.fastjson2.reader.FieldReader), var1377-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3424-to-var3368=([java.lang.Exception], java.lang.Throwable)}
; {var661=com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod, var2657=r1, var3146=com.alibaba.fastjson2.JSONReader, var1584=r0, var3959=java.lang.Object, var3542=r3, var3898=f0, var3863=com.alibaba.fastjson2.schema.JSONSchema, var662=com.alibaba.fastjson2.reader.FieldReader, var1435=$r2, var3424=java.lang.Exception, var1324=$r8, var1377=com.alibaba.fastjson2.JSONException, var3943=$r9, var2482=$r10, var176=$r12, var1007=$r11, var2848=$r13, var3286=$r14, var2695=$r15, var1645=$r16, var3368=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod=var661, r1=var2657, com.alibaba.fastjson2.JSONReader=var3146, r0=var1584, java.lang.Object=var3959, r3=var3542, f0=var3898, com.alibaba.fastjson2.schema.JSONSchema=var3863, com.alibaba.fastjson2.reader.FieldReader=var662, $r2=var1435, java.lang.Exception=var3424, $r8=var1324, com.alibaba.fastjson2.JSONException=var1377, $r9=var3943, $r10=var2482, $r12=var176, $r11=var1007, $r13=var2848, $r14=var3286, $r15=var2695, $r16=var1645, java.lang.Throwable=var3368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	f0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: float readFloatValue()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderFloatValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2