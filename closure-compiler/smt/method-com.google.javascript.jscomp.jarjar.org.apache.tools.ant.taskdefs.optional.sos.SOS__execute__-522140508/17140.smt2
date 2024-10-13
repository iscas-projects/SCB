(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var831 0)
(declare-sort var3101 0)
(declare-sort var494 0)
(declare-sort var522 0)
(declare-sort var1065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildCmdLine/-1084933160 (var831) var3101)
(declare-fun commandLine/-1805167282 (var831) var3101)
(declare-fun run/157245086 (var831 var3101) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1207858493 (var3101) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var494-init () var494)
(declare-fun getLocation/851674571 (var1065) var522)
(declare-fun cast-from-var831-to-var1065 (var831) var1065)
(declare-fun <init>/-469549130 (var494 String var522) void)
(declare-const null-var831 var831)
(declare-const var981 var831) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS 
(assert (not (= var981 null-var831)))
(assert true)
;(assert (buildCmdLine/-1084933160 var981)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline buildCmdLine()>() 

(declare-const var981!1 var831)
(define-const var805 var3101 (commandLine/-1805167282 var981!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine> 
(assert true)
(define-const var1788 Int (run/157245086 var981!1 var805)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r1) 
 ; Statement: if i0 != 255 goto return 
(assert (not (not (= var1788 255)))) ; Negate: Cond: i0 != 255  
(define-const var2749 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2749)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2749!1 String)
(assert (= var2749!1 ""))
(assert true)
(define-const var1326 String (append/672562846 var2749!1 "Failed executing: ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ") 
(declare-const var2749!2 String)
(assert (= var2749!2 (str.++ var2749!1 "Failed executing: ")))
(define-const var927 var3101 (commandLine/-1805167282 var981!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine> 
(assert true)
(define-const var2593 String (toString/-1207858493 var927)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>() 
(assert true)
(define-const var255 String (append/672562846 var1326 var2593)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1326!1 String)
(assert (= var1326!1 (str.++ var1326 var2593)))
(assert true)
(define-const var2730 String (toString/-2075883882 var255)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3968 var494 var494-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var2744 var522 (getLocation/851674571 (cast-from-var831-to-var1065 var981!1))) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3968 var2730 var2744)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r7, $r9) 

(declare-const var3968!1 var494)
(declare-const var2730!1 String)
(declare-const var2744!1 var522)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {buildCmdLine/-1084933160=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), commandLine/-1805167282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), run/157245086=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1207858493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var494-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var831-to-var1065=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var831=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, var981=r0, var3101=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var805=$r1, var1788=i0, var2749=$r2, var1326=$r5, var927=$r3, var2593=$r4, var255=$r6, var2730=r7, var494=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3968=$r8, var522=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1065=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2744=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS=var831, r0=var981, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3101, $r1=var805, i0=var1788, $r2=var2749, $r5=var1326, $r3=var927, $r4=var2593, $r6=var255, r7=var2730, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var494, $r8=var3968, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var522, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1065, $r9=var2744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline buildCmdLine()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine>;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: int run(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline)>($r1);	if i0 != 255 goto return;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed executing: ");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline commandLine>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r7, $r9);	throw $r8
;block_num 2