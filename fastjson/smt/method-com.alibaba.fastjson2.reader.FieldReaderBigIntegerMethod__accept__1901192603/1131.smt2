(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3849 0)
(declare-sort var397 0)
(declare-sort var3110 0)
(declare-sort var1649 0)
(declare-sort var2748 0)
(declare-sort var3018 0)
(declare-sort var1306 0)
(declare-sort var2594 0)
(declare-sort var3488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1649_toBigInteger/-799479909 (var397) var3110)
(declare-fun schema/-488737871 (var3018) var2748)
(declare-fun cast-from-var3849-to-var3018 (var3849) var3018)
(declare-fun var2594-init () var2594)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3018) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2594 String var3488) void)
(declare-fun cast-from-var1306-to-var3488 (var1306) var3488)
(declare-const null-var3849 var3849)
(declare-const null-var397 var397)
(declare-const null-var2748 var2748)
(declare-const null-var1306 var1306)
(declare-const var3994 var3849) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod 
(assert (not (= var3994 null-var3849)))
(declare-const var2066 var397) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2066 null-var397)))
(declare-const var1588 var397) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1588 null-var397)))
(define-const var3162 var3110 (var1649_toBigInteger/-799479909 var1588)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0) 
(define-const var3509 var2748 (schema/-488737871 (cast-from-var3849-to-var3018 var3994))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method> 
(assert (not (= var3509 null-var2748))) ; Negate: Cond: $r3 == null  
(declare-const var2369 var1306) ; Statement: $r8 := @caughtexception 
(assert (not (= var2369 null-var1306)))
(define-const var2215 var2594 var2594-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var410 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var410)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var410!1 String)
(assert (= var410!1 ""))
(assert true)
(define-const var2833 String (append/672562846 var410!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var410!2 String)
(assert (= var410!2 (str.++ var410!1 "set ")))
(define-const var1705 String (fieldName/-488737871 (cast-from-var3849-to-var3018 var3994))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName> 
(assert true)
(define-const var824 String (append/672562846 var2833 var1705)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2833!1 String)
(assert (= var2833!1 (str.++ var2833 var1705)))
(assert true)
(define-const var1175 String (append/672562846 var824 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var824!1 String)
(assert (= var824!1 (str.++ var824 " error")))
(assert true)
(define-const var1742 String (toString/-2075883882 var1175)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2215 var1742 (cast-from-var1306-to-var3488 var2369))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2215!1 var2594)
(declare-const var1742!1 String)
(declare-const var2369!1 var1306)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1649_toBigInteger/-799479909=([java.lang.Object], java.math.BigInteger), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3849-to-var3018=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod], com.alibaba.fastjson2.reader.FieldReader), var2594-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1306-to-var3488=([java.lang.Exception], java.lang.Throwable)}
; {var3849=com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod, var3994=r2, var397=java.lang.Object, var2066=r4, var1588=r0, var3110=java.math.BigInteger, var1649=com.alibaba.fastjson2.util.TypeUtils, var3162=r1, var2748=com.alibaba.fastjson2.schema.JSONSchema, var3018=com.alibaba.fastjson2.reader.FieldReader, var3509=$r3, var1306=java.lang.Exception, var2369=$r8, var2594=com.alibaba.fastjson2.JSONException, var2215=$r9, var410=$r10, var2833=$r12, var1705=$r11, var824=$r13, var1175=$r14, var1742=$r15, var3488=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod=var3849, r2=var3994, java.lang.Object=var397, r4=var2066, r0=var1588, java.math.BigInteger=var3110, com.alibaba.fastjson2.util.TypeUtils=var1649, r1=var3162, com.alibaba.fastjson2.schema.JSONSchema=var2748, com.alibaba.fastjson2.reader.FieldReader=var3018, $r3=var3509, java.lang.Exception=var1306, $r8=var2369, com.alibaba.fastjson2.JSONException=var2594, $r9=var2215, $r10=var410, $r12=var2833, $r11=var1705, $r13=var824, $r14=var1175, $r15=var1742, java.lang.Throwable=var3488}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2