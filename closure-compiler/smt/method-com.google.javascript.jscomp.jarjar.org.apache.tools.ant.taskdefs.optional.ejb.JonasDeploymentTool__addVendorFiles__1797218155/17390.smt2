(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var3703 0)
(declare-sort var3675 0)
(declare-sort var2019 0)
(declare-sort var1376 0)
(declare-sort var2052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJonasDescriptorName/726845562 (var2654) String)
(declare-fun jonasDescriptorName/760687125 (var2654) String)
(declare-fun var2019-init () var2019)
(declare-fun getConfig/-1194828243 (var2052) var1376)
(declare-fun cast-from-var2654-to-var2052 (var2654) var2052)
(declare-fun descriptorDir/2019956101 (var1376) var2019)
(declare-fun <init>/-1833447926 (var2019 var2019 String) void)
(declare-fun exists/1072868559 (var2019) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var2019) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var2052 String Int) void)
(declare-const null-var2654 var2654)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const var3170 var2654) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var3170 null-var2654)))
(declare-const var338 var3703) ; Statement: r12 := @parameter0: java.util.Hashtable 
(assert (not (= var338 null-var3703)))
(declare-const var346 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var346 null-String)))
(assert true)
(define-const var2619 String (getJonasDescriptorName/726845562 var3170)) ; Statement: $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String getJonasDescriptorName()>() 
(declare-const var3170!1 var2654)
(assert (not (= var3170!1 null-var2654)))
(assert (= (jonasDescriptorName/760687125 var3170!1) var2619)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String jonasDescriptorName> = $r1 
(define-const var3316 var2019 var2019-init) ; Statement: $r2 = new java.io.File 
(assert true)
(define-const var2843 var1376 (getConfig/-1194828243 (cast-from-var2654-to-var2052 var3170!1))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var768 var2019 (descriptorDir/2019956101 var2843)) ; Statement: $r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2290 String (jonasDescriptorName/760687125 var3170!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String jonasDescriptorName> 
(assert true)
;(assert (<init>/-1833447926 var3316 var768 var2290)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r4) 

(declare-const var3316!1 var2019)
(declare-const var768!1 var2019)
(declare-const var2290!1 String)
(assert true)
(define-const var3015 Bool (exists/1072868559 var3316!1)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3015 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3201 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3201)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3201!1 String)
(assert (= var3201!1 ""))
(assert true)
(define-const var1904 String (append/672562846 var3201!1 "Unable to locate the JOnAS deployment descriptor. It was expected to be in: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate the JOnAS deployment descriptor. It was expected to be in: ") 
(declare-const var3201!2 String)
(assert (= var3201!2 (str.++ var3201!1 "Unable to locate the JOnAS deployment descriptor. It was expected to be in: ")))
(assert true)
(define-const var2765 String (getPath/-1385219261 var3316!1)) ; Statement: $r7 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1521 String (append/672562846 var1904 var2765)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1904!1 String)
(assert (= var1904!1 (str.++ var1904 var2765)))
(assert true)
(define-const var562 String (append/672562846 var1521 ".")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1521!1 String)
(assert (= var1521!1 (str.++ var1521 ".")))
(assert true)
(define-const var876 String (toString/-2075883882 var562)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2654-to-var2052 var3170!1) var876 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r11, 1) 

(declare-const var3170!2 var2654)
(declare-const var876!1 String)
(declare-const var3587 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getJonasDescriptorName/726845562=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), jonasDescriptorName/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), var2019-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var2654-to-var2052=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var2654=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var3170=r0, var3703=java.util.Hashtable, var338=r12, var346=r13, var3675=null_type, var2619=$r1, var2019=java.io.File, var3316=$r2, var1376=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var2052=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2843=$r3, var768=$r5, var2290=$r4, var3015=$z0, var3201=$r6, var1904=$r8, var2765=$r7, var1521=$r9, var562=$r10, var876=$r11, var3587=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var2654, r0=var3170, java.util.Hashtable=var3703, r12=var338, r13=var346, null_type=var3675, $r1=var2619, java.io.File=var2019, $r2=var3316, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1376, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2052, $r3=var2843, $r5=var768, $r4=var2290, $z0=var3015, $r6=var3201, $r8=var1904, $r7=var2765, $r9=var1521, $r10=var562, $r11=var876, 1=var3587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r12 := @parameter0: java.util.Hashtable;	r13 := @parameter1: java.lang.String;	$r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String getJonasDescriptorName()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String jonasDescriptorName> = $r1;	$r2 = new java.io.File;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String jonasDescriptorName>;	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r4);	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate the JOnAS deployment descriptor. It was expected to be in: ");	$r7 = virtualinvoke $r2.<java.io.File: java.lang.String getPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r11, 1);	return
;block_num 3