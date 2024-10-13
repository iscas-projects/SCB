(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var1059 0)
(declare-sort var2328 0)
(declare-sort var514 0)
(declare-sort var1996 0)
(declare-sort var184 0)
(declare-sort var3218 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var514-init () var514)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1996) String)
(declare-fun cast-from-var1059-to-var1996 (var1059) var1996)
(declare-fun getMessage/849299655 (var184) String)
(declare-fun cast-from-var2328-to-var184 (var2328) var184)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var117) var3218)
(declare-fun cast-from-var743-to-var117 (var743) var117)
(declare-fun <init>/1933136886 (var514 String var184 var3218) void)
(declare-const null-var743 var743)
(declare-const null-var1059 var1059)
(declare-const null-Bool Bool)
(declare-const null-var2328 var2328)
(declare-const var1614 var743) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move 
(assert (not (= var1614 null-var743)))
(declare-const var3853 var1059) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var3853 null-var1059)))
(declare-const var3348 var1059) ; Statement: r5 := @parameter1: java.io.File 
(assert (not (= var3348 null-var1059)))
(declare-const var1962 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1962 null-Bool)))
(declare-const var634 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var634 null-Bool)))
(define-const var2142 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var653 var2328) ; Statement: $r13 := @caughtexception 
(assert (not (= var653 null-var2328)))
(define-const var1294 var514 var514-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3485 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3485)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3485!1 String)
(assert (= var3485!1 ""))
(assert true)
(define-const var911 String (append/672562846 var3485!1 "Failed to rename ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to rename ") 
(declare-const var3485!2 String)
(assert (= var3485!2 (str.++ var3485!1 "Failed to rename ")))
(assert true)
(define-const var99 String (append/-1031950772 var911 (cast-from-var1059-to-var1996 var3853))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var911!1 String)
(assert (str.prefixof var911 var911!1))
(assert true)
(define-const var2842 String (append/672562846 var99 " to ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var99!1 String)
(assert (= var99!1 (str.++ var99 " to ")))
(assert true)
(define-const var35 String (append/-1031950772 var2842 (cast-from-var1059-to-var1996 var3348))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2842!1 String)
(assert (str.prefixof var2842 var2842!1))
(assert true)
(define-const var776 String (append/672562846 var35 " due to ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ") 
(declare-const var35!1 String)
(assert (= var35!1 (str.++ var35 " due to ")))
(assert true)
(define-const var3425 String (getMessage/849299655 (cast-from-var2328-to-var184 var653))) ; Statement: $r20 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var768 String (append/672562846 var776 var3425)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var776!1 String)
(assert (= var776!1 (str.++ var776 var3425)))
(assert true)
(define-const var3576 String (toString/-2075883882 var768)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var765 var3218 (getLocation/851674571 (cast-from-var743-to-var117 var1614))) ; Statement: $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var1294 var3576 (cast-from-var2328-to-var184 var653) var765)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r24, $r13, $r23) 

(declare-const var1294!1 var514)
(declare-const var3576!1 String)
(declare-const var653!1 var2328)
(declare-const var765!1 var3218)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var514-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1059-to-var1996=([java.io.File], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2328-to-var184=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var743-to-var117=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var743=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move, var1614=r0, var1059=java.io.File, var3853=r2, var3348=r5, var1962=z0, var634=z2, var2142=$r1, var2328=java.io.IOException, var653=$r13, var514=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1294=$r14, var3485=$r15, var911=$r16, var1996=java.lang.Object, var99=$r17, var2842=$r18, var35=$r19, var776=$r21, var184=java.lang.Throwable, var3425=$r20, var768=$r22, var3576=$r24, var3218=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var117=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var765=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move=var743, r0=var1614, java.io.File=var1059, r2=var3853, r5=var3348, z0=var1962, z2=var634, $r1=var2142, java.io.IOException=var2328, $r13=var653, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var514, $r14=var1294, $r15=var3485, $r16=var911, java.lang.Object=var1996, $r17=var99, $r18=var2842, $r19=var35, $r21=var776, java.lang.Throwable=var184, $r20=var3425, $r22=var768, $r24=var3576, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3218, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var117, $r23=var765}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move;	r2 := @parameter0: java.io.File;	r5 := @parameter1: java.io.File;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	$r1 = new java.lang.StringBuilder;	$r13 := @caughtexception;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to rename ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ");	$r20 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r24, $r13, $r23);	throw $r14
;block_num 2