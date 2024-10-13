(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2482 0)
(declare-sort var3708 0)
(declare-sort var3360 0)
(declare-sort var718 0)
(declare-sort var3603 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3360-init () var3360)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var718) String)
(declare-fun cast-from-var2482-to-var718 (var2482) var718)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var519) var3603)
(declare-fun cast-from-var2482-to-var519 (var2482) var519)
(declare-fun <init>/-469549130 (var3360 String var3603) void)
(declare-const null-var2482 var2482)
(declare-const null-String String)
(declare-const var2824 var2482) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp 
(assert (not (= var2824 null-var2482)))
(declare-const var1120 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1120 null-String)))
(define-const var2216 var3360 var3360-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var546 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var546)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var546!1 String)
(assert (= var546!1 ""))
(assert true)
(define-const var3394 String (getTaskType/1957558293 (cast-from-var2482-to-var718 var2824))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp: java.lang.String getTaskType()>() 
(assert true)
(define-const var3574 String (append/672562846 var546!1 var3394)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var546!2 String)
(assert (= var546!2 (str.++ var546!1 var3394)))
(assert true)
(define-const var979 String (append/672562846 var3574 " doesn\u0027t support the executable attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute") 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 " doesn\u0027t support the executable attribute")))
(assert true)
(define-const var981 String (toString/-2075883882 var979)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3035 var3603 (getLocation/851674571 (cast-from-var2482-to-var519 var2824))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2216 var981 var3035)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var2216!1 var3360)
(declare-const var981!1 String)
(declare-const var3035!1 var3603)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3360-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2482-to-var718=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2482-to-var519=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2482=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp, var2824=r2, var1120=r8, var3708=null_type, var3360=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2216=$r0, var546=$r1, var718=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3394=$r3, var3574=$r4, var979=$r5, var981=$r7, var3603=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var519=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3035=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp=var2482, r2=var2824, r8=var1120, null_type=var3708, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3360, $r0=var2216, $r1=var546, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var718, $r3=var3394, $r4=var3574, $r5=var979, $r7=var981, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3603, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var519, $r6=var3035}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp;	r8 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chgrp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1