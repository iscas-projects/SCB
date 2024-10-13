(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var2619 0)
(declare-sort var3900 0)
(declare-sort var3226 0)
(declare-sort var2989 0)
(declare-sort var3913 0)
(declare-sort var757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3226) var3900)
(declare-fun cast-from-var2930-to-var3226 (var2930) var3226)
(declare-fun var3913-init () var3913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3226) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3913 String var757) void)
(declare-fun cast-from-var2989-to-var757 (var2989) var757)
(declare-const null-var2930 var2930)
(declare-const null-var2619 var2619)
(declare-const null-Int Int)
(declare-const null-var3900 var3900)
(declare-const null-var2989 var2989)
(declare-const var2186 var2930) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField 
(assert (not (= var2186 null-var2930)))
(declare-const var2835 var2619) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2835 null-var2619)))
(declare-const var2239 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2239 null-Int)))
(define-const var1038 var3900 (schema/-488737871 (cast-from-var2930-to-var3226 var2186))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field> 
(assert (not (= var1038 null-var3900))) ; Negate: Cond: $r1 == null  
(declare-const var3421 var2989) ; Statement: $r5 := @caughtexception 
(assert (not (= var3421 null-var2989)))
(define-const var2086 var3913 var3913-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2208 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2208)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2208!1 String)
(assert (= var2208!1 ""))
(assert true)
(define-const var743 String (append/672562846 var2208!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2208!2 String)
(assert (= var2208!2 (str.++ var2208!1 "set ")))
(define-const var2156 String (fieldName/-488737871 (cast-from-var2930-to-var3226 var2186))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName> 
(assert true)
(define-const var3545 String (append/672562846 var743 var2156)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var743!1 String)
(assert (= var743!1 (str.++ var743 var2156)))
(assert true)
(define-const var3762 String (append/672562846 var3545 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3545!1 String)
(assert (= var3545!1 (str.++ var3545 " error")))
(assert true)
(define-const var2470 String (toString/-2075883882 var3762)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2086 var2470 (cast-from-var2989-to-var757 var3421))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var2086!1 var3913)
(declare-const var2470!1 String)
(declare-const var3421!1 var2989)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2930-to-var3226=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueField], com.alibaba.fastjson2.reader.FieldReader), var3913-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2989-to-var757=([java.lang.Exception], java.lang.Throwable)}
; {var2930=com.alibaba.fastjson2.reader.FieldReaderInt16ValueField, var2186=r0, var2619=java.lang.Object, var2835=r2, var2239=l0, var3900=com.alibaba.fastjson2.schema.JSONSchema, var3226=com.alibaba.fastjson2.reader.FieldReader, var1038=$r1, var2989=java.lang.Exception, var3421=$r5, var3913=com.alibaba.fastjson2.JSONException, var2086=$r6, var2208=$r7, var743=$r9, var2156=$r8, var3545=$r10, var3762=$r11, var2470=$r12, var757=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueField=var2930, r0=var2186, java.lang.Object=var2619, r2=var2835, l0=var2239, com.alibaba.fastjson2.schema.JSONSchema=var3900, com.alibaba.fastjson2.reader.FieldReader=var3226, $r1=var1038, java.lang.Exception=var2989, $r5=var3421, com.alibaba.fastjson2.JSONException=var3913, $r6=var2086, $r7=var2208, $r9=var743, $r8=var2156, $r10=var3545, $r11=var3762, $r12=var2470, java.lang.Throwable=var757}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field>;	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 2