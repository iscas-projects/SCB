(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2927 0)
(declare-sort var50 0)
(declare-sort var179 0)
(declare-sort var3874 0)
(declare-sort var829 0)
(declare-sort var2075 0)
(declare-sort var1498 0)
(declare-sort var3075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var179-init () var179)
(declare-fun var3874-init () var3874)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2075) String)
(declare-fun cast-from-var829-to-var2075 (var829) var2075)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1498 String Int) void)
(declare-fun cast-from-var2927-to-var1498 (var2927) var1498)
(declare-fun var3075-init () var3075)
(declare-fun <init>/1864341934 (var3075 String) void)
(declare-const null-var2927 var2927)
(declare-const null-var50 var50)
(declare-const null-var829 var829)
(declare-const var3405 var2927) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask 
(assert (not (= var3405 null-var2927)))
(declare-const var3676 var50) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var3676 null-var50)))
(define-const var2348 var179 var179-init) ; Statement: $r0 = new java.io.BufferedReader 
(define-const var508 var3874 var3874-init) ; Statement: $r1 = new java.io.InputStreamReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3071 var829) ; Statement: $r15 := @caughtexception 
(assert (not (= var3071 null-var829)))
(define-const var2130 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2130)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2130!1 String)
(assert (= var2130!1 ""))
(assert true)
(define-const var670 String (append/672562846 var2130!1 "error procession stream ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error procession stream ") 
(declare-const var2130!2 String)
(assert (= var2130!2 (str.++ var2130!1 "error procession stream ")))
(assert true)
(define-const var1243 String (getMessage/849299655 (cast-from-var829-to-var2075 var3071))) ; Statement: $r17 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3723 String (append/672562846 var670 var1243)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 var1243)))
(assert true)
(define-const var519 String (toString/-2075883882 var3723)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2927-to-var1498 var3405) var519 0)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: void log(java.lang.String,int)>($r20, 0) 

(declare-const var3405!1 var2927)
(declare-const var519!1 String)
(declare-const var2872 Int)
(define-const var2426 var3075 var3075-init) ; Statement: $r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var3361 String (getMessage/849299655 (cast-from-var829-to-var2075 var3071))) ; Statement: $r22 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
;(assert (<init>/1864341934 var2426 var3361)) ; Statement: specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22) 

(declare-const var2426!1 var3075)
(declare-const var3361!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var179-init=([], java.io.BufferedReader), var3874-init=([], java.io.InputStreamReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var829-to-var2075=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2927-to-var1498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var3075-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2927=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask, var3405=r3, var50=java.io.InputStream, var3676=r2, var179=java.io.BufferedReader, var2348=$r0, var3874=java.io.InputStreamReader, var508=$r1, var829=java.lang.Exception, var3071=$r15, var2130=$r16, var670=$r18, var2075=java.lang.Throwable, var1243=$r17, var3723=$r19, var519=$r20, var1498=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2872=0, var3075=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2426=$r21, var3361=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask=var2927, r3=var3405, java.io.InputStream=var50, r2=var3676, java.io.BufferedReader=var179, $r0=var2348, java.io.InputStreamReader=var3874, $r1=var508, java.lang.Exception=var829, $r15=var3071, $r16=var2130, $r18=var670, java.lang.Throwable=var2075, $r17=var1243, $r19=var3723, $r20=var519, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1498, 0=var2872, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3075, $r21=var2426, $r22=var3361}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask;	r2 := @parameter0: java.io.InputStream;	$r0 = new java.io.BufferedReader;	$r1 = new java.io.InputStreamReader;	$r15 := @caughtexception;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error procession stream ");	$r17 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCreateTask: void log(java.lang.String,int)>($r20, 0);	$r21 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r22 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>();	specialinvoke $r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22);	throw $r21
;block_num 2