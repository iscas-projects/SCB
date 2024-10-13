(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1517 0)
(declare-sort var1568 0)
(declare-sort var3337 0)
(declare-sort var1624 0)
(declare-sort var271 0)
(declare-sort var3916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var1624) Bool)
(declare-fun cast-from-var1517-to-var1624 (var1517) var1624)
(declare-fun var271-init () var271)
(declare-fun getConfig/-1194828243 (var1624) var3916)
(declare-fun descriptorDir/2019956101 (var3916) var271)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var271 var271 String) void)
(declare-fun exists/1072868559 (var271) Bool)
(declare-fun getPath/-1385219261 (var271) String)
(declare-fun log/1006881114 (var1624 String Int) void)
(declare-const null-var1517 var1517)
(declare-const null-var1568 var1568)
(declare-const null-String String)
(declare-const var556 var1517) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool 
(assert (not (= var556 null-var1517)))
(declare-const var1626 var1568) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var1626 null-var1568)))
(declare-const var2278 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2278 null-String)))
(assert true)
(define-const var677 Bool (usingBaseJarName/-2133246527 (cast-from-var1517-to-var1624 var556))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r15 = r1 
(assert (not (= (ite var677 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3660 String "") ; Statement: $r15 = "" 
 ; Statement: goto [?= $r2 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var1762 var271 var271-init) ; Statement: $r2 = new java.io.File 
(assert true)
(define-const var2842 var3916 (getConfig/-1194828243 (cast-from-var1517-to-var1624 var556))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2765 var271 (descriptorDir/2019956101 var2842)) ; Statement: $r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3563 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3563)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3563!1 String)
(assert (= var3563!1 ""))
(assert true)
(define-const var1217 String (append/672562846 var3563!1 var3660)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3563!2 String)
(assert (= var3563!2 (str.++ var3563!1 var3660)))
(assert true)
(define-const var3452 String (append/672562846 var1217 "orion-ejb-jar.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml") 
(declare-const var1217!1 String)
(assert (= var1217!1 (str.++ var1217 "orion-ejb-jar.xml")))
(assert true)
(define-const var768 String (toString/-2075883882 var3452)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1762 var2765 var768)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8) 

(declare-const var1762!1 var271)
(declare-const var2765!1 var271)
(declare-const var768!1 String)
(assert true)
(define-const var3913 Bool (exists/1072868559 var1762!1)) ; Statement: $z1 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var3913 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1990 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1990)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1990!1 String)
(assert (= var1990!1 ""))
(assert true)
(define-const var2200 String (append/672562846 var1990!1 "Unable to locate Orion deployment descriptor. It was expected to be in ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Orion deployment descriptor. It was expected to be in ") 
(declare-const var1990!2 String)
(assert (= var1990!2 (str.++ var1990!1 "Unable to locate Orion deployment descriptor. It was expected to be in ")))
(assert true)
(define-const var450 String (getPath/-1385219261 var1762!1)) ; Statement: $r10 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1341 String (append/672562846 var2200 var450)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2200!1 String)
(assert (= var2200!1 (str.++ var2200 var450)))
(assert true)
(define-const var2468 String (toString/-2075883882 var1341)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1517-to-var1624 var556) var2468 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: void log(java.lang.String,int)>($r13, 1) 

(declare-const var556!1 var1517)
(declare-const var2468!1 String)
(declare-const var3299 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var1517-to-var1624=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var271-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var1517=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool, var556=r0, var1568=java.util.Hashtable, var1626=r14, var2278=r1, var3337=null_type, var1624=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var677=$z0, var3660=$r15, var271=java.io.File, var1762=$r2, var3916=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var2842=$r3, var2765=$r5, var3563=$r4, var1217=$r6, var3452=$r7, var768=$r8, var3913=$z1, var1990=$r9, var2200=$r11, var450=$r10, var1341=$r12, var2468=$r13, var3299=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool=var1517, r0=var556, java.util.Hashtable=var1568, r14=var1626, r1=var2278, null_type=var3337, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1624, $z0=var677, $r15=var3660, java.io.File=var271, $r2=var1762, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var3916, $r3=var2842, $r5=var2765, $r4=var3563, $r6=var1217, $r7=var3452, $r8=var768, $z1=var3913, $r9=var1990, $r11=var2200, $r10=var450, $r12=var1341, $r13=var2468, 1=var3299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r15 = r1;	$r15 = "";	goto [?= $r2 = new java.io.File];	$r2 = new java.io.File;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8);	$z1 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Orion deployment descriptor. It was expected to be in ");	$r10 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: void log(java.lang.String,int)>($r13, 1);	return
;block_num 5