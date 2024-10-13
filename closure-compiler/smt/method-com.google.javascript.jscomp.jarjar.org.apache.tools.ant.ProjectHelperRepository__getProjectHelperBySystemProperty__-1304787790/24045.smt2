(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1180 0)
(declare-sort var439 0)
(declare-sort var777 0)
(declare-sort var1124 0)
(declare-sort var311 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var439_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var122) String)
(declare-fun cast-from-var1124-to-var122 (var1124) var122)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var311 String) void)
(declare-const null-var1180 var1180)
(declare-const null-String String)
(declare-const null-var1124 var1124)
(declare-const var439-err var311)
(declare-const var1180-DEBUG Bool)
(declare-const var3217 var1180) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var3217 null-var1180)))
(define-const var3496 String (var439_getProperty/258823597 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper") 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3496 null-String))) ; Negate: Cond: r0 == null  
(declare-const var2122 var1124) ; Statement: $r3 := @caughtexception 
(assert (not (= var2122 null-var1124)))
(define-const var2649 var311 var439-err) ; Statement: $r5 = <java.lang.System: java.io.PrintStream err> 
(define-const var1856 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1856)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1856!1 String)
(assert (= var1856!1 ""))
(assert true)
(define-const var3256 String (append/672562846 var1856!1 "Unable to load ProjectHelper class \u0022")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper class \"") 
(declare-const var1856!2 String)
(assert (= var1856!2 (str.++ var1856!1 "Unable to load ProjectHelper class \u0022")))
(assert true)
(define-const var1671 String (append/672562846 var3256 var3496)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3256!1 String)
(assert (= var3256!1 (str.++ var3256 var3496)))
(assert true)
(define-const var1874 String (append/672562846 var1671 " specified in system property ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" specified in system property ") 
(declare-const var1671!1 String)
(assert (= var1671!1 (str.++ var1671 " specified in system property ")))
(assert true)
(define-const var1479 String (append/672562846 var1874 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper") 
(declare-const var1874!1 String)
(assert (= var1874!1 (str.++ var1874 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper")))
(assert true)
(define-const var282 String (append/672562846 var1479 " (")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 " (")))
(assert true)
(define-const var2760 String (getMessage/849299655 (cast-from-var1124-to-var122 var2122))) ; Statement: $r10 = virtualinvoke $r3.<java.lang.SecurityException: java.lang.String getMessage()>() 
(assert true)
(define-const var707 String (append/672562846 var282 var2760)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var282!1 String)
(assert (= var282!1 (str.++ var282 var2760)))
(assert true)
(define-const var2413 String (append/672562846 var707 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var707!1 String)
(assert (= var707!1 (str.++ var707 ")")))
(assert true)
(define-const var3762 String (toString/-2075883882 var2413)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2649 var3762)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var2649!1 var311)
(declare-const var3762!1 String)
(define-const var3434 Bool var1180-DEBUG) ; Statement: $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3434 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var439_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1124-to-var122=([java.lang.SecurityException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1180=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var3217=r1, var439=java.lang.System, var3496=r0, var777=null_type, var1124=java.lang.SecurityException, var2122=$r3, var311=java.io.PrintStream, var2649=$r5, var1856=$r4, var3256=$r6, var1671=$r7, var1874=$r8, var1479=$r9, var282=$r11, var122=java.lang.Throwable, var2760=$r10, var707=$r12, var2413=$r13, var3762=$r14, var3434=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var1180, r1=var3217, java.lang.System=var439, r0=var3496, null_type=var777, java.lang.SecurityException=var1124, $r3=var2122, java.io.PrintStream=var311, $r5=var2649, $r4=var1856, $r6=var3256, $r7=var1671, $r8=var1874, $r9=var1479, $r11=var282, java.lang.Throwable=var122, $r10=var2760, $r12=var707, $r13=var2413, $r14=var3762, $z0=var3434}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper");	if r0 == null goto (branch);	$r3 := @caughtexception;	$r5 = <java.lang.System: java.io.PrintStream err>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper class \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" specified in system property ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r10 = virtualinvoke $r3.<java.lang.SecurityException: java.lang.String getMessage()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r14);	$z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>;	if $z0 == 0 goto return null;	return null
;block_num 3