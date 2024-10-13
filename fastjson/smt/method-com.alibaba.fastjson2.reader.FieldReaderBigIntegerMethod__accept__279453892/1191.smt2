(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var513 0)
(declare-sort var2011 0)
(declare-sort var2667 0)
(declare-sort var2089 0)
(declare-sort var409 0)
(declare-sort var1204 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2089) var2667)
(declare-fun cast-from-var513-to-var2089 (var513) var2089)
(declare-fun var1204-init () var1204)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2089) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1204 String var468) void)
(declare-fun cast-from-var409-to-var468 (var409) var468)
(declare-const null-var513 var513)
(declare-const null-var2011 var2011)
(declare-const null-Int Int)
(declare-const null-var2667 var2667)
(declare-const null-var409 var409)
(declare-const var2980 var513) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod 
(assert (not (= var2980 null-var513)))
(declare-const var377 var2011) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var377 null-var2011)))
(declare-const var960 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var960 null-Int)))
(define-const var401 var2667 (schema/-488737871 (cast-from-var513-to-var2089 var2980))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method> 
(assert (not (= var401 null-var2667))) ; Negate: Cond: $r1 == null  
(declare-const var151 var409) ; Statement: $r7 := @caughtexception 
(assert (not (= var151 null-var409)))
(define-const var520 var1204 var1204-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var972 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var972)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var972!1 String)
(assert (= var972!1 ""))
(assert true)
(define-const var23 String (append/672562846 var972!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var972!2 String)
(assert (= var972!2 (str.++ var972!1 "set ")))
(define-const var2994 String (fieldName/-488737871 (cast-from-var513-to-var2089 var2980))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName> 
(assert true)
(define-const var1528 String (append/672562846 var23 var2994)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var23!1 String)
(assert (= var23!1 (str.++ var23 var2994)))
(assert true)
(define-const var1267 String (append/672562846 var1528 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1528!1 String)
(assert (= var1528!1 (str.++ var1528 " error")))
(assert true)
(define-const var518 String (toString/-2075883882 var1267)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var520 var518 (cast-from-var409-to-var468 var151))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var520!1 var1204)
(declare-const var518!1 String)
(declare-const var151!1 var409)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var513-to-var2089=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod], com.alibaba.fastjson2.reader.FieldReader), var1204-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var409-to-var468=([java.lang.Exception], java.lang.Throwable)}
; {var513=com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod, var2980=r0, var2011=java.lang.Object, var377=r2, var960=l0, var2667=com.alibaba.fastjson2.schema.JSONSchema, var2089=com.alibaba.fastjson2.reader.FieldReader, var401=$r1, var409=java.lang.Exception, var151=$r7, var1204=com.alibaba.fastjson2.JSONException, var520=$r8, var972=$r9, var23=$r11, var2994=$r10, var1528=$r12, var1267=$r13, var518=$r14, var468=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod=var513, r0=var2980, java.lang.Object=var2011, r2=var377, l0=var960, com.alibaba.fastjson2.schema.JSONSchema=var2667, com.alibaba.fastjson2.reader.FieldReader=var2089, $r1=var401, java.lang.Exception=var409, $r7=var151, com.alibaba.fastjson2.JSONException=var1204, $r8=var520, $r9=var972, $r11=var23, $r10=var2994, $r12=var1528, $r13=var1267, $r14=var518, java.lang.Throwable=var468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2