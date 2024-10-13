(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var3981 0)
(declare-sort var902 0)
(declare-sort var3411 0)
(declare-sort var1471 0)
(declare-sort var1703 0)
(declare-sort var3430 0)
(declare-sort var3471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var3981) Int)
(declare-fun schema/-488737871 (var1471) var3411)
(declare-fun cast-from-var3000-to-var1471 (var3000) var1471)
(declare-fun var3430-init () var3430)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1471) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3981 String) String)
(declare-fun <init>/-743866570 (var3430 String var3471) void)
(declare-fun cast-from-var1703-to-var3471 (var1703) var3471)
(declare-const null-var3000 var3000)
(declare-const null-var3981 var3981)
(declare-const null-var902 var902)
(declare-const null-var3411 var3411)
(declare-const null-var1703 var1703)
(declare-const var2470 var3000) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod 
(assert (not (= var2470 null-var3000)))
(declare-const var269 var3981) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var269 null-var3981)))
(declare-const var2879 var902) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2879 null-var902)))
(assert true)
(define-const var1553 Int (readInt32Value/1995748807 var269)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var3726 var3411 (schema/-488737871 (cast-from-var3000-to-var1471 var2470))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3726 null-var3411))) ; Negate: Cond: $r2 == null  
(declare-const var696 var1703) ; Statement: $r8 := @caughtexception 
(assert (not (= var696 null-var1703)))
(define-const var3060 var3430 var3430-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1779 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1779)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1779!1 String)
(assert (= var1779!1 ""))
(assert true)
(define-const var2585 String (append/672562846 var1779!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1779!2 String)
(assert (= var1779!2 (str.++ var1779!1 "set ")))
(define-const var2801 String (fieldName/-488737871 (cast-from-var3000-to-var1471 var2470))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var1177 String (append/672562846 var2585 var2801)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2585!1 String)
(assert (= var2585!1 (str.++ var2585 var2801)))
(assert true)
(define-const var67 String (append/672562846 var1177 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1177!1 String)
(assert (= var1177!1 (str.++ var1177 " error")))
(assert true)
(define-const var1042 String (toString/-2075883882 var67)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3495 String (info/-1659839707 var269 var1042)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var3060 var3495 (cast-from-var1703-to-var3471 var696))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var3060!1 var3430)
(declare-const var3495!1 String)
(declare-const var696!1 var1703)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3000-to-var1471=([com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3430-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1703-to-var3471=([java.lang.Exception], java.lang.Throwable)}
; {var3000=com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod, var2470=r1, var3981=com.alibaba.fastjson2.JSONReader, var269=r0, var902=java.lang.Object, var2879=r3, var1553=i0, var3411=com.alibaba.fastjson2.schema.JSONSchema, var1471=com.alibaba.fastjson2.reader.FieldReader, var3726=$r2, var1703=java.lang.Exception, var696=$r8, var3430=com.alibaba.fastjson2.JSONException, var3060=$r9, var1779=$r10, var2585=$r12, var2801=$r11, var1177=$r13, var67=$r14, var1042=$r15, var3495=$r16, var3471=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod=var3000, r1=var2470, com.alibaba.fastjson2.JSONReader=var3981, r0=var269, java.lang.Object=var902, r3=var2879, i0=var1553, com.alibaba.fastjson2.schema.JSONSchema=var3411, com.alibaba.fastjson2.reader.FieldReader=var1471, $r2=var3726, java.lang.Exception=var1703, $r8=var696, com.alibaba.fastjson2.JSONException=var3430, $r9=var3060, $r10=var1779, $r12=var2585, $r11=var2801, $r13=var1177, $r14=var67, $r15=var1042, $r16=var3495, java.lang.Throwable=var3471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2