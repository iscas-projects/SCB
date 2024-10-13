(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var226 0)
(declare-sort var2493 0)
(declare-sort var850 0)
(declare-sort var2785 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDestDir/-2104074573 (var2785) var850)
(declare-fun cast-from-var226-to-var2785 (var226) var2785)
(declare-fun var850-init () var850)
(declare-fun getParent/-1226843089 (var226) var1874)
(declare-fun getDestdir/-1145869429 (var1874) var850)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jarSuffix/1591354929 (var226) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var850 var850 String) void)
(declare-const null-var226 var226)
(declare-const null-String String)
(declare-const null-var850 var850)
(declare-const var2385 var226) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool 
(assert (not (= var2385 null-var226)))
(declare-const var2441 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2441 null-String)))
(assert true)
(define-const var3590 var850 (getDestDir/-2104074573 (cast-from-var226-to-var2785 var2385))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
 ; Statement: if $r1 != null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
(assert (not (= var3590 null-var850))) ; Cond: $r1 != null 
(assert true)
(define-const var458 var850 (getDestDir/-2104074573 (cast-from-var226-to-var2785 var2385))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
 ; Statement: if $r2 != null goto $r3 = new java.io.File 
(assert (not (not (= var458 null-var850)))) ; Negate: Cond: $r2 != null  
(define-const var65 var850 var850-init) ; Statement: $r11 = new java.io.File 
(assert true)
(define-const var2601 var1874 (getParent/-1226843089 var2385)) ; Statement: $r12 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar getParent()>() 
(assert true)
(define-const var714 var850 (getDestdir/-1145869429 var2601)) ; Statement: $r18 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: java.io.File getDestdir()>() 
(define-const var2786 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2786)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2786!1 String)
(assert (= var2786!1 ""))
(assert true)
(define-const var3927 String (append/672562846 var2786!1 var2441)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 var2441)))
(define-const var2064 String (jarSuffix/1591354929 var2385)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.lang.String jarSuffix> 
(assert true)
(define-const var193 String (append/672562846 var3927 var2064)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3927!1 String)
(assert (= var3927!1 (str.++ var3927 var2064)))
(assert true)
(define-const var2505 String (toString/-2075883882 var193)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var65 var714 var2505)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r18, $r17) 

(declare-const var65!1 var850)
(declare-const var714!1 var850)
(declare-const var2505!1 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var226-to-var2785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var850-init=([], java.io.File), getParent/-1226843089=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar), getDestdir/-1145869429=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jarSuffix/1591354929=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var226=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool, var2385=r0, var2441=r5, var2493=null_type, var850=java.io.File, var2785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3590=$r1, var458=$r2, var65=$r11, var1874=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar, var2601=$r12, var714=$r18, var2786=$r13, var3927=$r15, var2064=$r14, var193=$r16, var2505=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool=var226, r0=var2385, r5=var2441, null_type=var2493, java.io.File=var850, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2785, $r1=var3590, $r2=var458, $r11=var65, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar=var1874, $r12=var2601, $r18=var714, $r13=var2786, $r15=var3927, $r14=var2064, $r16=var193, $r17=var2505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool;	r5 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	if $r1 != null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	if $r2 != null goto $r3 = new java.io.File;	$r11 = new java.io.File;	$r12 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar getParent()>();	$r18 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: java.io.File getDestdir()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.lang.String jarSuffix>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r18, $r17);	return $r11
;block_num 3