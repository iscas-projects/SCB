(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2390 0)
(declare-sort var1584 0)
(declare-sort var2554 0)
(declare-sort var1051 0)
(declare-sort var1458 0)
(declare-sort var2646 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var1051) Bool)
(declare-fun cast-from-var2390-to-var1051 (var2390) var1051)
(declare-fun var1458-init () var1458)
(declare-fun getConfig/-1194828243 (var1051) var2646)
(declare-fun descriptorDir/2019956101 (var2646) var1458)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1458 var1458 String) void)
(declare-fun exists/1072868559 (var1458) Bool)
(declare-fun put/1981026245 (var1584 var582 var582) var582)
(declare-fun cast-from-String-to-var582 (String) var582)
(declare-fun cast-from-var1458-to-var582 (var1458) var582)
(declare-const null-var2390 var2390)
(declare-const null-var1584 var1584)
(declare-const null-String String)
(declare-const var1811 var2390) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool 
(assert (not (= var1811 null-var2390)))
(declare-const var3403 var1584) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var3403 null-var1584)))
(declare-const var1684 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1684 null-String)))
(assert true)
(define-const var1663 Bool (usingBaseJarName/-2133246527 (cast-from-var2390-to-var1051 var1811))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r15 = r1 
(assert (= (ite var1663 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3988 String var1684) ; Statement: $r15 = r1 
(assert true) ; Non Conditional
(define-const var2879 var1458 var1458-init) ; Statement: $r2 = new java.io.File 
(assert true)
(define-const var1258 var2646 (getConfig/-1194828243 (cast-from-var2390-to-var1051 var1811))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3633 var1458 (descriptorDir/2019956101 var1258)) ; Statement: $r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2783 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2783)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2783!1 String)
(assert (= var2783!1 ""))
(assert true)
(define-const var2334 String (append/672562846 var2783!1 var3988)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2783!2 String)
(assert (= var2783!2 (str.++ var2783!1 var3988)))
(assert true)
(define-const var2407 String (append/672562846 var2334 "orion-ejb-jar.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml") 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 "orion-ejb-jar.xml")))
(assert true)
(define-const var890 String (toString/-2075883882 var2407)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2879 var3633 var890)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8) 

(declare-const var2879!1 var1458)
(declare-const var3633!1 var1458)
(declare-const var890!1 String)
(assert true)
(define-const var3933 Bool (exists/1072868559 var2879!1)) ; Statement: $z1 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (not (= (ite var3933 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var3403 (cast-from-String-to-var582 "META-INF/orion-ejb-jar.xml") (cast-from-var1458-to-var582 var2879!1))) ; Statement: virtualinvoke r14.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/orion-ejb-jar.xml", $r2) 

(declare-const var3403!1 var1584)
(declare-const var2865 String)
(declare-const var2879!2 var1458)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var2390-to-var1051=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var1458-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var582=([java.lang.String], java.lang.Object), cast-from-var1458-to-var582=([java.io.File], java.lang.Object)}
; {var2390=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool, var1811=r0, var1584=java.util.Hashtable, var3403=r14, var1684=r1, var2554=null_type, var1051=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1663=$z0, var3988=$r15, var1458=java.io.File, var2879=$r2, var2646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1258=$r3, var3633=$r5, var2783=$r4, var2334=$r6, var2407=$r7, var890=$r8, var3933=$z1, var582=java.lang.Object, var2865="META-INF/orion-ejb-jar.xml"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool=var2390, r0=var1811, java.util.Hashtable=var1584, r14=var3403, r1=var1684, null_type=var2554, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1051, $z0=var1663, $r15=var3988, java.io.File=var1458, $r2=var2879, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2646, $r3=var1258, $r5=var3633, $r4=var2783, $r6=var2334, $r7=var2407, $r8=var890, $z1=var3933, java.lang.Object=var582, "META-INF/orion-ejb-jar.xml"=var2865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r15 = r1;	$r15 = r1;	$r2 = new java.io.File;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8);	$z1 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r9 = new java.lang.StringBuilder;	virtualinvoke r14.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/orion-ejb-jar.xml", $r2);	goto [?= return];	return
;block_num 5