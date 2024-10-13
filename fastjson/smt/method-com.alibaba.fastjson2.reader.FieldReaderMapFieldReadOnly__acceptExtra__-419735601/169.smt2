(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var596 0)
(declare-sort var1704 0)
(declare-sort var3055 0)
(declare-sort var1372 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1372-init () var1372)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1456) String)
(declare-fun cast-from-var334-to-var1456 (var334) var1456)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1372 String) void)
(declare-const null-var334 var334)
(declare-const null-var596 var596)
(declare-const null-String String)
(declare-const null-var3055 var3055)
(declare-const var2220 var334) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly 
(assert (not (= var2220 null-var334)))
(declare-const var2343 var596) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2343 null-var596)))
(declare-const var1980 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1980 null-String)))
(declare-const var659 var596) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var659 null-var596)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3998 var3055) ; Statement: $r7 := @caughtexception 
(assert (not (= var3998 null-var3055)))
(define-const var3531 var1372 var1372-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1929 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(assert true)
(define-const var1900 String (append/672562846 var1929!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 "set ")))
(define-const var1281 String (fieldName/-488737871 (cast-from-var334-to-var1456 var2220))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var868 String (append/672562846 var1900 var1281)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1900!1 String)
(assert (= var1900!1 (str.++ var1900 var1281)))
(assert true)
(define-const var1639 String (append/672562846 var868 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var868!1 String)
(assert (= var868!1 (str.++ var868 " error")))
(assert true)
(define-const var773 String (toString/-2075883882 var1639)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3531 var773)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r14) 

(declare-const var3531!1 var1372)
(declare-const var773!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1372-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var334-to-var1456=([com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var334=com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly, var2220=r0, var596=java.lang.Object, var2343=r1, var1980=r5, var1704=null_type, var659=r6, var3055=java.lang.Exception, var3998=$r7, var1372=com.alibaba.fastjson2.JSONException, var3531=$r8, var1929=$r9, var1900=$r11, var1456=com.alibaba.fastjson2.reader.FieldReader, var1281=$r10, var868=$r12, var1639=$r13, var773=$r14}
; {com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly=var334, r0=var2220, java.lang.Object=var596, r1=var2343, r5=var1980, null_type=var1704, r6=var659, java.lang.Exception=var3055, $r7=var3998, com.alibaba.fastjson2.JSONException=var1372, $r8=var3531, $r9=var1929, $r11=var1900, com.alibaba.fastjson2.reader.FieldReader=var1456, $r10=var1281, $r12=var868, $r13=var1639, $r14=var773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly;	r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.Object;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r14);	throw $r8
;block_num 2