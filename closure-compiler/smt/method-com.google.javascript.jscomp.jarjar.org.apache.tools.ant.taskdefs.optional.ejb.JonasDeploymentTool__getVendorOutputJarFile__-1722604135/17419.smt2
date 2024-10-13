(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2541 0)
(declare-sort var2869 0)
(declare-sort var74 0)
(declare-sort var119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var74-init () var74)
(declare-fun getDestDir/-2104074573 (var119) var74)
(declare-fun cast-from-var2541-to-var119 (var2541) var119)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun suffix/760687125 (var2541) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var74 var74 String) void)
(declare-const null-var2541 var2541)
(declare-const null-String String)
(declare-const var124 var2541) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var124 null-var2541)))
(declare-const var689 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var689 null-String)))
(define-const var1070 var74 var74-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var2416 var74 (getDestDir/-2104074573 (cast-from-var2541-to-var119 var124))) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File getDestDir()>() 
(define-const var3648 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3648)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3648!1 String)
(assert (= var3648!1 ""))
(assert true)
(define-const var2680 String (append/672562846 var3648!1 var689)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3648!2 String)
(assert (= var3648!2 (str.++ var3648!1 var689)))
(define-const var283 String (suffix/760687125 var124)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String suffix> 
(assert true)
(define-const var1524 String (append/672562846 var2680 var283)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 var283)))
(assert true)
(define-const var836 String (toString/-2075883882 var1524)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1070 var2416 var836)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7) 

(declare-const var1070!1 var74)
(declare-const var2416!1 var74)
(declare-const var836!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var74-init=([], java.io.File), getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var2541-to-var119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), suffix/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var2541=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var124=r1, var689=r3, var2869=null_type, var74=java.io.File, var1070=$r0, var119=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2416=$r8, var3648=$r2, var2680=$r5, var283=$r4, var1524=$r6, var836=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var2541, r1=var124, r3=var689, null_type=var2869, java.io.File=var74, $r0=var1070, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var119, $r8=var2416, $r2=var3648, $r5=var2680, $r4=var283, $r6=var1524, $r7=var836}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r3 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File getDestDir()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String suffix>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7);	return $r0
;block_num 1