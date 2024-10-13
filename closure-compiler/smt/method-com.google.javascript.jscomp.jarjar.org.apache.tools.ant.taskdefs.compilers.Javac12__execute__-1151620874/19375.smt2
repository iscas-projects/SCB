(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1045 0)
(declare-sort var2819 0)
(declare-sort var1060 0)
(declare-sort var1719 0)
(declare-sort var554 0)
(declare-sort var3768 0)
(declare-sort var1335 0)
(declare-sort var2551 0)
(declare-sort var3861 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var1060) var2819)
(declare-fun cast-from-var1045-to-var1060 (var1045) var1060)
(declare-fun log/456963423 (var1719 String Int) void)
(declare-fun cast-from-var2819-to-var1719 (var2819) var1719)
(declare-fun setupJavacCommand/1111077838 (var1060 Bool) var554)
(declare-fun var3768-init () var3768)
(declare-fun var2551-init () var2551)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3861_getJavaHome/1418646508 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun location/-1036098043 (var1060) var3404)
(declare-fun <init>/-469549130 (var2551 String var3404) void)
(declare-const null-var1045 var1045)
(declare-const null-var1335 var1335)
(declare-const var1940 var1045) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12 
(assert (not (= var1940 null-var1045)))
(define-const var3710 var2819 (attributes/-1036098043 (cast-from-var1045-to-var1060 var1940))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
;(assert (log/456963423 (cast-from-var2819-to-var1719 var3710) "Using classic compiler" 3)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3) 

(declare-const var3710!1 var2819)
(declare-const var3779 String)
(declare-const var1922 Int)
(assert true)
(define-const var199 var554 (setupJavacCommand/1111077838 (cast-from-var1045-to-var1060 var1940) (ite (= 1 1) true false))) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1) 
(define-const var607 var3768 var3768-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream 
(assert true) ; Non Conditional
(define-const var1917 var2819 (attributes/-1036098043 (cast-from-var1045-to-var1060 var1940))) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3808 var1335) ; Statement: $r18 := @caughtexception 
(assert (not (= var3808 null-var1335)))
(define-const var2006 var2551 var2551-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var846 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var846)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var846!1 String)
(assert (= var846!1 ""))
(assert true)
(define-const var1899 String (append/672562846 var846!1 "Cannot use classic compiler, as it is not available. \n A common solution is to set the environment variable JAVA_HOME to your jdk directory.\nIt is currently set to \u0022")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot use classic compiler, as it is not available. \n A common solution is to set the environment variable JAVA_HOME to your jdk directory.\nIt is currently set to \"") 
(declare-const var846!2 String)
(assert (= var846!2 (str.++ var846!1 "Cannot use classic compiler, as it is not available. \n A common solution is to set the environment variable JAVA_HOME to your jdk directory.\nIt is currently set to \u0022")))
(define-const var2598 String var3861_getJavaHome/1418646508) ; Statement: $r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaHome()>() 
(assert true)
(define-const var425 String (append/672562846 var1899 var2598)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1899!1 String)
(assert (= var1899!1 (str.++ var1899 var2598)))
(assert true)
(define-const var3939 String (append/672562846 var425 "\u0022")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var425!1 String)
(assert (= var425!1 (str.++ var425 "\u0022")))
(assert true)
(define-const var1629 String (toString/-2075883882 var3939)) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3916 var3404 (location/-1036098043 (cast-from-var1045-to-var1060 var1940))) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location> 
(assert true)
;(assert (<init>/-469549130 var2006 var1629 var3916)) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r26, $r25) 

(declare-const var2006!1 var2551)
(declare-const var1629!1 String)
(declare-const var3916!1 var3404)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), cast-from-var1045-to-var1060=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2819-to-var1719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setupJavacCommand/1111077838=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, boolean], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), var3768-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream), var2551-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3861_getJavaHome/1418646508=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), location/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1045=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12, var1940=r0, var2819=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var1060=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var3710=$r1, var1719=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3779="Using classic compiler", var1922=3, var554=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var199=r2, var3768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, var607=$r3, var1917=$r4, var1335=java.lang.ClassNotFoundException, var3808=$r18, var2551=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2006=$r19, var846=$r20, var1899=$r22, var3861=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2598=$r21, var425=$r23, var3939=$r24, var1629=$r26, var3404=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3916=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12=var1045, r0=var1940, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var2819, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var1060, $r1=var3710, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1719, "Using classic compiler"=var3779, 3=var1922, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var554, r2=var199, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var3768, $r3=var607, $r4=var1917, java.lang.ClassNotFoundException=var1335, $r18=var3808, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2551, $r19=var2006, $r20=var846, $r22=var1899, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var3861, $r21=var2598, $r23=var425, $r24=var3939, $r26=var1629, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3404, $r25=var3916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3);	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1);	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r18 := @caughtexception;	$r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot use classic compiler, as it is not available. \n A common solution is to set the environment variable JAVA_HOME to your jdk directory.\nIt is currently set to \"");	$r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaHome()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location>;	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r26, $r25);	throw $r19
;block_num 3