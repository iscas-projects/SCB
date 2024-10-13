(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1875 0)
(declare-sort var1461 0)
(declare-sort var3062 0)
(declare-sort var3735 0)
(declare-sort var946 0)
(declare-sort var3057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3735-init () var3735)
(declare-fun getConfig/-1194828243 (var3057) var946)
(declare-fun cast-from-var1875-to-var3057 (var1875) var3057)
(declare-fun descriptorDir/2019956101 (var946) var3735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3735 var3735 String) void)
(declare-fun exists/1072868559 (var3735) Bool)
(declare-fun getPath/-1385219261 (var3735) String)
(declare-fun log/1006881114 (var3057 String Int) void)
(declare-const null-var1875 var1875)
(declare-const null-var1461 var1461)
(declare-const null-String String)
(declare-const var3018 var1875) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool 
(assert (not (= var3018 null-var1875)))
(declare-const var3285 var1461) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var3285 null-var1461)))
(declare-const var465 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var465 null-String)))
(define-const var416 var3735 var3735-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var3314 var946 (getConfig/-1194828243 (cast-from-var1875-to-var3057 var3018))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3506 var3735 (descriptorDir/2019956101 var3314)) ; Statement: $r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2265 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2265)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2265!1 String)
(assert (= var2265!1 ""))
(assert true)
(define-const var1110 String (append/672562846 var2265!1 var465)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2265!2 String)
(assert (= var2265!2 (str.++ var2265!1 var465)))
(assert true)
(define-const var201 String (append/672562846 var1110 "weblogic-ejb-jar.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("weblogic-ejb-jar.xml") 
(declare-const var1110!1 String)
(assert (= var1110!1 (str.++ var1110 "weblogic-ejb-jar.xml")))
(assert true)
(define-const var516 String (toString/-2075883882 var201)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var416 var3506 var516)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8) 

(declare-const var416!1 var3735)
(declare-const var3506!1 var3735)
(declare-const var516!1 String)
(assert true)
(define-const var1030 Bool (exists/1072868559 var416!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var1030 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3277 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3277)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3277!1 String)
(assert (= var3277!1 ""))
(assert true)
(define-const var2069 String (append/672562846 var3277!1 "Unable to locate weblogic deployment descriptor. It was expected to be in ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate weblogic deployment descriptor. It was expected to be in ") 
(declare-const var3277!2 String)
(assert (= var3277!2 (str.++ var3277!1 "Unable to locate weblogic deployment descriptor. It was expected to be in ")))
(assert true)
(define-const var2534 String (getPath/-1385219261 var416!1)) ; Statement: $r10 = virtualinvoke $r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2645 String (append/672562846 var2069 var2534)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2069!1 String)
(assert (= var2069!1 (str.++ var2069 var2534)))
(assert true)
(define-const var1661 String (toString/-2075883882 var2645)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1875-to-var3057 var3018) var1661 1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void log(java.lang.String,int)>($r13, 1) 

(declare-const var3018!1 var1875)
(declare-const var1661!1 String)
(declare-const var92 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3735-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var1875-to-var3057=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var1875=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, var3018=r1, var1461=java.util.Hashtable, var3285=r14, var465=r5, var3062=null_type, var3735=java.io.File, var416=$r0, var946=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3057=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3314=$r2, var3506=$r4, var2265=$r3, var1110=$r6, var201=$r7, var516=$r8, var1030=$z0, var3277=$r9, var2069=$r11, var2534=$r10, var2645=$r12, var1661=$r13, var92=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool=var1875, r1=var3018, java.util.Hashtable=var1461, r14=var3285, r5=var465, null_type=var3062, java.io.File=var3735, $r0=var416, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var946, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3057, $r2=var3314, $r4=var3506, $r3=var2265, $r6=var1110, $r7=var201, $r8=var516, $z0=var1030, $r9=var3277, $r11=var2069, $r10=var2534, $r12=var2645, $r13=var1661, 1=var92}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r5 := @parameter1: java.lang.String;	$r0 = new java.io.File;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("weblogic-ejb-jar.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate weblogic deployment descriptor. It was expected to be in ");	$r10 = virtualinvoke $r0.<java.io.File: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void log(java.lang.String,int)>($r13, 1);	return
;block_num 2