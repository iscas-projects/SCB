(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort var254 0)
(declare-sort var272 0)
(declare-sort var3184 0)
(declare-sort var2750 0)
(declare-sort var3913 0)
(declare-sort var3120 0)
(declare-sort var3432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readDouble/856931335 (var254) Float64)
(declare-fun schema/-488737871 (var2750) var3184)
(declare-fun cast-from-var2233-to-var2750 (var2233) var2750)
(declare-fun var3120-init () var3120)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2750) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var254 String) String)
(declare-fun <init>/-743866570 (var3120 String var3432) void)
(declare-fun cast-from-var3913-to-var3432 (var3913) var3432)
(declare-const null-var2233 var2233)
(declare-const null-var254 var254)
(declare-const null-var272 var272)
(declare-const null-var3184 var3184)
(declare-const null-Float64 Float64)
(declare-const null-var3913 var3913)
(declare-const var3852 var2233) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleMethod 
(assert (not (= var3852 null-var2233)))
(declare-const var1631 var254) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1631 null-var254)))
(declare-const var1081 var272) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1081 null-var272)))
(assert true)
(define-const var2635 Float64 (readDouble/856931335 var1631)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Double readDouble()>() 
(define-const var444 var3184 (schema/-488737871 (cast-from-var2233-to-var2750 var3852))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var444 null-var3184)) ; Cond: $r3 == null 
 ; Statement: if r1 != null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.reflect.Method method> 
(assert (not (not (= var2635 null-Float64)))) ; Negate: Cond: r1 != null  
(declare-const var952 var3913) ; Statement: $r9 := @caughtexception 
(assert (not (= var952 null-var3913)))
(define-const var1236 var3120 var3120-init) ; Statement: $r10 = new com.alibaba.fastjson2.JSONException 
(define-const var3571 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3571)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3571!1 String)
(assert (= var3571!1 ""))
(assert true)
(define-const var3632 String (append/672562846 var3571!1 "set ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3571!2 String)
(assert (= var3571!2 (str.++ var3571!1 "set ")))
(define-const var2273 String (fieldName/-488737871 (cast-from-var2233-to-var2750 var3852))) ; Statement: $r12 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.String fieldName> 
(assert true)
(define-const var1768 String (append/672562846 var3632 var2273)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3632!1 String)
(assert (= var3632!1 (str.++ var3632 var2273)))
(assert true)
(define-const var2713 String (append/672562846 var1768 " error")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 " error")))
(assert true)
(define-const var2928 String (toString/-2075883882 var2713)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2109 String (info/-1659839707 var1631 var2928)) ; Statement: $r17 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r16) 
(assert true)
;(assert (<init>/-743866570 var1236 var2109 (cast-from-var3913-to-var3432 var952))) ; Statement: specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r9) 

(declare-const var1236!1 var3120)
(declare-const var2109!1 String)
(declare-const var952!1 var3913)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {readDouble/856931335=([com.alibaba.fastjson2.JSONReader], java.lang.Double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2233-to-var2750=([com.alibaba.fastjson2.reader.FieldReaderDoubleMethod], com.alibaba.fastjson2.reader.FieldReader), var3120-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3913-to-var3432=([java.lang.Exception], java.lang.Throwable)}
; {var2233=com.alibaba.fastjson2.reader.FieldReaderDoubleMethod, var3852=r2, var254=com.alibaba.fastjson2.JSONReader, var1631=r0, var272=java.lang.Object, var1081=r4, var2635=r1, var3184=com.alibaba.fastjson2.schema.JSONSchema, var2750=com.alibaba.fastjson2.reader.FieldReader, var444=$r3, var3913=java.lang.Exception, var952=$r9, var3120=com.alibaba.fastjson2.JSONException, var1236=$r10, var3571=$r11, var3632=$r13, var2273=$r12, var1768=$r14, var2713=$r15, var2928=$r16, var2109=$r17, var3432=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleMethod=var2233, r2=var3852, com.alibaba.fastjson2.JSONReader=var254, r0=var1631, java.lang.Object=var272, r4=var1081, r1=var2635, com.alibaba.fastjson2.schema.JSONSchema=var3184, com.alibaba.fastjson2.reader.FieldReader=var2750, $r3=var444, java.lang.Exception=var3913, $r9=var952, com.alibaba.fastjson2.JSONException=var3120, $r10=var1236, $r11=var3571, $r13=var3632, $r12=var2273, $r14=var1768, $r15=var2713, $r16=var2928, $r17=var2109, java.lang.Throwable=var3432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Double readDouble()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto (branch);	if r1 != null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.reflect.Method method>;	$r9 := @caughtexception;	$r10 = new com.alibaba.fastjson2.JSONException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r12 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleMethod: java.lang.String fieldName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r16);	specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r9);	throw $r10
;block_num 3