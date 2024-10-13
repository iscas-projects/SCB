(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var2765 0)
(declare-sort var2377 0)
(declare-sort var202 0)
(declare-sort var799 0)
(declare-sort var1590 0)
(declare-sort var2303 0)
(declare-sort var1177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2377_toByte/2021493365 (var2765) Int)
(declare-fun schema/-488737871 (var799) var202)
(declare-fun cast-from-var1401-to-var799 (var1401) var799)
(declare-fun var2303-init () var2303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var799) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2303 String var1177) void)
(declare-fun cast-from-var1590-to-var1177 (var1590) var1177)
(declare-const null-var1401 var1401)
(declare-const null-var2765 var2765)
(declare-const null-var202 var202)
(declare-const null-var1590 var1590)
(declare-const var2216 var1401) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Field 
(assert (not (= var2216 null-var1401)))
(declare-const var570 var2765) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var570 null-var2765)))
(declare-const var1984 var2765) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1984 null-var2765)))
(define-const var1543 Int (var2377_toByte/2021493365 var1984)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Byte toByte(java.lang.Object)>(r0) 
(define-const var833 var202 (schema/-488737871 (cast-from-var1401-to-var799 var2216))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.reflect.Field field> 
(assert (not (= var833 null-var202))) ; Negate: Cond: $r3 == null  
(declare-const var3 var1590) ; Statement: $r7 := @caughtexception 
(assert (not (= var3 null-var1590)))
(define-const var2706 var2303 var2303-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1152 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1152)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1152!1 String)
(assert (= var1152!1 ""))
(assert true)
(define-const var333 String (append/672562846 var1152!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1152!2 String)
(assert (= var1152!2 (str.++ var1152!1 "set ")))
(define-const var3078 String (fieldName/-488737871 (cast-from-var1401-to-var799 var2216))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.String fieldName> 
(assert true)
(define-const var1254 String (append/672562846 var333 var3078)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var333!1 String)
(assert (= var333!1 (str.++ var333 var3078)))
(assert true)
(define-const var1406 String (append/672562846 var1254 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1254!1 String)
(assert (= var1254!1 (str.++ var1254 " error")))
(assert true)
(define-const var2169 String (toString/-2075883882 var1406)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2706 var2169 (cast-from-var1590-to-var1177 var3))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2706!1 var2303)
(declare-const var2169!1 String)
(declare-const var3!1 var1590)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2377_toByte/2021493365=([java.lang.Object], java.lang.Byte), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1401-to-var799=([com.alibaba.fastjson2.reader.FieldReaderInt8Field], com.alibaba.fastjson2.reader.FieldReader), var2303-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1590-to-var1177=([java.lang.Exception], java.lang.Throwable)}
; {var1401=com.alibaba.fastjson2.reader.FieldReaderInt8Field, var2216=r2, var2765=java.lang.Object, var570=r4, var1984=r0, var2377=com.alibaba.fastjson2.util.TypeUtils, var1543=r1, var202=com.alibaba.fastjson2.schema.JSONSchema, var799=com.alibaba.fastjson2.reader.FieldReader, var833=$r3, var1590=java.lang.Exception, var3=$r7, var2303=com.alibaba.fastjson2.JSONException, var2706=$r8, var1152=$r9, var333=$r11, var3078=$r10, var1254=$r12, var1406=$r13, var2169=$r14, var1177=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8Field=var1401, r2=var2216, java.lang.Object=var2765, r4=var570, r0=var1984, com.alibaba.fastjson2.util.TypeUtils=var2377, r1=var1543, com.alibaba.fastjson2.schema.JSONSchema=var202, com.alibaba.fastjson2.reader.FieldReader=var799, $r3=var833, java.lang.Exception=var1590, $r7=var3, com.alibaba.fastjson2.JSONException=var2303, $r8=var2706, $r9=var1152, $r11=var333, $r10=var3078, $r12=var1254, $r13=var1406, $r14=var2169, java.lang.Throwable=var1177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Field;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Byte toByte(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2