(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3981 0)
(declare-sort var2393 0)
(declare-sort var427 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDestDir/-2104074573 (var2708) var427)
(declare-fun cast-from-var3981-to-var2708 (var3981) var2708)
(declare-fun var427-init () var427)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jarSuffix/1591354929 (var3981) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var427 var427 String) void)
(declare-const null-var3981 var3981)
(declare-const null-String String)
(declare-const null-var427 var427)
(declare-const var3495 var3981) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool 
(assert (not (= var3495 null-var3981)))
(declare-const var891 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var891 null-String)))
(assert true)
(define-const var920 var427 (getDestDir/-2104074573 (cast-from-var3981-to-var2708 var3495))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
 ; Statement: if $r1 != null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
(assert (not (= var920 null-var427))) ; Cond: $r1 != null 
(assert true)
(define-const var608 var427 (getDestDir/-2104074573 (cast-from-var3981-to-var2708 var3495))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
 ; Statement: if $r2 != null goto $r3 = new java.io.File 
(assert (not (= var608 null-var427))) ; Cond: $r2 != null 
(define-const var2388 var427 var427-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var57 var427 (getDestDir/-2104074573 (cast-from-var3981-to-var2708 var3495))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>() 
(define-const var3311 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var3311!1 var891)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var891)))
(define-const var3520 String (jarSuffix/1591354929 var3495)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.lang.String jarSuffix> 
(assert true)
(define-const var3881 String (append/672562846 var2712 var3520)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 var3520)))
(assert true)
(define-const var3408 String (toString/-2075883882 var3881)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2388 var57 var3408)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r10, $r9) 

(declare-const var2388!1 var427)
(declare-const var57!1 var427)
(declare-const var3408!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var3981-to-var2708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var427-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jarSuffix/1591354929=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3981=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool, var3495=r0, var891=r5, var2393=null_type, var427=java.io.File, var2708=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var920=$r1, var608=$r2, var2388=$r3, var57=$r10, var3311=$r4, var2712=$r7, var3520=$r6, var3881=$r8, var3408=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool=var3981, r0=var3495, r5=var891, null_type=var2393, java.io.File=var427, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2708, $r1=var920, $r2=var608, $r3=var2388, $r10=var57, $r4=var3311, $r7=var2712, $r6=var3520, $r8=var3881, $r9=var3408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool;	r5 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	if $r1 != null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	if $r2 != null goto $r3 = new java.io.File;	$r3 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.io.File getDestDir()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: java.lang.String jarSuffix>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r10, $r9);	return $r3
;block_num 3