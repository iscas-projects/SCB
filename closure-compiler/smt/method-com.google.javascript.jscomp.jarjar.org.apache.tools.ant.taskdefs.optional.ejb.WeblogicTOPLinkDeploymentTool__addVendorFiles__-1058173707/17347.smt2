(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2964 0)
(declare-sort var3436 0)
(declare-sort var1695 0)
(declare-sort var1296 0)
(declare-sort var963 0)
(declare-sort var1737 0)
(declare-sort var843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addVendorFiles/-1326110104 (var1296 var3436 String) void)
(declare-fun cast-from-var2964-to-var1296 (var2964) var1296)
(declare-fun var963-init () var963)
(declare-fun getConfig/-1194828243 (var843) var1737)
(declare-fun cast-from-var2964-to-var843 (var2964) var843)
(declare-fun descriptorDir/2019956101 (var1737) var963)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toplinkDescriptor/1521495455 (var2964) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var963 var963 String) void)
(declare-fun exists/1072868559 (var963) Bool)
(declare-fun getPath/-1385219261 (var963) String)
(declare-fun log/1006881114 (var843 String Int) void)
(declare-const null-var2964 var2964)
(declare-const null-var3436 var3436)
(declare-const null-String String)
(declare-const var1549 var2964) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool 
(assert (not (= var1549 null-var2964)))
(declare-const var463 var3436) ; Statement: r1 := @parameter0: java.util.Hashtable 
(assert (not (= var463 null-var3436)))
(declare-const var2117 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2117 null-String)))
(assert true)
;(assert (addVendorFiles/-1326110104 (cast-from-var2964-to-var1296 var1549) var463 var2117)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void addVendorFiles(java.util.Hashtable,java.lang.String)>(r1, r2) 

(declare-const var1549!1 var2964)
(declare-const var463!1 var3436)
(declare-const var2117!1 String)
(define-const var2150 var963 var963-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var3662 var1737 (getConfig/-1194828243 (cast-from-var2964-to-var843 var1549!1))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1452 var963 (descriptorDir/2019956101 var3662)) ; Statement: $r6 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3165 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3165)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3165!1 String)
(assert (= var3165!1 ""))
(assert true)
(define-const var3638 String (append/672562846 var3165!1 var2117!1)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3165!2 String)
(assert (= var3165!2 (str.++ var3165!1 var2117!1)))
(define-const var1374 String (toplinkDescriptor/1521495455 var1549!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor> 
(assert true)
(define-const var1842 String (append/672562846 var3638 var1374)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3638!1 String)
(assert (= var3638!1 (str.++ var3638 var1374)))
(assert true)
(define-const var2431 String (toString/-2075883882 var1842)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2150 var1452 var2431)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r10) 

(declare-const var2150!1 var963)
(declare-const var1452!1 var963)
(declare-const var2431!1 String)
(assert true)
(define-const var816 Bool (exists/1072868559 var2150!1)) ; Statement: $z0 = virtualinvoke $r3.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (= (ite var816 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3691 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3691)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3691!1 String)
(assert (= var3691!1 ""))
(assert true)
(define-const var2639 String (append/672562846 var3691!1 "Unable to locate toplink deployment descriptor. It was expected to be in ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate toplink deployment descriptor. It was expected to be in ") 
(declare-const var3691!2 String)
(assert (= var3691!2 (str.++ var3691!1 "Unable to locate toplink deployment descriptor. It was expected to be in ")))
(assert true)
(define-const var1449 String (getPath/-1385219261 var2150!1)) ; Statement: $r12 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var446 String (append/672562846 var2639 var1449)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2639!1 String)
(assert (= var2639!1 (str.++ var2639 var1449)))
(assert true)
(define-const var2255 String (toString/-2075883882 var446)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2964-to-var843 var1549!1) var2255 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: void log(java.lang.String,int)>($r15, 1) 

(declare-const var1549!2 var2964)
(declare-const var2255!1 String)
(declare-const var3740 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addVendorFiles/-1326110104=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, java.util.Hashtable, java.lang.String], void), cast-from-var2964-to-var1296=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool), var963-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var2964-to-var843=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toplinkDescriptor/1521495455=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var2964=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool, var1549=r0, var3436=java.util.Hashtable, var463=r1, var2117=r2, var1695=null_type, var1296=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, var963=java.io.File, var2150=$r3, var1737=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3662=$r4, var1452=$r6, var3165=$r5, var3638=$r8, var1374=$r7, var1842=$r9, var2431=$r10, var816=$z0, var3691=$r11, var2639=$r13, var1449=$r12, var446=$r14, var2255=$r15, var3740=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool=var2964, r0=var1549, java.util.Hashtable=var3436, r1=var463, r2=var2117, null_type=var1695, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool=var1296, java.io.File=var963, $r3=var2150, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1737, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var843, $r4=var3662, $r6=var1452, $r5=var3165, $r8=var3638, $r7=var1374, $r9=var1842, $r10=var2431, $z0=var816, $r11=var3691, $r13=var2639, $r12=var1449, $r14=var446, $r15=var2255, 1=var3740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool;	r1 := @parameter0: java.util.Hashtable;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void addVendorFiles(java.util.Hashtable,java.lang.String)>(r1, r2);	$r3 = new java.io.File;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r6 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r10);	$z0 = virtualinvoke $r3.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate toplink deployment descriptor. It was expected to be in ");	$r12 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: void log(java.lang.String,int)>($r15, 1);	return
;block_num 3