(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2319 0)
(declare-sort var2999 0)
(declare-sort var3634 0)
(declare-sort var1418 0)
(declare-sort var1764 0)
(declare-sort var689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3634-init () var3634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var1418) String)
(declare-fun cast-from-var2319-to-var1418 (var2319) var1418)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var689) var1764)
(declare-fun cast-from-var2319-to-var689 (var2319) var689)
(declare-fun <init>/-469549130 (var3634 String var1764) void)
(declare-const null-var2319 var2319)
(declare-const null-var2999 var2999)
(declare-const var119 var2319) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask 
(assert (not (= var119 null-var2319)))
(declare-const var1828 var2999) ; Statement: r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var1828 null-var2999)))
(define-const var295 var3634 var3634-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3296 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3296)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3296!1 String)
(assert (= var3296!1 ""))
(assert true)
(define-const var1716 String (getTaskType/1957558293 (cast-from-var2319-to-var1418 var119))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>() 
(assert true)
(define-const var2448 String (append/672562846 var3296!1 var1716)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3296!2 String)
(assert (= var3296!2 (str.++ var3296!1 var1716)))
(assert true)
(define-const var1983 String (append/672562846 var2448 " doesn\u0027t support the command attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute") 
(declare-const var2448!1 String)
(assert (= var2448!1 (str.++ var2448 " doesn\u0027t support the command attribute")))
(assert true)
(define-const var2483 String (toString/-2075883882 var1983)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var323 var1764 (getLocation/851674571 (cast-from-var2319-to-var689 var119))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var295 var2483 var323)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var295!1 var3634)
(declare-const var2483!1 String)
(declare-const var323!1 var1764)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3634-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2319-to-var1418=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2319-to-var689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2319=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask, var119=r2, var2999=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1828=r8, var3634=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var295=$r0, var3296=$r1, var1418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1716=$r3, var2448=$r4, var1983=$r5, var2483=$r7, var1764=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var689=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var323=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask=var2319, r2=var119, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2999, r8=var1828, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3634, $r0=var295, $r1=var3296, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1418, $r3=var1716, $r4=var2448, $r5=var1983, $r7=var2483, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1764, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var689, $r6=var323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask;	r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1