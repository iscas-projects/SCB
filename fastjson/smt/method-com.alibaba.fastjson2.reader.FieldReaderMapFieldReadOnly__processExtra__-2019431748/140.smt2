(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var3175 0)
(declare-sort var3453 0)
(declare-sort var3518 0)
(declare-sort var2142 0)
(declare-sort var3364 0)
(declare-sort var1669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2142-init () var2142)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3364) String)
(declare-fun cast-from-var1064-to-var3364 (var1064) var3364)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3175 String) String)
(declare-fun <init>/-743866570 (var2142 String var1669) void)
(declare-fun cast-from-var3518-to-var1669 (var3518) var1669)
(declare-const null-var1064 var1064)
(declare-const null-var3175 var3175)
(declare-const null-var3453 var3453)
(declare-const null-var3518 var3518)
(declare-const var1060 var1064) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly 
(assert (not (= var1060 null-var1064)))
(declare-const var645 var3175) ; Statement: r5 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var645 null-var3175)))
(declare-const var2234 var3453) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2234 null-var3453)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var285 var3518) ; Statement: $r8 := @caughtexception 
(assert (not (= var285 null-var3518)))
(define-const var2797 var2142 var2142-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3568 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3568)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3568!1 String)
(assert (= var3568!1 ""))
(assert true)
(define-const var683 String (append/672562846 var3568!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3568!2 String)
(assert (= var3568!2 (str.++ var3568!1 "set ")))
(define-const var3402 String (fieldName/-488737871 (cast-from-var1064-to-var3364 var1060))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var3853 String (append/672562846 var683 var3402)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var683!1 String)
(assert (= var683!1 (str.++ var683 var3402)))
(assert true)
(define-const var3381 String (append/672562846 var3853 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3853!1 String)
(assert (= var3853!1 (str.++ var3853 " error")))
(assert true)
(define-const var2978 String (toString/-2075883882 var3381)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1714 String (info/-1659839707 var645 var2978)) ; Statement: $r16 = virtualinvoke r5.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2797 var1714 (cast-from-var3518-to-var1669 var285))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2797!1 var2142)
(declare-const var1714!1 String)
(declare-const var285!1 var3518)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2142-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1064-to-var3364=([com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3518-to-var1669=([java.lang.Exception], java.lang.Throwable)}
; {var1064=com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly, var1060=r0, var3175=com.alibaba.fastjson2.JSONReader, var645=r5, var3453=java.lang.Object, var2234=r1, var3518=java.lang.Exception, var285=$r8, var2142=com.alibaba.fastjson2.JSONException, var2797=$r9, var3568=$r10, var683=$r12, var3364=com.alibaba.fastjson2.reader.FieldReader, var3402=$r11, var3853=$r13, var3381=$r14, var2978=$r15, var1714=$r16, var1669=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly=var1064, r0=var1060, com.alibaba.fastjson2.JSONReader=var3175, r5=var645, java.lang.Object=var3453, r1=var2234, java.lang.Exception=var3518, $r8=var285, com.alibaba.fastjson2.JSONException=var2142, $r9=var2797, $r10=var3568, $r12=var683, com.alibaba.fastjson2.reader.FieldReader=var3364, $r11=var3402, $r13=var3853, $r14=var3381, $r15=var2978, $r16=var1714, java.lang.Throwable=var1669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly;	r5 := @parameter0: com.alibaba.fastjson2.JSONReader;	r1 := @parameter1: java.lang.Object;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r5.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2