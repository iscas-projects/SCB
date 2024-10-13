(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort var529 0)
(declare-sort var2284 0)
(declare-sort var916 0)
(declare-sort var1787 0)
(declare-sort var1877 0)
(declare-sort var2223 0)
(declare-sort var3430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1207858493 (var529) String)
(declare-fun getMessage/849299655 (var1787) String)
(declare-fun cast-from-var916-to-var1787 (var916) var1787)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1877-init () var1877)
(declare-fun getLocation/851674571 (var3430) var2223)
(declare-fun cast-from-var2934-to-var3430 (var2934) var3430)
(declare-fun <init>/-469549130 (var1877 String var2223) void)
(declare-const null-var2934 var2934)
(declare-const null-var529 var529)
(declare-const null-var2284 var2284)
(declare-const null-var916 var916)
(declare-const var2352 var2934) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs 
(assert (not (= var2352 null-var2934)))
(declare-const var2662 var529) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var2662 null-var529)))
(declare-const var3293 var2284) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler 
(assert (not (= var3293 null-var2284)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var596 var916) ; Statement: $r6 := @caughtexception 
(assert (not (= var596 null-var916)))
(define-const var638 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var638)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var638!1 String)
(assert (= var638!1 ""))
(assert true)
(define-const var1967 String (append/672562846 var638!1 "Failed executing: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ") 
(declare-const var638!2 String)
(assert (= var638!2 (str.++ var638!1 "Failed executing: ")))
(assert true)
(define-const var192 String (toString/-1207858493 var2662)) ; Statement: $r8 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>() 
(assert true)
(define-const var348 String (append/672562846 var1967 var192)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1967!1 String)
(assert (= var1967!1 (str.++ var1967 var192)))
(assert true)
(define-const var1126 String (append/672562846 var348 ". Exception: ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Exception: ") 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 ". Exception: ")))
(assert true)
(define-const var199 String (getMessage/849299655 (cast-from-var916-to-var1787 var596))) ; Statement: $r11 = virtualinvoke $r6.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2913 String (append/672562846 var1126 var199)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1126!1 String)
(assert (= var1126!1 (str.++ var1126 var199)))
(assert true)
(define-const var2104 String (toString/-2075883882 var2913)) ; Statement: r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3636 var1877 var1877-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var1102 var2223 (getLocation/851674571 (cast-from-var2934-to-var3430 var2352))) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3636 var2104 var1102)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r17, $r15) 

(declare-const var3636!1 var1877)
(declare-const var2104!1 String)
(declare-const var1102!1 var2223)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1207858493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var916-to-var1787=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1877-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2934-to-var3430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2934=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs, var2352=r0, var529=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2662=r4, var2284=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler, var3293=r2, var916=java.io.IOException, var596=$r6, var638=$r7, var1967=$r9, var192=$r8, var348=$r10, var1126=$r12, var1787=java.lang.Throwable, var199=$r11, var2913=$r13, var2104=r17, var1877=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3636=$r14, var2223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1102=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs=var2934, r0=var2352, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var529, r4=var2662, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler=var2284, r2=var3293, java.io.IOException=var916, $r6=var596, $r7=var638, $r9=var1967, $r8=var192, $r10=var348, $r12=var1126, java.lang.Throwable=var1787, $r11=var199, $r13=var2913, r17=var2104, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1877, $r14=var3636, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2223, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3430, $r15=var1102}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler;	$r6 := @caughtexception;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ");	$r8 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Exception: ");	$r11 = virtualinvoke $r6.<java.io.IOException: java.lang.String getMessage()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r17, $r15);	throw $r14
;block_num 2