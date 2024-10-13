(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1773 0)
(declare-sort var417 0)
(declare-sort var2998 0)
(declare-sort var2299 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var417-init () var417)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2998) String)
(declare-fun cast-from-var1773-to-var2998 (var1773) var2998)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2155) var2299)
(declare-fun cast-from-var1773-to-var2155 (var1773) var2155)
(declare-fun <init>/-469549130 (var417 String var2299) void)
(declare-const null-var1773 var1773)
(declare-const null-Bool Bool)
(declare-const var448 var1773) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask 
(assert (not (= var448 null-var1773)))
(declare-const var1781 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1781 null-Bool)))
(define-const var1354 var417 var417-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var635 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var635)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var635!1 String)
(assert (= var635!1 ""))
(assert true)
(define-const var1468 String (getTaskType/1957558293 (cast-from-var1773-to-var2998 var448))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>() 
(assert true)
(define-const var2501 String (append/672562846 var635!1 var1468)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var635!2 String)
(assert (= var635!2 (str.++ var635!1 var1468)))
(assert true)
(define-const var1542 String (append/672562846 var2501 " doesn\u0027t support the addsourcefile attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute") 
(declare-const var2501!1 String)
(assert (= var2501!1 (str.++ var2501 " doesn\u0027t support the addsourcefile attribute")))
(assert true)
(define-const var1496 String (toString/-2075883882 var1542)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3376 var2299 (getLocation/851674571 (cast-from-var1773-to-var2155 var448))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1354 var1496 var3376)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var1354!1 var417)
(declare-const var1496!1 String)
(declare-const var3376!1 var2299)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var417-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1773-to-var2998=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1773-to-var2155=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1773=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask, var448=r2, var1781=z0, var417=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1354=$r0, var635=$r1, var2998=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1468=$r3, var2501=$r4, var1542=$r5, var1496=$r7, var2299=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2155=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3376=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask=var1773, r2=var448, z0=var1781, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var417, $r0=var1354, $r1=var635, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2998, $r3=var1468, $r4=var2501, $r5=var1542, $r7=var1496, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2299, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2155, $r6=var3376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.AbstractAccessTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1