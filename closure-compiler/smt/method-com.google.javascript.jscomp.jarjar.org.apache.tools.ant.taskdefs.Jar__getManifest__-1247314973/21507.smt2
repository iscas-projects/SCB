(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3861 0)
(declare-sort var1332 0)
(declare-sort var2080 0)
(declare-sort var3636 0)
(declare-sort var2579 0)
(declare-sort var1125 0)
(declare-sort var1374 0)
(declare-sort var2796 0)
(declare-sort var2968 0)
(declare-sort var283 0)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2080-init () var2080)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2579) String)
(declare-fun cast-from-var3636-to-var2579 (var3636) var2579)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1125 String Int) void)
(declare-fun cast-from-var3861-to-var1125 (var3861) var1125)
(declare-fun var1374-init () var1374)
(declare-fun manifestFile/1631861567 (var3861) var2796)
(declare-fun append/-1031950772 (String var2968) String)
(declare-fun cast-from-var2796-to-var2968 (var2796) var2968)
(declare-fun getLocation/851674571 (var3286) var283)
(declare-fun cast-from-var3861-to-var3286 (var3861) var3286)
(declare-fun <init>/1933136886 (var1374 String var2579 var283) void)
(declare-const null-var3861 var3861)
(declare-const null-var1332 var1332)
(declare-const null-var3636 var3636)
(declare-const var3367 var3861) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var3367 null-var3861)))
(declare-const var914 var1332) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var914 null-var1332)))
(define-const var3877 var2080 var2080-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3870 var3636) ; Statement: $r10 := @caughtexception 
(assert (not (= var3870 null-var3636)))
(define-const var2653 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2653)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2653!1 String)
(assert (= var2653!1 ""))
(assert true)
(define-const var372 String (append/672562846 var2653!1 "Manifest is invalid: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest is invalid: ") 
(declare-const var2653!2 String)
(assert (= var2653!2 (str.++ var2653!1 "Manifest is invalid: ")))
(assert true)
(define-const var3483 String (getMessage/849299655 (cast-from-var3636-to-var2579 var3870))) ; Statement: $r13 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: java.lang.String getMessage()>() 
(assert true)
(define-const var3517 String (append/672562846 var372 var3483)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var372!1 String)
(assert (= var372!1 (str.++ var372 var3483)))
(assert true)
(define-const var892 String (toString/-2075883882 var3517)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3861-to-var1125 var3367) var892 0)) ; Statement: virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r16, 0) 

(declare-const var3367!1 var3861)
(declare-const var892!1 String)
(declare-const var2763 Int)
(define-const var2198 var1374 var1374-init) ; Statement: $r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1629 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1629)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1629!1 String)
(assert (= var1629!1 ""))
(assert true)
(define-const var1094 String (append/672562846 var1629!1 "Invalid Manifest: ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Manifest: ") 
(declare-const var1629!2 String)
(assert (= var1629!2 (str.++ var1629!1 "Invalid Manifest: ")))
(define-const var224 var2796 (manifestFile/1631861567 var3367!1)) ; Statement: $r19 = r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> 
(assert true)
(define-const var2166 String (append/-1031950772 var1094 (cast-from-var2796-to-var2968 var224))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19) 
(declare-const var1094!1 String)
(assert (str.prefixof var1094 var1094!1))
(assert true)
(define-const var261 String (toString/-2075883882 var2166)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var53 var283 (getLocation/851674571 (cast-from-var3861-to-var3286 var3367!1))) ; Statement: $r22 = virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2198 var261 (cast-from-var3636-to-var2579 var3870) var53)) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r10, $r22) 

(declare-const var2198!1 var1374)
(declare-const var261!1 String)
(declare-const var3870!1 var3636)
(declare-const var53!1 var283)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2080-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3636-to-var2579=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3861-to-var1125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var1374-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), manifestFile/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2796-to-var2968=([java.io.File], java.lang.Object), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3861-to-var3286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3861=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var3367=r11, var1332=java.io.Reader, var914=r1, var2080=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var3877=$r0, var3636=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException, var3870=$r10, var2653=$r12, var372=$r14, var2579=java.lang.Throwable, var3483=$r13, var3517=$r15, var892=$r16, var1125=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2763=0, var1374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2198=$r17, var1629=$r18, var1094=$r20, var2796=java.io.File, var224=$r19, var2968=java.lang.Object, var2166=$r21, var261=$r23, var283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3286=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var53=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var3861, r11=var3367, java.io.Reader=var1332, r1=var914, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var2080, $r0=var3877, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException=var3636, $r10=var3870, $r12=var2653, $r14=var372, java.lang.Throwable=var2579, $r13=var3483, $r15=var3517, $r16=var892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1125, 0=var2763, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1374, $r17=var2198, $r18=var1629, $r20=var1094, java.io.File=var2796, $r19=var224, java.lang.Object=var2968, $r21=var2166, $r23=var261, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var283, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3286, $r22=var53}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r1 := @parameter0: java.io.Reader;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest;	$r10 := @caughtexception;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest is invalid: ");	$r13 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: java.lang.String getMessage()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r16, 0);	$r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Manifest: ");	$r19 = r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r10, $r22);	throw $r17
;block_num 2