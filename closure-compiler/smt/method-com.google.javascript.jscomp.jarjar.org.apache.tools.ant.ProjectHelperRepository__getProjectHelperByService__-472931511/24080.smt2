(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2988 0)
(declare-sort var743 0)
(declare-sort var3777 0)
(declare-sort var1337 0)
(declare-sort var2575 0)
(declare-sort var135 0)
(declare-sort var1210 0)
(declare-sort var2453 0)
(declare-sort var2281 0)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3777-init () var3777)
(declare-fun var1337-init () var1337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3993) String)
(declare-fun cast-from-var1210-to-var3993 (var1210) var3993)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2453 String) void)
(declare-const null-var2988 var2988)
(declare-const null-var743 var743)
(declare-const var135-UTF_8 var2575)
(declare-const null-var1210 var1210)
(declare-const var2281-out var2453)
(declare-const var2988-DEBUG Bool)
(declare-const var151 var2988) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var151 null-var2988)))
(declare-const var2839 var743) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var2839 null-var743)))
(define-const var2722 var3777 var3777-init) ; Statement: $r0 = new java.io.BufferedReader 
(define-const var1793 var1337 var1337-init) ; Statement: $r1 = new java.io.InputStreamReader 
(define-const var2538 var2575 var135-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2368 var1210) ; Statement: $r7 := @caughtexception 
(assert (not (= var2368 null-var1210)))
(define-const var3864 var2453 var2281-out) ; Statement: $r9 = <java.lang.System: java.io.PrintStream out> 
(define-const var767 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var767)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var767!1 String)
(assert (= var767!1 ""))
(assert true)
(define-const var2902 String (append/672562846 var767!1 "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (") 
(declare-const var767!2 String)
(assert (= var767!2 (str.++ var767!1 "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (")))
(assert true)
(define-const var2533 String (getMessage/849299655 (cast-from-var1210-to-var3993 var2368))) ; Statement: $r10 = virtualinvoke $r7.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3077 String (append/672562846 var2902 var2533)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2902!1 String)
(assert (= var2902!1 (str.++ var2902 var2533)))
(assert true)
(define-const var2754 String (append/672562846 var3077 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3077!1 String)
(assert (= var3077!1 (str.++ var3077 ")")))
(assert true)
(define-const var321 String (toString/-2075883882 var2754)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3864 var321)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3864!1 var2453)
(declare-const var321!1 String)
(define-const var1696 Bool var2988-DEBUG) ; Statement: $z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var1696 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3777-init=([], java.io.BufferedReader), var1337-init=([], java.io.InputStreamReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1210-to-var3993=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2988=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var151=r5, var743=java.io.InputStream, var2839=r2, var3777=java.io.BufferedReader, var2722=$r0, var1337=java.io.InputStreamReader, var1793=$r1, var2575=java.nio.charset.Charset, var135=java.nio.charset.StandardCharsets, var2538=$r3, var1210=java.lang.Exception, var2368=$r7, var2453=java.io.PrintStream, var2281=java.lang.System, var3864=$r9, var767=$r8, var2902=$r11, var3993=java.lang.Throwable, var2533=$r10, var3077=$r12, var2754=$r13, var321=$r14, var1696=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var2988, r5=var151, java.io.InputStream=var743, r2=var2839, java.io.BufferedReader=var3777, $r0=var2722, java.io.InputStreamReader=var1337, $r1=var1793, java.nio.charset.Charset=var2575, java.nio.charset.StandardCharsets=var135, $r3=var2538, java.lang.Exception=var1210, $r7=var2368, java.io.PrintStream=var2453, java.lang.System=var2281, $r9=var3864, $r8=var767, $r11=var2902, java.lang.Throwable=var3993, $r10=var2533, $r12=var3077, $r13=var2754, $r14=var321, $z1=var1696}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	r2 := @parameter0: java.io.InputStream;	$r0 = new java.io.BufferedReader;	$r1 = new java.io.InputStreamReader;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r7 := @caughtexception;	$r9 = <java.lang.System: java.io.PrintStream out>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (");	$r10 = virtualinvoke $r7.<java.lang.Exception: java.lang.String getMessage()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r14);	$z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>;	if $z1 == 0 goto return null;	return null
;block_num 3