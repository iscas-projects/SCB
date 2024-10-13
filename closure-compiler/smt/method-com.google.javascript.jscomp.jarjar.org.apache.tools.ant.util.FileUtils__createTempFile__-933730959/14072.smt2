(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2477 0)
(declare-sort var2622 0)
(declare-sort var1930 0)
(declare-sort var375 0)
(declare-sort var1127 0)
(declare-sort var1432 0)
(declare-sort var2516 0)
(declare-sort var506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var375) String)
(declare-fun var1127_getProperty/258823597 (String) String)
(declare-fun var375-init () var375)
(declare-fun var2516-init () var2516)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var2516 String var506) void)
(declare-fun cast-from-var1432-to-var506 (var1432) var506)
(declare-const null-var2477 var2477)
(declare-const null-var2622 var2622)
(declare-const null-String String)
(declare-const null-var375 var375)
(declare-const null-Bool Bool)
(declare-const null-var1432 var1432)
(declare-const var958 var2477) ; Statement: r34 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var958 null-var2477)))
(declare-const var443 var2622) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var443 null-var2622)))
(declare-const var1387 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var1387 null-String)))
(declare-const var383 String) ; Statement: r36 := @parameter2: java.lang.String 
(assert (not (= var383 null-String)))
(declare-const var403 var375) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var403 null-var375)))
(declare-const var1701 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1701 null-Bool)))
(declare-const var980 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var980 null-Bool)))
(define-const var3701 String null-String) ; Statement: r37 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var403 null-var375))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3701!1 String (getPath/-1385219261 var403)) ; Statement: r37 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r37 == null goto $r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir") 
(assert (= var3701!1 null-String)) ; Cond: r37 == null 
(define-const var1954 String (var1127_getProperty/258823597 "java.io.tmpdir")) ; Statement: $r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir") 
(assert true) ; Non Conditional
(define-const var2144 String var1954) ; Statement: r42 = $r41 
 ; Statement: if r35 != null goto (branch) 
(assert (not (= var1387 null-String))) ; Cond: r35 != null 
 ; Statement: if r36 != null goto (branch) 
(assert (not (= var383 null-String))) ; Cond: r36 != null 
 ; Statement: if z0 == 0 goto $r2 = new java.text.DecimalFormat 
(assert (not (= (ite var980 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2425 var375 var375-init) ; Statement: $r12 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var433 var1432) ; Statement: $r27 := @caughtexception 
(assert (not (= var433 null-var1432)))
(define-const var1886 var2516 var2516-init) ; Statement: $r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3504 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3504)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3504!1 String)
(assert (= var3504!1 ""))
(assert true)
(define-const var467 String (append/672562846 var3504!1 "Could not create tempfile in ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create tempfile in ") 
(declare-const var3504!2 String)
(assert (= var3504!2 (str.++ var3504!1 "Could not create tempfile in ")))
(assert true)
(define-const var2272 String (append/672562846 var467 var2144)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var467!1 String)
(assert (= var467!1 (str.++ var467 var2144)))
(assert true)
(define-const var3096 String (toString/-2075883882 var2272)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1886 var3096 (cast-from-var1432-to-var506 var433))) ; Statement: specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27) 

(declare-const var1886!1 var2516)
(declare-const var3096!1 String)
(declare-const var433!1 var1432)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), var1127_getProperty/258823597=([java.lang.String], java.lang.String), var375-init=([], java.io.File), var2516-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1432-to-var506=([java.io.IOException], java.lang.Throwable)}
; {var2477=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var958=r34, var2622=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var443=r1, var1387=r35, var1930=null_type, var383=r36, var375=java.io.File, var403=r0, var1701=z2, var980=z0, var3701=r37, var1127=java.lang.System, var1954=$r41, var2144=r42, var2425=$r12, var1432=java.io.IOException, var433=$r27, var2516=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1886=$r28, var3504=$r29, var467=$r30, var2272=$r31, var3096=$r32, var506=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2477, r34=var958, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2622, r1=var443, r35=var1387, null_type=var1930, r36=var383, java.io.File=var375, r0=var403, z2=var1701, z0=var980, r37=var3701, java.lang.System=var1127, $r41=var1954, r42=var2144, $r12=var2425, java.io.IOException=var1432, $r27=var433, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2516, $r28=var1886, $r29=var3504, $r30=var467, $r31=var2272, $r32=var3096, java.lang.Throwable=var506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r35 := @parameter1: java.lang.String;	r36 := @parameter2: java.lang.String;	r0 := @parameter3: java.io.File;	z2 := @parameter4: boolean;	z0 := @parameter5: boolean;	r37 = null;	if r0 == null goto (branch);	r37 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	goto [?= (branch)];	if r37 == null goto $r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir");	$r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir");	r42 = $r41;	if r35 != null goto (branch);	if r36 != null goto (branch);	if z0 == 0 goto $r2 = new java.text.DecimalFormat;	$r12 = new java.io.File;	$r27 := @caughtexception;	$r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create tempfile in ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27);	throw $r28
;block_num 9