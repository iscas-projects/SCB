(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3480 0)
(declare-sort var3850 0)
(declare-sort var2081 0)
(declare-sort var221 0)
(declare-sort var3635 0)
(declare-sort var1639 0)
(declare-sort var2988 0)
(declare-sort var791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt64/-1177916662 (var3850) Int)
(declare-fun schema/-488737871 (var3635) var221)
(declare-fun cast-from-var3480-to-var3635 (var3480) var3635)
(declare-fun var2988-init () var2988)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3635) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3850 String) String)
(declare-fun <init>/-743866570 (var2988 String var791) void)
(declare-fun cast-from-var1639-to-var791 (var1639) var791)
(declare-const null-var3480 var3480)
(declare-const null-var3850 var3850)
(declare-const null-var2081 var2081)
(declare-const null-var221 var221)
(declare-const null-var1639 var1639)
(declare-const var2427 var3480) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Field 
(assert (not (= var2427 null-var3480)))
(declare-const var1682 var3850) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1682 null-var3850)))
(declare-const var833 var2081) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var833 null-var2081)))
(assert true)
(define-const var3321 Int (readInt64/-1177916662 var1682)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>() 
(define-const var1198 var221 (schema/-488737871 (cast-from-var3480-to-var3635 var2427))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.reflect.Field field> 
(assert (not (= var1198 null-var221))) ; Negate: Cond: $r3 == null  
(declare-const var2823 var1639) ; Statement: $r7 := @caughtexception 
(assert (not (= var2823 null-var1639)))
(define-const var3326 var2988 var2988-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var861 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var861)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var861!1 String)
(assert (= var861!1 ""))
(assert true)
(define-const var926 String (append/672562846 var861!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var861!2 String)
(assert (= var861!2 (str.++ var861!1 "set ")))
(define-const var2069 String (fieldName/-488737871 (cast-from-var3480-to-var3635 var2427))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.String fieldName> 
(assert true)
(define-const var1796 String (append/672562846 var926 var2069)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var926!1 String)
(assert (= var926!1 (str.++ var926 var2069)))
(assert true)
(define-const var1909 String (append/672562846 var1796 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 " error")))
(assert true)
(define-const var391 String (toString/-2075883882 var1909)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2071 String (info/-1659839707 var1682 var391)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var3326 var2071 (cast-from-var1639-to-var791 var2823))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var3326!1 var2988)
(declare-const var2071!1 String)
(declare-const var2823!1 var1639)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt64/-1177916662=([com.alibaba.fastjson2.JSONReader], java.lang.Long), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3480-to-var3635=([com.alibaba.fastjson2.reader.FieldReaderInt64Field], com.alibaba.fastjson2.reader.FieldReader), var2988-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1639-to-var791=([java.lang.Exception], java.lang.Throwable)}
; {var3480=com.alibaba.fastjson2.reader.FieldReaderInt64Field, var2427=r2, var3850=com.alibaba.fastjson2.JSONReader, var1682=r0, var2081=java.lang.Object, var833=r4, var3321=r1, var221=com.alibaba.fastjson2.schema.JSONSchema, var3635=com.alibaba.fastjson2.reader.FieldReader, var1198=$r3, var1639=java.lang.Exception, var2823=$r7, var2988=com.alibaba.fastjson2.JSONException, var3326=$r8, var861=$r9, var926=$r11, var2069=$r10, var1796=$r12, var1909=$r13, var391=$r14, var2071=$r15, var791=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64Field=var3480, r2=var2427, com.alibaba.fastjson2.JSONReader=var3850, r0=var1682, java.lang.Object=var2081, r4=var833, r1=var3321, com.alibaba.fastjson2.schema.JSONSchema=var221, com.alibaba.fastjson2.reader.FieldReader=var3635, $r3=var1198, java.lang.Exception=var1639, $r7=var2823, com.alibaba.fastjson2.JSONException=var2988, $r8=var3326, $r9=var861, $r11=var926, $r10=var2069, $r12=var1796, $r13=var1909, $r14=var391, $r15=var2071, java.lang.Throwable=var791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64Field;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Long readInt64()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt64Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2