(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1584 0)
(declare-sort var50 0)
(declare-sort var1456 0)
(declare-sort var1201 0)
(declare-sort var1250 0)
(declare-sort var3371 0)
(declare-sort var2739 0)
(declare-sort var1644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var50) Int)
(declare-fun schema/-488737871 (var1250) var1201)
(declare-fun cast-from-var1584-to-var1250 (var1584) var1250)
(declare-fun var2739-init () var2739)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1250) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var50 String) String)
(declare-fun <init>/-743866570 (var2739 String var1644) void)
(declare-fun cast-from-var3371-to-var1644 (var3371) var1644)
(declare-const null-var1584 var1584)
(declare-const null-var50 var50)
(declare-const null-var1456 var1456)
(declare-const null-var1201 var1201)
(declare-const null-var3371 var3371)
(declare-const var2412 var1584) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Method 
(assert (not (= var2412 null-var1584)))
(declare-const var2901 var50) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2901 null-var50)))
(declare-const var2080 var1456) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2080 null-var1456)))
(assert true)
(define-const var3102 Int (readInt32/1162195591 var2901)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var718 var1201 (schema/-488737871 (cast-from-var1584-to-var1250 var2412))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.reflect.Method method> 
(assert (not (= var718 null-var1201))) ; Negate: Cond: $r3 == null  
(declare-const var2035 var3371) ; Statement: $r8 := @caughtexception 
(assert (not (= var2035 null-var3371)))
(define-const var1626 var2739 var2739-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var423 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var423)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var423!1 String)
(assert (= var423!1 ""))
(assert true)
(define-const var198 String (append/672562846 var423!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var423!2 String)
(assert (= var423!2 (str.++ var423!1 "set ")))
(define-const var532 String (fieldName/-488737871 (cast-from-var1584-to-var1250 var2412))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.String fieldName> 
(assert true)
(define-const var2200 String (append/672562846 var198 var532)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var198!1 String)
(assert (= var198!1 (str.++ var198 var532)))
(assert true)
(define-const var525 String (append/672562846 var2200 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2200!1 String)
(assert (= var2200!1 (str.++ var2200 " error")))
(assert true)
(define-const var1529 String (toString/-2075883882 var525)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1983 String (info/-1659839707 var2901 var1529)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var1626 var1983 (cast-from-var3371-to-var1644 var2035))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var1626!1 var2739)
(declare-const var1983!1 String)
(declare-const var2035!1 var3371)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1584-to-var1250=([com.alibaba.fastjson2.reader.FieldReaderInt16Method], com.alibaba.fastjson2.reader.FieldReader), var2739-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3371-to-var1644=([java.lang.Exception], java.lang.Throwable)}
; {var1584=com.alibaba.fastjson2.reader.FieldReaderInt16Method, var2412=r2, var50=com.alibaba.fastjson2.JSONReader, var2901=r0, var1456=java.lang.Object, var2080=r4, var3102=r1, var1201=com.alibaba.fastjson2.schema.JSONSchema, var1250=com.alibaba.fastjson2.reader.FieldReader, var718=$r3, var3371=java.lang.Exception, var2035=$r8, var2739=com.alibaba.fastjson2.JSONException, var1626=$r9, var423=$r10, var198=$r12, var532=$r11, var2200=$r13, var525=$r14, var1529=$r15, var1983=$r16, var1644=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16Method=var1584, r2=var2412, com.alibaba.fastjson2.JSONReader=var50, r0=var2901, java.lang.Object=var1456, r4=var2080, r1=var3102, com.alibaba.fastjson2.schema.JSONSchema=var1201, com.alibaba.fastjson2.reader.FieldReader=var1250, $r3=var718, java.lang.Exception=var3371, $r8=var2035, com.alibaba.fastjson2.JSONException=var2739, $r9=var1626, $r10=var423, $r12=var198, $r11=var532, $r13=var2200, $r14=var525, $r15=var1529, $r16=var1983, java.lang.Throwable=var1644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Method;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2