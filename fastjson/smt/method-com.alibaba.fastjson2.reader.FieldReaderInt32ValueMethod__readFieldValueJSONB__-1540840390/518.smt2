(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort var388 0)
(declare-sort var51 0)
(declare-sort var161 0)
(declare-sort var581 0)
(declare-sort var920 0)
(declare-sort var2225 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var388) Int)
(declare-fun schema/-488737871 (var581) var161)
(declare-fun cast-from-var1332-to-var581 (var1332) var581)
(declare-fun var2225-init () var2225)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var581) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var388 String) String)
(declare-fun <init>/-743866570 (var2225 String var3767) void)
(declare-fun cast-from-var920-to-var3767 (var920) var3767)
(declare-const null-var1332 var1332)
(declare-const null-var388 var388)
(declare-const null-var51 var51)
(declare-const null-var161 var161)
(declare-const null-var920 var920)
(declare-const var585 var1332) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod 
(assert (not (= var585 null-var1332)))
(declare-const var2338 var388) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2338 null-var388)))
(declare-const var3997 var51) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3997 null-var51)))
(assert true)
(define-const var1283 Int (readInt32Value/1995748807 var2338)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var1777 var161 (schema/-488737871 (cast-from-var1332-to-var581 var585))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var1777 null-var161))) ; Negate: Cond: $r2 == null  
(declare-const var3567 var920) ; Statement: $r8 := @caughtexception 
(assert (not (= var3567 null-var920)))
(define-const var3252 var2225 var2225-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2203 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2203)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2203!1 String)
(assert (= var2203!1 ""))
(assert true)
(define-const var156 String (append/672562846 var2203!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2203!2 String)
(assert (= var2203!2 (str.++ var2203!1 "set ")))
(define-const var2427 String (fieldName/-488737871 (cast-from-var1332-to-var581 var585))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var447 String (append/672562846 var156 var2427)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var156!1 String)
(assert (= var156!1 (str.++ var156 var2427)))
(assert true)
(define-const var1351 String (append/672562846 var447 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 " error")))
(assert true)
(define-const var2371 String (toString/-2075883882 var1351)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var240 String (info/-1659839707 var2338 var2371)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var3252 var240 (cast-from-var920-to-var3767 var3567))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var3252!1 var2225)
(declare-const var240!1 String)
(declare-const var3567!1 var920)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1332-to-var581=([com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2225-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var920-to-var3767=([java.lang.Exception], java.lang.Throwable)}
; {var1332=com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod, var585=r1, var388=com.alibaba.fastjson2.JSONReader, var2338=r0, var51=java.lang.Object, var3997=r3, var1283=i0, var161=com.alibaba.fastjson2.schema.JSONSchema, var581=com.alibaba.fastjson2.reader.FieldReader, var1777=$r2, var920=java.lang.Exception, var3567=$r8, var2225=com.alibaba.fastjson2.JSONException, var3252=$r9, var2203=$r10, var156=$r12, var2427=$r11, var447=$r13, var1351=$r14, var2371=$r15, var240=$r16, var3767=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod=var1332, r1=var585, com.alibaba.fastjson2.JSONReader=var388, r0=var2338, java.lang.Object=var51, r3=var3997, i0=var1283, com.alibaba.fastjson2.schema.JSONSchema=var161, com.alibaba.fastjson2.reader.FieldReader=var581, $r2=var1777, java.lang.Exception=var920, $r8=var3567, com.alibaba.fastjson2.JSONException=var2225, $r9=var3252, $r10=var2203, $r12=var156, $r11=var2427, $r13=var447, $r14=var1351, $r15=var2371, $r16=var240, java.lang.Throwable=var3767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2