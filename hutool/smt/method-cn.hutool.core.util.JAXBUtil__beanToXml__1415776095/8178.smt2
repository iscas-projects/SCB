(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var402 0)
(declare-sort var434 0)
(declare-sort var1527 0)
(declare-sort var1157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1527-init () var1527)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1157) String)
(declare-fun cast-from-var434-to-var1157 (var434) var1157)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1116114086 (var1527 String var1157) void)
(declare-const null-var3403 var3403)
(declare-const null-var402 var402)
(declare-const null-Bool Bool)
(declare-const null-var434 var434)
(declare-const var441 var3403) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var441 null-var3403)))
(declare-const var3750 var402) ; Statement: r5 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3750 null-var402)))
(declare-const var539 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var539 null-Bool)))
(define-const var2224 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r0 = newarray (java.lang.Class)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1951 var434) ; Statement: $r9 := @caughtexception 
(assert (not (= var1951 null-var434)))
(define-const var3982 var1527 var1527-init) ; Statement: $r10 = new cn.hutool.core.exceptions.UtilException 
(define-const var3118 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3118)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3118!1 String)
(assert (= var3118!1 ""))
(assert true)
(define-const var2788 String (append/672562846 var3118!1 "convertToXml \u9519\u8bef\uff1a")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convertToXml \u9519\u8bef\uff1a") 
(declare-const var3118!2 String)
(assert (= var3118!2 (str.++ var3118!1 "convertToXml \u9519\u8bef\uff1a")))
(assert true)
(define-const var2623 String (getMessage/849299655 (cast-from-var434-to-var1157 var1951))) ; Statement: $r12 = virtualinvoke $r9.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1857 String (append/672562846 var2788 var2623)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2788!1 String)
(assert (= var2788!1 (str.++ var2788 var2623)))
(assert true)
(define-const var1709 String (toString/-2075883882 var1857)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1116114086 var3982 var1709 (cast-from-var434-to-var1157 var1951))) ; Statement: specialinvoke $r10.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var3982!1 var1527)
(declare-const var1709!1 String)
(declare-const var1951!1 var434)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1527-init=([], cn.hutool.core.exceptions.UtilException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var434-to-var1157=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1116114086=([cn.hutool.core.exceptions.UtilException, java.lang.String, java.lang.Throwable], void)}
; {var3403=java.lang.Object, var441=r1, var402=java.nio.charset.Charset, var3750=r5, var539=z0, var2224=$r0, var434=java.lang.Exception, var1951=$r9, var1527=cn.hutool.core.exceptions.UtilException, var3982=$r10, var3118=$r11, var2788=$r13, var1157=java.lang.Throwable, var2623=$r12, var1857=$r14, var1709=$r15}
; {java.lang.Object=var3403, r1=var441, java.nio.charset.Charset=var402, r5=var3750, z0=var539, $r0=var2224, java.lang.Exception=var434, $r9=var1951, cn.hutool.core.exceptions.UtilException=var1527, $r10=var3982, $r11=var3118, $r13=var2788, java.lang.Throwable=var1157, $r12=var2623, $r14=var1857, $r15=var1709}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.nio.charset.Charset;	z0 := @parameter2: boolean;	$r0 = newarray (java.lang.Class)[1];	$r9 := @caughtexception;	$r10 = new cn.hutool.core.exceptions.UtilException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convertToXml \u9519\u8bef\uff1a");	$r12 = virtualinvoke $r9.<java.lang.Exception: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	throw $r10
;block_num 2