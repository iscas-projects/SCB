(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3473 0)
(declare-sort var2780 0)
(declare-sort var1901 0)
(declare-sort var3053 0)
(declare-sort var3607 0)
(declare-sort var1394 0)
(declare-sort var1859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var3053) Bool)
(declare-fun cast-from-var3473-to-var3053 (var3473) var3053)
(declare-fun var3607-init () var3607)
(declare-fun getConfig/-1194828243 (var3053) var1394)
(declare-fun descriptorDir/2019956101 (var1394) var3607)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3607 var3607 String) void)
(declare-fun exists/1072868559 (var3607) Bool)
(declare-fun put/1981026245 (var2780 var1859 var1859) var1859)
(declare-fun cast-from-String-to-var1859 (String) var1859)
(declare-fun cast-from-var3607-to-var1859 (var3607) var1859)
(declare-const null-var3473 var3473)
(declare-const null-var2780 var2780)
(declare-const null-String String)
(declare-const var1159 var3473) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool 
(assert (not (= var1159 null-var3473)))
(declare-const var2149 var2780) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var2149 null-var2780)))
(declare-const var2739 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2739 null-String)))
(assert true)
(define-const var936 Bool (usingBaseJarName/-2133246527 (cast-from-var3473-to-var3053 var1159))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r15 = r1 
(assert (not (= (ite var936 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1977 String "") ; Statement: $r15 = "" 
 ; Statement: goto [?= $r2 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var2532 var3607 var3607-init) ; Statement: $r2 = new java.io.File 
(assert true)
(define-const var115 var1394 (getConfig/-1194828243 (cast-from-var3473-to-var3053 var1159))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1240 var3607 (descriptorDir/2019956101 var115)) ; Statement: $r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var858 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var858)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var858!1 String)
(assert (= var858!1 ""))
(assert true)
(define-const var3299 String (append/672562846 var858!1 var1977)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var858!2 String)
(assert (= var858!2 (str.++ var858!1 var1977)))
(assert true)
(define-const var3085 String (append/672562846 var3299 "orion-ejb-jar.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml") 
(declare-const var3299!1 String)
(assert (= var3299!1 (str.++ var3299 "orion-ejb-jar.xml")))
(assert true)
(define-const var3856 String (toString/-2075883882 var3085)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2532 var1240 var3856)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8) 

(declare-const var2532!1 var3607)
(declare-const var1240!1 var3607)
(declare-const var3856!1 String)
(assert true)
(define-const var3633 Bool (exists/1072868559 var2532!1)) ; Statement: $z1 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (not (= (ite var3633 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var2149 (cast-from-String-to-var1859 "META-INF/orion-ejb-jar.xml") (cast-from-var3607-to-var1859 var2532!1))) ; Statement: virtualinvoke r14.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/orion-ejb-jar.xml", $r2) 

(declare-const var2149!1 var2780)
(declare-const var891 String)
(declare-const var2532!2 var3607)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var3473-to-var3053=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var3607-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1859=([java.lang.String], java.lang.Object), cast-from-var3607-to-var1859=([java.io.File], java.lang.Object)}
; {var3473=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool, var1159=r0, var2780=java.util.Hashtable, var2149=r14, var2739=r1, var1901=null_type, var3053=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var936=$z0, var1977=$r15, var3607=java.io.File, var2532=$r2, var1394=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var115=$r3, var1240=$r5, var858=$r4, var3299=$r6, var3085=$r7, var3856=$r8, var3633=$z1, var1859=java.lang.Object, var891="META-INF/orion-ejb-jar.xml"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool=var3473, r0=var1159, java.util.Hashtable=var2780, r14=var2149, r1=var2739, null_type=var1901, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3053, $z0=var936, $r15=var1977, java.io.File=var3607, $r2=var2532, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1394, $r3=var115, $r5=var1240, $r4=var858, $r6=var3299, $r7=var3085, $r8=var3856, $z1=var3633, java.lang.Object=var1859, "META-INF/orion-ejb-jar.xml"=var891}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r15 = r1;	$r15 = "";	goto [?= $r2 = new java.io.File];	$r2 = new java.io.File;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orion-ejb-jar.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r8);	$z1 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r9 = new java.lang.StringBuilder;	virtualinvoke r14.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/orion-ejb-jar.xml", $r2);	goto [?= return];	return
;block_num 5