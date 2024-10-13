(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var2989 0)
(declare-sort var1363 0)
(declare-sort var1488 0)
(declare-sort var255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2989-init () var2989)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTaskName/237633316 (var1363) String)
(declare-fun cast-from-var3483-to-var1363 (var3483) var1363)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var255) var1488)
(declare-fun cast-from-var3483-to-var255 (var3483) var255)
(declare-fun <init>/-469549130 (var2989 String var1488) void)
(declare-const null-var3483 var3483)
(declare-const null-Bool Bool)
(declare-const var998 var3483) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar 
(assert (not (= var998 null-var3483)))
(declare-const var673 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var673 null-Bool)))
(define-const var2550 var2989 var2989-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1931 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1931)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1931!1 String)
(assert (= var1931!1 ""))
(assert true)
(define-const var2039 String (append/672562846 var1931!1 "The ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var1931!2 String)
(assert (= var1931!2 (str.++ var1931!1 "The ")))
(assert true)
(define-const var3514 String (getTaskName/237633316 (cast-from-var3483-to-var1363 var998))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: java.lang.String getTaskName()>() 
(assert true)
(define-const var1755 String (append/672562846 var2039 var3514)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2039!1 String)
(assert (= var2039!1 (str.++ var2039 var3514)))
(assert true)
(define-const var927 String (append/672562846 var1755 " task doesn\u0027t support the encoding attribute")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" task doesn\'t support the encoding attribute") 
(declare-const var1755!1 String)
(assert (= var1755!1 (str.++ var1755 " task doesn\u0027t support the encoding attribute")))
(assert true)
(define-const var73 String (toString/-2075883882 var927)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3385 var1488 (getLocation/851674571 (cast-from-var3483-to-var255 var998))) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2550 var73 var3385)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r7) 

(declare-const var2550!1 var2989)
(declare-const var73!1 String)
(declare-const var3385!1 var1488)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2989-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3483-to-var1363=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3483-to-var255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar, var998=r2, var673=z0, var2989=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2550=$r0, var1931=$r1, var2039=$r4, var1363=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3514=$r3, var1755=$r5, var927=$r6, var73=$r8, var1488=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var255=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3385=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar=var3483, r2=var998, z0=var673, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2989, $r0=var2550, $r1=var1931, $r4=var2039, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1363, $r3=var3514, $r5=var1755, $r6=var927, $r8=var73, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1488, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var255, $r7=var3385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: java.lang.String getTaskName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" task doesn\'t support the encoding attribute");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r7);	throw $r0
;block_num 1