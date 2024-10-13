(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var544 0)
(declare-sort var2384 0)
(declare-sort var3694 0)
(declare-sort var1724 0)
(declare-sort var1561 0)
(declare-sort var1565 0)
(declare-sort var1730 0)
(declare-sort var2585 0)
(declare-sort var1015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1724_toBigDecimal/-1065777989 (var2384) var3694)
(declare-fun schema/-488737871 (var1565) var1561)
(declare-fun cast-from-var544-to-var1565 (var544) var1565)
(declare-fun var2585-init () var2585)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1565) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2585 String var1015) void)
(declare-fun cast-from-var1730-to-var1015 (var1730) var1015)
(declare-const null-var544 var544)
(declare-const null-var2384 var2384)
(declare-const null-var1561 var1561)
(declare-const null-var1730 var1730)
(declare-const var3247 var544) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod 
(assert (not (= var3247 null-var544)))
(declare-const var3635 var2384) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3635 null-var2384)))
(declare-const var3661 var2384) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3661 null-var2384)))
(define-const var2058 var3694 (var1724_toBigDecimal/-1065777989 var3661)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0) 
(define-const var1806 var1561 (schema/-488737871 (cast-from-var544-to-var1565 var3247))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method> 
(assert (not (= var1806 null-var1561))) ; Negate: Cond: $r3 == null  
(declare-const var611 var1730) ; Statement: $r8 := @caughtexception 
(assert (not (= var611 null-var1730)))
(define-const var111 var2585 var2585-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1011 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var784 String (append/672562846 var1011!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 "set ")))
(define-const var1378 String (fieldName/-488737871 (cast-from-var544-to-var1565 var3247))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName> 
(assert true)
(define-const var3653 String (append/672562846 var784 var1378)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var784!1 String)
(assert (= var784!1 (str.++ var784 var1378)))
(assert true)
(define-const var414 String (append/672562846 var3653 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3653!1 String)
(assert (= var3653!1 (str.++ var3653 " error")))
(assert true)
(define-const var1889 String (toString/-2075883882 var414)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var111 var1889 (cast-from-var1730-to-var1015 var611))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var111!1 var2585)
(declare-const var1889!1 String)
(declare-const var611!1 var1730)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1724_toBigDecimal/-1065777989=([java.lang.Object], java.math.BigDecimal), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var544-to-var1565=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod], com.alibaba.fastjson2.reader.FieldReader), var2585-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1730-to-var1015=([java.lang.Exception], java.lang.Throwable)}
; {var544=com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod, var3247=r2, var2384=java.lang.Object, var3635=r4, var3661=r0, var3694=java.math.BigDecimal, var1724=com.alibaba.fastjson2.util.TypeUtils, var2058=r1, var1561=com.alibaba.fastjson2.schema.JSONSchema, var1565=com.alibaba.fastjson2.reader.FieldReader, var1806=$r3, var1730=java.lang.Exception, var611=$r8, var2585=com.alibaba.fastjson2.JSONException, var111=$r9, var1011=$r10, var784=$r12, var1378=$r11, var3653=$r13, var414=$r14, var1889=$r15, var1015=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod=var544, r2=var3247, java.lang.Object=var2384, r4=var3635, r0=var3661, java.math.BigDecimal=var3694, com.alibaba.fastjson2.util.TypeUtils=var1724, r1=var2058, com.alibaba.fastjson2.schema.JSONSchema=var1561, com.alibaba.fastjson2.reader.FieldReader=var1565, $r3=var1806, java.lang.Exception=var1730, $r8=var611, com.alibaba.fastjson2.JSONException=var2585, $r9=var111, $r10=var1011, $r12=var784, $r11=var1378, $r13=var3653, $r14=var414, $r15=var1889, java.lang.Throwable=var1015}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2