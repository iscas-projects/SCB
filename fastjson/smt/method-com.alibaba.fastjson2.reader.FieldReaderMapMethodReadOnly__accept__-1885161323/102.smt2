(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var317 0)
(declare-sort var298 0)
(declare-sort var2045 0)
(declare-sort var3265 0)
(declare-sort var3770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2045-init () var2045)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3265) String)
(declare-fun cast-from-var1764-to-var3265 (var1764) var3265)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2045 String var3770) void)
(declare-fun cast-from-var298-to-var3770 (var298) var3770)
(declare-const null-var1764 var1764)
(declare-const null-var317 var317)
(declare-const null-var298 var298)
(declare-const var908 var1764) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly 
(assert (not (= var908 null-var1764)))
(declare-const var2231 var317) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2231 null-var317)))
(declare-const var3971 var317) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3971 null-var317)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var3971 null-var317)))) ; Negate: Cond: r0 != null  
(declare-const var3552 var298) ; Statement: $r13 := @caughtexception 
(assert (not (= var3552 null-var298)))
(define-const var690 var2045 var2045-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var3546 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3546)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3546!1 String)
(assert (= var3546!1 ""))
(assert true)
(define-const var1970 String (append/672562846 var3546!1 "set ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3546!2 String)
(assert (= var3546!2 (str.++ var3546!1 "set ")))
(define-const var523 String (fieldName/-488737871 (cast-from-var1764-to-var3265 var908))) ; Statement: $r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var1152 String (append/672562846 var1970 var523)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1970!1 String)
(assert (= var1970!1 (str.++ var1970 var523)))
(assert true)
(define-const var844 String (append/672562846 var1152 " error")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1152!1 String)
(assert (= var1152!1 (str.++ var1152 " error")))
(assert true)
(define-const var2542 String (toString/-2075883882 var844)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var690 var2542 (cast-from-var298-to-var3770 var3552))) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13) 

(declare-const var690!1 var2045)
(declare-const var2542!1 String)
(declare-const var3552!1 var298)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2045-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1764-to-var3265=([com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var298-to-var3770=([java.lang.Exception], java.lang.Throwable)}
; {var1764=com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly, var908=r1, var317=java.lang.Object, var2231=r2, var3971=r0, var298=java.lang.Exception, var3552=$r13, var2045=com.alibaba.fastjson2.JSONException, var690=$r14, var3546=$r15, var1970=$r17, var3265=com.alibaba.fastjson2.reader.FieldReader, var523=$r16, var1152=$r18, var844=$r19, var2542=$r20, var3770=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly=var1764, r1=var908, java.lang.Object=var317, r2=var2231, r0=var3971, java.lang.Exception=var298, $r13=var3552, com.alibaba.fastjson2.JSONException=var2045, $r14=var690, $r15=var3546, $r17=var1970, com.alibaba.fastjson2.reader.FieldReader=var3265, $r16=var523, $r18=var1152, $r19=var844, $r20=var2542, java.lang.Throwable=var3770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.reflect.Method method>;	$r13 := @caughtexception;	$r14 = new com.alibaba.fastjson2.JSONException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13);	throw $r14
;block_num 2