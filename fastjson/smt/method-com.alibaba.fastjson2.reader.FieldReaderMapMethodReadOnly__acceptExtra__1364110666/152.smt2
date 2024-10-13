(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var741 0)
(declare-sort var1693 0)
(declare-sort var344 0)
(declare-sort var1581 0)
(declare-sort var2456 0)
(declare-sort var408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2456-init () var2456)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var408) String)
(declare-fun cast-from-var741-to-var408 (var741) var408)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2456 String) void)
(declare-const null-var741 var741)
(declare-const null-var1693 var1693)
(declare-const null-String String)
(declare-const null-var1581 var1581)
(declare-const var2695 var741) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly 
(assert (not (= var2695 null-var741)))
(declare-const var2204 var1693) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2204 null-var1693)))
(declare-const var3821 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3821 null-String)))
(declare-const var2097 var1693) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var2097 null-var1693)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3919 var1581) ; Statement: $r8 := @caughtexception 
(assert (not (= var3919 null-var1581)))
(define-const var2702 var2456 var2456-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var819 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var819)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var819!1 String)
(assert (= var819!1 ""))
(assert true)
(define-const var786 String (append/672562846 var819!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var819!2 String)
(assert (= var819!2 (str.++ var819!1 "set ")))
(define-const var3084 String (fieldName/-488737871 (cast-from-var741-to-var408 var2695))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var3471 String (append/672562846 var786 var3084)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var786!1 String)
(assert (= var786!1 (str.++ var786 var3084)))
(assert true)
(define-const var3634 String (append/672562846 var3471 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3471!1 String)
(assert (= var3471!1 (str.++ var3471 " error")))
(assert true)
(define-const var1509 String (toString/-2075883882 var3634)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2702 var1509)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15) 

(declare-const var2702!1 var2456)
(declare-const var1509!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2456-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var741-to-var408=([com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var741=com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly, var2695=r0, var1693=java.lang.Object, var2204=r1, var3821=r6, var344=null_type, var2097=r7, var1581=java.lang.Exception, var3919=$r8, var2456=com.alibaba.fastjson2.JSONException, var2702=$r9, var819=$r10, var786=$r12, var408=com.alibaba.fastjson2.reader.FieldReader, var3084=$r11, var3471=$r13, var3634=$r14, var1509=$r15}
; {com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly=var741, r0=var2695, java.lang.Object=var1693, r1=var2204, r6=var3821, null_type=var344, r7=var2097, java.lang.Exception=var1581, $r8=var3919, com.alibaba.fastjson2.JSONException=var2456, $r9=var2702, $r10=var819, $r12=var786, com.alibaba.fastjson2.reader.FieldReader=var408, $r11=var3084, $r13=var3471, $r14=var3634, $r15=var1509}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly;	r1 := @parameter0: java.lang.Object;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.Object;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderMapMethodReadOnly: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2