(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2120 0)
(declare-sort var989 0)
(declare-sort var3825 0)
(declare-sort var479 0)
(declare-sort var2459 0)
(declare-sort var1387 0)
(declare-sort var3832 0)
(declare-sort var2376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt64Value/-1923595893 (var989) Int)
(declare-fun schema/-488737871 (var2459) var479)
(declare-fun cast-from-var2120-to-var2459 (var2120) var2459)
(declare-fun var3832-init () var3832)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2459) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var989 String) String)
(declare-fun <init>/-743866570 (var3832 String var2376) void)
(declare-fun cast-from-var1387-to-var2376 (var1387) var2376)
(declare-const null-var2120 var2120)
(declare-const null-var989 var989)
(declare-const null-var3825 var3825)
(declare-const null-var479 var479)
(declare-const null-var1387 var1387)
(declare-const var446 var2120) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod 
(assert (not (= var446 null-var2120)))
(declare-const var3374 var989) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3374 null-var989)))
(declare-const var1225 var3825) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1225 null-var3825)))
(assert true)
(define-const var652 Int (readInt64Value/-1923595893 var3374)) ; Statement: l0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readInt64Value()>() 
(define-const var3685 var479 (schema/-488737871 (cast-from-var2120-to-var2459 var446))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3685 null-var479))) ; Negate: Cond: $r2 == null  
(declare-const var950 var1387) ; Statement: $r8 := @caughtexception 
(assert (not (= var950 null-var1387)))
(define-const var2286 var3832 var3832-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var878 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var2804 String (append/672562846 var878!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "set ")))
(define-const var2373 String (fieldName/-488737871 (cast-from-var2120-to-var2459 var446))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var3181 String (append/672562846 var2804 var2373)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2804!1 String)
(assert (= var2804!1 (str.++ var2804 var2373)))
(assert true)
(define-const var2176 String (append/672562846 var3181 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3181!1 String)
(assert (= var3181!1 (str.++ var3181 " error")))
(assert true)
(define-const var3800 String (toString/-2075883882 var2176)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1152 String (info/-1659839707 var3374 var3800)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2286 var1152 (cast-from-var1387-to-var2376 var950))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2286!1 var3832)
(declare-const var1152!1 String)
(declare-const var950!1 var1387)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt64Value/-1923595893=([com.alibaba.fastjson2.JSONReader], long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2120-to-var2459=([com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3832-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1387-to-var2376=([java.lang.Exception], java.lang.Throwable)}
; {var2120=com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod, var446=r1, var989=com.alibaba.fastjson2.JSONReader, var3374=r0, var3825=java.lang.Object, var1225=r3, var652=l0, var479=com.alibaba.fastjson2.schema.JSONSchema, var2459=com.alibaba.fastjson2.reader.FieldReader, var3685=$r2, var1387=java.lang.Exception, var950=$r8, var3832=com.alibaba.fastjson2.JSONException, var2286=$r9, var878=$r10, var2804=$r12, var2373=$r11, var3181=$r13, var2176=$r14, var3800=$r15, var1152=$r16, var2376=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod=var2120, r1=var446, com.alibaba.fastjson2.JSONReader=var989, r0=var3374, java.lang.Object=var3825, r3=var1225, l0=var652, com.alibaba.fastjson2.schema.JSONSchema=var479, com.alibaba.fastjson2.reader.FieldReader=var2459, $r2=var3685, java.lang.Exception=var1387, $r8=var950, com.alibaba.fastjson2.JSONException=var3832, $r9=var2286, $r10=var878, $r12=var2804, $r11=var2373, $r13=var3181, $r14=var2176, $r15=var3800, $r16=var1152, java.lang.Throwable=var2376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	l0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readInt64Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2