(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2748 0)
(declare-sort var902 0)
(declare-sort var2238 0)
(declare-sort var362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2238-init () var2238)
(declare-fun getDestDir/-2104074573 (var362) var2238)
(declare-fun cast-from-var2748-to-var362 (var2748) var362)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jarSuffix/-1107109494 (var2748) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2238 var2238 String) void)
(declare-const null-var2748 var2748)
(declare-const null-String String)
(declare-const var1154 var2748) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var1154 null-var2748)))
(declare-const var1422 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1422 null-String)))
(define-const var2064 var2238 var2238-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var1809 var2238 (getDestDir/-2104074573 (cast-from-var2748-to-var362 var1154))) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: java.io.File getDestDir()>() 
(define-const var1733 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1733)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1733!1 String)
(assert (= var1733!1 ""))
(assert true)
(define-const var2494 String (append/672562846 var1733!1 var1422)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1733!2 String)
(assert (= var1733!2 (str.++ var1733!1 var1422)))
(define-const var1482 String (jarSuffix/-1107109494 var1154)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: java.lang.String jarSuffix> 
(assert true)
(define-const var1711 String (append/672562846 var2494 var1482)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2494!1 String)
(assert (= var2494!1 (str.++ var2494 var1482)))
(assert true)
(define-const var1223 String (toString/-2075883882 var1711)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2064 var1809 var1223)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7) 

(declare-const var2064!1 var2238)
(declare-const var1809!1 var2238)
(declare-const var1223!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2238-init=([], java.io.File), getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var2748-to-var362=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jarSuffix/-1107109494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var2748=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var1154=r1, var1422=r3, var902=null_type, var2238=java.io.File, var2064=$r0, var362=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1809=$r8, var1733=$r2, var2494=$r5, var1482=$r4, var1711=$r6, var1223=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var2748, r1=var1154, r3=var1422, null_type=var902, java.io.File=var2238, $r0=var2064, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var362, $r8=var1809, $r2=var1733, $r5=var2494, $r4=var1482, $r6=var1711, $r7=var1223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r3 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: java.io.File getDestDir()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: java.lang.String jarSuffix>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7);	return $r0
;block_num 1