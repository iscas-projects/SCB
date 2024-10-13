(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort var3600 0)
(declare-sort var3917 0)
(declare-sort var3972 0)
(declare-sort var3176 0)
(declare-sort var75 0)
(declare-sort var2528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3176-init () var3176)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var75) String)
(declare-fun cast-from-var2352-to-var75 (var2352) var75)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3600 String) String)
(declare-fun <init>/-743866570 (var3176 String var2528) void)
(declare-fun cast-from-var3972-to-var2528 (var3972) var2528)
(declare-const null-var2352 var2352)
(declare-const null-var3600 var3600)
(declare-const null-var3917 var3917)
(declare-const null-var3972 var3972)
(declare-const var849 var2352) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly 
(assert (not (= var849 null-var2352)))
(declare-const var674 var3600) ; Statement: r6 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var674 null-var3600)))
(declare-const var3286 var3917) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3286 null-var3917)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3981 var3972) ; Statement: $r11 := @caughtexception 
(assert (not (= var3981 null-var3972)))
(define-const var1676 var3176 var3176-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var3997 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3997)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3997!1 String)
(assert (= var3997!1 ""))
(assert true)
(define-const var2793 String (append/672562846 var3997!1 "set ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3997!2 String)
(assert (= var3997!2 (str.++ var3997!1 "set ")))
(define-const var1356 String (fieldName/-488737871 (cast-from-var2352-to-var75 var849))) ; Statement: $r14 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var1176 String (append/672562846 var2793 var1356)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2793!1 String)
(assert (= var2793!1 (str.++ var2793 var1356)))
(assert true)
(define-const var2688 String (append/672562846 var1176 " error")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1176!1 String)
(assert (= var1176!1 (str.++ var1176 " error")))
(assert true)
(define-const var3267 String (toString/-2075883882 var2688)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var457 String (info/-1659839707 var674 var3267)) ; Statement: $r19 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r18) 
(assert true)
;(assert (<init>/-743866570 var1676 var457 (cast-from-var3972-to-var2528 var3981))) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r11) 

(declare-const var1676!1 var3176)
(declare-const var457!1 String)
(declare-const var3981!1 var3972)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3176-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2352-to-var75=([com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3972-to-var2528=([java.lang.Exception], java.lang.Throwable)}
; {var2352=com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly, var849=r0, var3600=com.alibaba.fastjson2.JSONReader, var674=r6, var3917=java.lang.Object, var3286=r1, var3972=java.lang.Exception, var3981=$r11, var3176=com.alibaba.fastjson2.JSONException, var1676=$r12, var3997=$r13, var2793=$r15, var75=com.alibaba.fastjson2.reader.FieldReader, var1356=$r14, var1176=$r16, var2688=$r17, var3267=$r18, var457=$r19, var2528=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly=var2352, r0=var849, com.alibaba.fastjson2.JSONReader=var3600, r6=var674, java.lang.Object=var3917, r1=var3286, java.lang.Exception=var3972, $r11=var3981, com.alibaba.fastjson2.JSONException=var3176, $r12=var1676, $r13=var3997, $r15=var2793, com.alibaba.fastjson2.reader.FieldReader=var75, $r14=var1356, $r16=var1176, $r17=var2688, $r18=var3267, $r19=var457, java.lang.Throwable=var2528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly;	r6 := @parameter0: com.alibaba.fastjson2.JSONReader;	r1 := @parameter1: java.lang.Object;	$r11 := @caughtexception;	$r12 = new com.alibaba.fastjson2.JSONException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r14 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r18);	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r11);	throw $r12
;block_num 2