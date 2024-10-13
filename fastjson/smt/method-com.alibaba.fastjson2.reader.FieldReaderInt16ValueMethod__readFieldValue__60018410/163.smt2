(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1663 0)
(declare-sort var1561 0)
(declare-sort var3489 0)
(declare-sort var1972 0)
(declare-sort var3908 0)
(declare-sort var3946 0)
(declare-sort var231 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var1561) Int)
(declare-fun schema/-488737871 (var3908) var1972)
(declare-fun cast-from-var1663-to-var3908 (var1663) var3908)
(declare-fun var231-init () var231)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3908) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1561 String) String)
(declare-fun <init>/-743866570 (var231 String var1671) void)
(declare-fun cast-from-var3946-to-var1671 (var3946) var1671)
(declare-const null-var1663 var1663)
(declare-const null-var1561 var1561)
(declare-const null-var3489 var3489)
(declare-const null-var1972 var1972)
(declare-const null-var3946 var3946)
(declare-const var1631 var1663) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod 
(assert (not (= var1631 null-var1663)))
(declare-const var2961 var1561) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2961 null-var1561)))
(declare-const var1812 var3489) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1812 null-var3489)))
(assert true)
(define-const var3400 Int (readInt32Value/1995748807 var2961)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var660 var1972 (schema/-488737871 (cast-from-var1663-to-var3908 var1631))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var660 null-var1972))) ; Negate: Cond: $r2 == null  
(declare-const var1114 var3946) ; Statement: $r8 := @caughtexception 
(assert (not (= var1114 null-var3946)))
(define-const var2838 var231 var231-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var457 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var457)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var457!1 String)
(assert (= var457!1 ""))
(assert true)
(define-const var3231 String (append/672562846 var457!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var457!2 String)
(assert (= var457!2 (str.++ var457!1 "set ")))
(define-const var1579 String (fieldName/-488737871 (cast-from-var1663-to-var3908 var1631))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2122 String (append/672562846 var3231 var1579)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3231!1 String)
(assert (= var3231!1 (str.++ var3231 var1579)))
(assert true)
(define-const var829 String (append/672562846 var2122 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2122!1 String)
(assert (= var2122!1 (str.++ var2122 " error")))
(assert true)
(define-const var1476 String (toString/-2075883882 var829)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1273 String (info/-1659839707 var2961 var1476)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2838 var1273 (cast-from-var3946-to-var1671 var1114))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2838!1 var231)
(declare-const var1273!1 String)
(declare-const var1114!1 var3946)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1663-to-var3908=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var231-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3946-to-var1671=([java.lang.Exception], java.lang.Throwable)}
; {var1663=com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod, var1631=r1, var1561=com.alibaba.fastjson2.JSONReader, var2961=r0, var3489=java.lang.Object, var1812=r3, var3400=i0, var1972=com.alibaba.fastjson2.schema.JSONSchema, var3908=com.alibaba.fastjson2.reader.FieldReader, var660=$r2, var3946=java.lang.Exception, var1114=$r8, var231=com.alibaba.fastjson2.JSONException, var2838=$r9, var457=$r10, var3231=$r12, var1579=$r11, var2122=$r13, var829=$r14, var1476=$r15, var1273=$r16, var1671=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod=var1663, r1=var1631, com.alibaba.fastjson2.JSONReader=var1561, r0=var2961, java.lang.Object=var3489, r3=var1812, i0=var3400, com.alibaba.fastjson2.schema.JSONSchema=var1972, com.alibaba.fastjson2.reader.FieldReader=var3908, $r2=var660, java.lang.Exception=var3946, $r8=var1114, com.alibaba.fastjson2.JSONException=var231, $r9=var2838, $r10=var457, $r12=var3231, $r11=var1579, $r13=var2122, $r14=var829, $r15=var1476, $r16=var1273, java.lang.Throwable=var1671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2