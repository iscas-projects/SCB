(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var1697 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1814-init () var1814)
(declare-fun destDir/-208040463 (var3271) var1814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun genericJarSuffix/-208040463 (var3271) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1814 var1814 String) void)
(declare-const null-var3271 var3271)
(declare-const null-String String)
(declare-const var490 var3271) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var490 null-var3271)))
(declare-const var2931 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2931 null-String)))
(define-const var3250 var1814 var1814-init) ; Statement: $r0 = new java.io.File 
(define-const var2389 var1814 (destDir/-208040463 var490)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.io.File destDir> 
(define-const var3307 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3307)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3307!1 String)
(assert (= var3307!1 ""))
(assert true)
(define-const var3954 String (append/672562846 var3307!1 var2931)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3307!2 String)
(assert (= var3307!2 (str.++ var3307!1 var2931)))
(define-const var3573 String (genericJarSuffix/-208040463 var490)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.lang.String genericJarSuffix> 
(assert true)
(define-const var2097 String (append/672562846 var3954 var3573)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3954!1 String)
(assert (= var3954!1 (str.++ var3954 var3573)))
(assert true)
(define-const var61 String (toString/-2075883882 var2097)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3250 var2389 var61)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r8) 

(declare-const var3250!1 var1814)
(declare-const var2389!1 var1814)
(declare-const var61!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1814-init=([], java.io.File), destDir/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), genericJarSuffix/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var490=r1, var2931=r4, var1697=null_type, var1814=java.io.File, var3250=$r0, var2389=$r3, var3307=$r2, var3954=$r6, var3573=$r5, var2097=$r7, var61=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3271, r1=var490, r4=var2931, null_type=var1697, java.io.File=var1814, $r0=var3250, $r3=var2389, $r2=var3307, $r6=var3954, $r5=var3573, $r7=var2097, $r8=var61}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r4 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.io.File destDir>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.lang.String genericJarSuffix>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r8);	return $r0
;block_num 1