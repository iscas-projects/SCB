(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var1959 0)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1654_getProperty/258823597 (String) String)
(declare-fun toLowerCase/1946809429 (String var1959) String)
(declare-const var1959-ENGLISH var1959)
(declare-const var2233-pathSeparator String)
(define-const var2649 String (var1654_getProperty/258823597 "os.name")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(define-const var1725 var1959 var1959-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3070 String (toLowerCase/1946809429 var2649 var1725)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(define-const var496 String var3070) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_NAME> = $r2 
(define-const var1359 String (var1654_getProperty/258823597 "os.arch")) ; Statement: $r4 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.arch") 
(define-const var3082 var1959 var1959-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3618 String (toLowerCase/1946809429 var1359 var3082)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var923 String var3618) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_ARCH> = $r5 
(define-const var499 String (var1654_getProperty/258823597 "os.version")) ; Statement: $r7 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.version") 
(define-const var3051 var1959 var1959-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2790 String (toLowerCase/1946809429 var499 var3051)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6) 
(define-const var2745 String var2790) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_VERSION> = $r8 
(define-const var1818 String var2233-pathSeparator) ; Statement: $r9 = <java.io.File: java.lang.String pathSeparator> 
(define-const var3819 String var1818) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String PATH_SEP> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1654_getProperty/258823597=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1654=java.lang.System, var2649=$r1, var1959=java.util.Locale, var1725=$r0, var3070=$r2, var496=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_NAME>, var1359=$r4, var3082=$r3, var3618=$r5, var923=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_ARCH>, var499=$r7, var3051=$r6, var2790=$r8, var2745=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_VERSION>, var2233=java.io.File, var1818=$r9, var3819=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String PATH_SEP>}
; {java.lang.System=var1654, $r1=var2649, java.util.Locale=var1959, $r0=var1725, $r2=var3070, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_NAME>=var496, $r4=var1359, $r3=var3082, $r5=var3618, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_ARCH>=var923, $r7=var499, $r6=var3051, $r8=var2790, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_VERSION>=var2745, java.io.File=var2233, $r9=var1818, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String PATH_SEP>=var3819}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 3}
;stmts $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_NAME> = $r2;	$r4 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.arch");	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_ARCH> = $r5;	$r7 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.version");	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String OS_VERSION> = $r8;	$r9 = <java.io.File: java.lang.String pathSeparator>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String PATH_SEP> = $r9;	return
;block_num 1