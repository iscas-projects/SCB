(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var235 0)
(declare-sort var2173 0)
(declare-sort var3077 0)
(declare-sort var2156 0)
(declare-sort var2809 0)
(declare-sort var3998 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readIfNull/-460644769 (var2173) Bool)
(declare-fun var2809-init () var2809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3998) String)
(declare-fun cast-from-var235-to-var3998 (var235) var3998)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2173 String) String)
(declare-fun <init>/-743866570 (var2809 String var32) void)
(declare-fun cast-from-var2156-to-var32 (var2156) var32)
(declare-const null-var235 var235)
(declare-const null-var2173 var2173)
(declare-const null-var3077 var3077)
(declare-const null-var2156 var2156)
(declare-const var890 var235) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField 
(assert (not (= var890 null-var235)))
(declare-const var524 var2173) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var524 null-var2173)))
(declare-const var2721 var3077) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2721 null-var3077)))
(assert true)
(define-const var756 Bool (readIfNull/-460644769 var524)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField: java.lang.reflect.Field field> 
(assert (not (= (ite var756 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3418 var2156) ; Statement: $r6 := @caughtexception 
(assert (not (= var3418 null-var2156)))
(define-const var1701 var2809 var2809-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3119 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3119)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3119!1 String)
(assert (= var3119!1 ""))
(assert true)
(define-const var1919 String (append/672562846 var3119!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3119!2 String)
(assert (= var3119!2 (str.++ var3119!1 "set ")))
(define-const var1185 String (fieldName/-488737871 (cast-from-var235-to-var3998 var890))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField: java.lang.String fieldName> 
(assert true)
(define-const var3619 String (append/672562846 var1919 var1185)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 var1185)))
(assert true)
(define-const var1547 String (append/672562846 var3619 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3619!1 String)
(assert (= var3619!1 (str.++ var3619 " error")))
(assert true)
(define-const var2207 String (toString/-2075883882 var1547)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3306 String (info/-1659839707 var524 var2207)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var1701 var3306 (cast-from-var2156-to-var32 var3418))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1701!1 var2809)
(declare-const var3306!1 String)
(declare-const var3418!1 var2156)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readIfNull/-460644769=([com.alibaba.fastjson2.JSONReader], boolean), var2809-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var235-to-var3998=([com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2156-to-var32=([java.lang.Exception], java.lang.Throwable)}
; {var235=com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField, var890=r1, var2173=com.alibaba.fastjson2.JSONReader, var524=r0, var3077=java.lang.Object, var2721=r2, var756=$z0, var2156=java.lang.Exception, var3418=$r6, var2809=com.alibaba.fastjson2.JSONException, var1701=$r7, var3119=$r8, var1919=$r10, var3998=com.alibaba.fastjson2.reader.FieldReader, var1185=$r9, var3619=$r11, var1547=$r12, var2207=$r13, var3306=$r14, var32=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField=var235, r1=var890, com.alibaba.fastjson2.JSONReader=var2173, r0=var524, java.lang.Object=var3077, r2=var2721, $z0=var756, java.lang.Exception=var2156, $r6=var3418, com.alibaba.fastjson2.JSONException=var2809, $r7=var1701, $r8=var3119, $r10=var1919, com.alibaba.fastjson2.reader.FieldReader=var3998, $r9=var1185, $r11=var3619, $r12=var1547, $r13=var2207, $r14=var3306, java.lang.Throwable=var32}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>();	if $z0 == 0 goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueArrayFinalField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2