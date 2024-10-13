(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1085 0)
(declare-sort var1855 0)
(declare-sort var1245 0)
(declare-sort var2767 0)
(declare-sort var2594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1855-init () var1855)
(declare-fun getCause/-2104742776 (var1245) var2767)
(declare-fun var2594-init () var2594)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2767) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-252871109 (var2594 String var2767) void)
(declare-const null-var1085 var1085)
(declare-const null-var1245 var1245)
(declare-const var3566 var1085) ; Statement: r1 := @parameter0: java.util.concurrent.Callable 
(assert (not (= var3566 null-var1085)))
(define-const var3602 var1855 var1855-init) ; Statement: $r0 = new jdk.jfr.internal.SecuritySupport$1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2327 var1245) ; Statement: $r3 := @caughtexception 
(assert (not (= var2327 null-var1245)))
(assert true)
(define-const var1312 var2767 (getCause/-2104742776 var2327)) ; Statement: r4 = virtualinvoke $r3.<java.security.PrivilegedActionException: java.lang.Throwable getCause()>() 
(define-const var2305 Bool false) ; Statement: $z0 = r4 instanceof java.io.IOException 
 ; Statement: if $z0 == 0 goto $r5 = new java.io.IOException 
(assert (= (ite var2305 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1315 var2594 var2594-init) ; Statement: $r5 = new java.io.IOException 
(define-const var2871 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2871)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2871!1 String)
(assert (= var2871!1 ""))
(assert true)
(define-const var2898 String (append/672562846 var2871!1 "Unexpected error during I/O operation. ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error during I/O operation. ") 
(declare-const var2871!2 String)
(assert (= var2871!2 (str.++ var2871!1 "Unexpected error during I/O operation. ")))
(assert true)
(define-const var2235 String (getMessage/849299655 var1312)) ; Statement: $r7 = virtualinvoke r4.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var469 String (append/672562846 var2898 var2235)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 var2235)))
(assert true)
(define-const var3165 String (toString/-2075883882 var469)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-252871109 var1315 var3165 var1312)) ; Statement: specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r10, r4) 

(declare-const var1315!1 var2594)
(declare-const var3165!1 String)
(declare-const var1312!1 var2767)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1855-init=([], jdk.jfr.internal.SecuritySupport$1), getCause/-2104742776=([java.security.PrivilegedActionException], java.lang.Throwable), var2594-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void)}
; {var1085=java.util.concurrent.Callable, var3566=r1, var1855=jdk.jfr.internal.SecuritySupport$1, var3602=$r0, var1245=java.security.PrivilegedActionException, var2327=$r3, var2767=java.lang.Throwable, var1312=r4, var2305=$z0, var2594=java.io.IOException, var1315=$r5, var2871=$r6, var2898=$r8, var2235=$r7, var469=$r9, var3165=$r10}
; {java.util.concurrent.Callable=var1085, r1=var3566, jdk.jfr.internal.SecuritySupport$1=var1855, $r0=var3602, java.security.PrivilegedActionException=var1245, $r3=var2327, java.lang.Throwable=var2767, r4=var1312, $z0=var2305, java.io.IOException=var2594, $r5=var1315, $r6=var2871, $r8=var2898, $r7=var2235, $r9=var469, $r10=var3165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.concurrent.Callable;	$r0 = new jdk.jfr.internal.SecuritySupport$1;	$r3 := @caughtexception;	r4 = virtualinvoke $r3.<java.security.PrivilegedActionException: java.lang.Throwable getCause()>();	$z0 = r4 instanceof java.io.IOException;	if $z0 == 0 goto $r5 = new java.io.IOException;	$r5 = new java.io.IOException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error during I/O operation. ");	$r7 = virtualinvoke r4.<java.lang.Throwable: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r10, r4);	throw $r5
;block_num 3