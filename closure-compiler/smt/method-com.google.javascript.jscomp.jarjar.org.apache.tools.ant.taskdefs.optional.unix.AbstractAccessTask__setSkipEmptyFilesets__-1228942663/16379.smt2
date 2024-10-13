(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var383 0)
(declare-sort var3735 0)
(declare-sort var2609 0)
(declare-sort var3677 0)
(declare-sort var646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3735-init () var3735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2609) String)
(declare-fun cast-from-var383-to-var2609 (var383) var2609)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var646) var3677)
(declare-fun cast-from-var383-to-var646 (var383) var646)
(declare-fun <init>/-469549130 (var3735 String var3677) void)
(declare-const null-var383 var383)
(declare-const null-Bool Bool)
(declare-const var1115 var383) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask 
(assert (not (= var1115 null-var383)))
(declare-const var2630 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2630 null-Bool)))
(define-const var734 var3735 var3735-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3128 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3128)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3128!1 String)
(assert (= var3128!1 ""))
(assert true)
(define-const var86 String (getTaskType/1957558293 (cast-from-var383-to-var2609 var1115))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>() 
(assert true)
(define-const var1498 String (append/672562846 var3128!1 var86)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3128!2 String)
(assert (= var3128!2 (str.++ var3128!1 var86)))
(assert true)
(define-const var3207 String (append/672562846 var1498 " doesn\u0027t support the skipemptyfileset attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute") 
(declare-const var1498!1 String)
(assert (= var1498!1 (str.++ var1498 " doesn\u0027t support the skipemptyfileset attribute")))
(assert true)
(define-const var341 String (toString/-2075883882 var3207)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1861 var3677 (getLocation/851674571 (cast-from-var383-to-var646 var1115))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var734 var341 var1861)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var734!1 var3735)
(declare-const var341!1 String)
(declare-const var1861!1 var3677)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3735-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var383-to-var2609=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var383-to-var646=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var383=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask, var1115=r2, var2630=z0, var3735=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var734=$r0, var3128=$r1, var2609=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var86=$r3, var1498=$r4, var3207=$r5, var341=$r7, var3677=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1861=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask=var383, r2=var1115, z0=var2630, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3735, $r0=var734, $r1=var3128, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2609, $r3=var86, $r4=var1498, $r5=var3207, $r7=var341, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3677, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var646, $r6=var1861}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1