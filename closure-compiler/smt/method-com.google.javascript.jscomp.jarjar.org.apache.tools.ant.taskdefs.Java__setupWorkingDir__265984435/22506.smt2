(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var2070 0)
(declare-sort var1813 0)
(declare-sort var1206 0)
(declare-sort var2948 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dir/-951898754 (var165) var1813)
(declare-fun isDirectory/-2122094196 (var1813) Bool)
(declare-fun var1206-init () var1206)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAbsolutePath/-802773300 (var1813) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2619) var2948)
(declare-fun cast-from-var165-to-var2619 (var165) var2619)
(declare-fun <init>/-469549130 (var1206 String var2948) void)
(declare-const null-var165 var165)
(declare-const null-var2070 var2070)
(declare-const null-var1813 var1813)
(declare-const var227 var165) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java 
(assert (not (= var227 null-var165)))
(declare-const var3374 var2070) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute 
(assert (not (= var3374 null-var2070)))
(define-const var3677 var1813 (dir/-951898754 var227)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert (not (= var3677 null-var1813))) ; Cond: $r1 != null 
(define-const var2363 var1813 (dir/-951898754 var227)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert true)
(define-const var2072 Bool (isDirectory/-2122094196 var2363)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert (not (not (= (ite var2072 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1098 var1206 var1206-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1617 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1617)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1617!1 String)
(assert (= var1617!1 ""))
(define-const var1768 var1813 (dir/-951898754 var227)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert true)
(define-const var2282 String (getAbsolutePath/-802773300 var1768)) ; Statement: $r8 = virtualinvoke $r7.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3008 String (append/672562846 var1617!1 var2282)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1617!2 String)
(assert (= var1617!2 (str.++ var1617!1 var2282)))
(assert true)
(define-const var3550 String (append/672562846 var3008 " is not a valid directory")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid directory") 
(declare-const var3008!1 String)
(assert (= var3008!1 (str.++ var3008 " is not a valid directory")))
(assert true)
(define-const var1890 String (toString/-2075883882 var3550)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1926 var2948 (getLocation/851674571 (cast-from-var165-to-var2619 var227))) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1098 var1890 var1926)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11) 

(declare-const var1098!1 var1206)
(declare-const var1890!1 String)
(declare-const var1926!1 var2948)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {dir/-951898754=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java], java.io.File), isDirectory/-2122094196=([java.io.File], boolean), var1206-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var165-to-var2619=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var165=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java, var227=r0, var2070=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var3374=r3, var1813=java.io.File, var3677=$r1, var2363=$r2, var2072=$z0, var1206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1098=$r5, var1617=$r6, var1768=$r7, var2282=$r8, var3008=$r9, var3550=$r10, var1890=$r12, var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1926=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java=var165, r0=var227, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var2070, r3=var3374, java.io.File=var1813, $r1=var3677, $r2=var2363, $z0=var2072, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1206, $r5=var1098, $r6=var1617, $r7=var1768, $r8=var2282, $r9=var3008, $r10=var3550, $r12=var1890, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2948, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2619, $r11=var1926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>();	if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$r8 = virtualinvoke $r7.<java.io.File: java.lang.String getAbsolutePath()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid directory");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11);	throw $r5
;block_num 3