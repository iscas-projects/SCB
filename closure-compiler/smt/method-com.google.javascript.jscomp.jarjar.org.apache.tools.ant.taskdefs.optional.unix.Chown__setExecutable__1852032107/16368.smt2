(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3211 0)
(declare-sort var3895 0)
(declare-sort var1064 0)
(declare-sort var1802 0)
(declare-sort var1790 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1064-init () var1064)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var1802) String)
(declare-fun cast-from-var3211-to-var1802 (var3211) var1802)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3087) var1790)
(declare-fun cast-from-var3211-to-var3087 (var3211) var3087)
(declare-fun <init>/-469549130 (var1064 String var1790) void)
(declare-const null-var3211 var3211)
(declare-const null-String String)
(declare-const var2214 var3211) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown 
(assert (not (= var2214 null-var3211)))
(declare-const var1201 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1201 null-String)))
(define-const var452 var1064 var1064-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2143 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2143)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2143!1 String)
(assert (= var2143!1 ""))
(assert true)
(define-const var2508 String (getTaskType/1957558293 (cast-from-var3211-to-var1802 var2214))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown: java.lang.String getTaskType()>() 
(assert true)
(define-const var2137 String (append/672562846 var2143!1 var2508)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2143!2 String)
(assert (= var2143!2 (str.++ var2143!1 var2508)))
(assert true)
(define-const var2887 String (append/672562846 var2137 " doesn\u0027t support the executable attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute") 
(declare-const var2137!1 String)
(assert (= var2137!1 (str.++ var2137 " doesn\u0027t support the executable attribute")))
(assert true)
(define-const var2918 String (toString/-2075883882 var2887)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var514 var1790 (getLocation/851674571 (cast-from-var3211-to-var3087 var2214))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var452 var2918 var514)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var452!1 var1064)
(declare-const var2918!1 String)
(declare-const var514!1 var1790)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1064-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3211-to-var1802=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3211-to-var3087=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3211=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown, var2214=r2, var1201=r8, var3895=null_type, var1064=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var452=$r0, var2143=$r1, var1802=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2508=$r3, var2137=$r4, var2887=$r5, var2918=$r7, var1790=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var514=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown=var3211, r2=var2214, r8=var1201, null_type=var3895, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1064, $r0=var452, $r1=var2143, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1802, $r3=var2508, $r4=var2137, $r5=var2887, $r7=var2918, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1790, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3087, $r6=var514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown;	r8 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Chown: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1