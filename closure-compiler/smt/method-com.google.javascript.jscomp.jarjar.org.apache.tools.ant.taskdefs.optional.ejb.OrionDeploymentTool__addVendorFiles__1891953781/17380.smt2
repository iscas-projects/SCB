(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var828 0)
(declare-sort var2760 0)
(declare-sort var2491 0)
(declare-sort var3903 0)
(declare-sort var2679 0)
(declare-sort var694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var3903) Bool)
(declare-fun cast-from-var828-to-var3903 (var828) var3903)
(declare-fun var2679-init () var2679)
(declare-fun getConfig/-1194828243 (var3903) var694)
(declare-fun descriptorDir/2019956101 (var694) var2679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2679 var2679 String) void)
(declare-fun exists/1072868559 (var2679) Bool)
(declare-fun getPath/-1385219261 (var2679) String)
(declare-fun log/1006881114 (var3903 String Int) void)
(declare-const null-var828 var828)
(declare-const null-var2760 var2760)
(declare-const null-String String)
(declare-const var2018 var828) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool 
(assert (not (= var2018 null-var828)))
(declare-const var169 var2760) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var169 null-var2760)))
(declare-const var1917 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1917 null-String)))
(assert true)
(define-const var2572 Bool (usingBaseJarName/-2133246527 (cast-from-var828-to-var3903 var2018))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r15 = r1 
(assert (= (ite var2572 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1415 String var1917) ; Statement: $r15 = r1 
(assert true) ; Non Conditional
(define-const var3986 var2679 var2679-init) ; Statement: $r2 = new java.io.File 
(assert true)
(define-const var3200 var694 (getConfig/-1194828243 (cast-from-var828-to-var3903 var2018))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2311 var2679 (descriptorDir/2019956101 var3200)) ; Statement: $r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2287 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2287)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2287!1 String)
(assert (= var2287!1 ""))
(assert true)
(define-const var1406 String (append/672562846 var2287!1 var1415)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2287!2 String)
(assert (= var2287!2 (str.++ var2287!1 var1415)))
(assert true)
(define-const var3222 String (append/672562846 var1406 "orion-ejb-jar.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml") 
(declare-const var1406!1 String)
(assert (= var1406!1 (str.++ var1406 "orion-ejb-jar.xml")))
(assert true)
(define-const var1665 String (toString/-2075883882 var3222)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3986 var2311 var1665)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8) 

(declare-const var3986!1 var2679)
(declare-const var2311!1 var2679)
(declare-const var1665!1 String)
(assert true)
(define-const var2227 Bool (exists/1072868559 var3986!1)) ; Statement: $z1 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var2227 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3515 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3515)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3515!1 String)
(assert (= var3515!1 ""))
(assert true)
(define-const var277 String (append/672562846 var3515!1 "Unable to locate Orion deployment descriptor. It was expected to be in ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Orion deployment descriptor. It was expected to be in ") 
(declare-const var3515!2 String)
(assert (= var3515!2 (str.++ var3515!1 "Unable to locate Orion deployment descriptor. It was expected to be in ")))
(assert true)
(define-const var579 String (getPath/-1385219261 var3986!1)) ; Statement: $r10 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3652 String (append/672562846 var277 var579)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var277!1 String)
(assert (= var277!1 (str.++ var277 var579)))
(assert true)
(define-const var1153 String (toString/-2075883882 var3652)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var828-to-var3903 var2018) var1153 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: void log(java.lang.String,int)>($r13, 1) 

(declare-const var2018!1 var828)
(declare-const var1153!1 String)
(declare-const var686 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var828-to-var3903=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var2679-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var828=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool, var2018=r0, var2760=java.util.Hashtable, var169=r14, var1917=r1, var2491=null_type, var3903=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2572=$z0, var1415=$r15, var2679=java.io.File, var3986=$r2, var694=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3200=$r3, var2311=$r5, var2287=$r4, var1406=$r6, var3222=$r7, var1665=$r8, var2227=$z1, var3515=$r9, var277=$r11, var579=$r10, var3652=$r12, var1153=$r13, var686=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool=var828, r0=var2018, java.util.Hashtable=var2760, r14=var169, r1=var1917, null_type=var2491, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3903, $z0=var2572, $r15=var1415, java.io.File=var2679, $r2=var3986, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var694, $r3=var3200, $r5=var2311, $r4=var2287, $r6=var1406, $r7=var3222, $r8=var1665, $z1=var2227, $r9=var3515, $r11=var277, $r10=var579, $r12=var3652, $r13=var1153, 1=var686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r15 = r1;	$r15 = r1;	$r2 = new java.io.File;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8);	$z1 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Orion deployment descriptor. It was expected to be in ");	$r10 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: void log(java.lang.String,int)>($r13, 1);	return
;block_num 5