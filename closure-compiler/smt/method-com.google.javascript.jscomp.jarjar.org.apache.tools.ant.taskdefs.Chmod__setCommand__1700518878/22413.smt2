(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var2247 0)
(declare-sort var3577 0)
(declare-sort var2765 0)
(declare-sort var1034 0)
(declare-sort var292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3577-init () var3577)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2765) String)
(declare-fun cast-from-var1946-to-var2765 (var1946) var2765)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var292) var1034)
(declare-fun cast-from-var1946-to-var292 (var1946) var292)
(declare-fun <init>/-469549130 (var3577 String var1034) void)
(declare-const null-var1946 var1946)
(declare-const null-var2247 var2247)
(declare-const var2631 var1946) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod 
(assert (not (= var2631 null-var1946)))
(declare-const var1652 var2247) ; Statement: r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var1652 null-var2247)))
(define-const var1384 var3577 var3577-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3945 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3945)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3945!1 String)
(assert (= var3945!1 ""))
(assert true)
(define-const var1140 String (getTaskType/1957558293 (cast-from-var1946-to-var2765 var2631))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>() 
(assert true)
(define-const var938 String (append/672562846 var3945!1 var1140)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3945!2 String)
(assert (= var3945!2 (str.++ var3945!1 var1140)))
(assert true)
(define-const var1109 String (append/672562846 var938 " doesn\u0027t support the command attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute") 
(declare-const var938!1 String)
(assert (= var938!1 (str.++ var938 " doesn\u0027t support the command attribute")))
(assert true)
(define-const var739 String (toString/-2075883882 var1109)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var93 var1034 (getLocation/851674571 (cast-from-var1946-to-var292 var2631))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1384 var739 var93)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var1384!1 var3577)
(declare-const var739!1 String)
(declare-const var93!1 var1034)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3577-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1946-to-var2765=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1946-to-var292=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1946=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod, var2631=r2, var2247=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1652=r8, var3577=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1384=$r0, var3945=$r1, var2765=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1140=$r3, var938=$r4, var1109=$r5, var739=$r7, var1034=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var292=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var93=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod=var1946, r2=var2631, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2247, r8=var1652, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3577, $r0=var1384, $r1=var3945, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2765, $r3=var1140, $r4=var938, $r5=var1109, $r7=var739, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1034, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var292, $r6=var93}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod;	r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1