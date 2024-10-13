(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort var2611 0)
(declare-sort var3420 0)
(declare-sort var841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3420-init () var3420)
(declare-fun getConfig/-1194828243 (var2536) var841)
(declare-fun descriptorDir/2019956101 (var841) var3420)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3420 var3420 String) void)
(declare-fun exists/1072868559 (var3420) Bool)
(declare-const null-var2536 var2536)
(declare-const null-String String)
(declare-const var326 var2536) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var326 null-var2536)))
(declare-const var2829 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2829 null-String)))
(define-const var1260 var3420 var3420-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var1154 var841 (getConfig/-1194828243 var326)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2427 var3420 (descriptorDir/2019956101 var1154)) ; Statement: $r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1021 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1021)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1021!1 String)
(assert (= var1021!1 ""))
(assert true)
(define-const var389 String (append/672562846 var1021!1 var2829)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1021!2 String)
(assert (= var1021!2 (str.++ var1021!1 var2829)))
(assert true)
(define-const var1926 String (append/672562846 var389 "manifest.mf")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("manifest.mf") 
(declare-const var389!1 String)
(assert (= var389!1 (str.++ var389 "manifest.mf")))
(assert true)
(define-const var2691 String (toString/-2075883882 var1926)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1260 var2427 var2691)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8) 

(declare-const var1260!1 var3420)
(declare-const var2427!1 var3420)
(declare-const var2691!1 String)
(assert true)
(define-const var2204 Bool (exists/1072868559 var1260!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(assert (not (= (ite var2204 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3420-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean)}
; {var2536=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var326=r1, var2829=r5, var2611=null_type, var3420=java.io.File, var1260=$r0, var841=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1154=$r2, var2427=$r4, var1021=$r3, var389=$r6, var1926=$r7, var2691=$r8, var2204=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2536, r1=var326, r5=var2829, null_type=var2611, java.io.File=var3420, $r0=var1260, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var841, $r2=var1154, $r4=var2427, $r3=var1021, $r6=var389, $r7=var1926, $r8=var2691, $z0=var2204}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r5 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("manifest.mf");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	return $r0
;block_num 2