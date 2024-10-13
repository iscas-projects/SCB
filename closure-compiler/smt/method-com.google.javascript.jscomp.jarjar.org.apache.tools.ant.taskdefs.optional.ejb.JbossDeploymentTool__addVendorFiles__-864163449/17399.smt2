(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var1399 0)
(declare-sort var2611 0)
(declare-sort var2805 0)
(declare-sort var209 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2805-init () var2805)
(declare-fun getConfig/-1194828243 (var563) var209)
(declare-fun cast-from-var1717-to-var563 (var1717) var563)
(declare-fun descriptorDir/2019956101 (var209) var2805)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2805 var2805 String) void)
(declare-fun exists/1072868559 (var2805) Bool)
(declare-fun getPath/-1385219261 (var2805) String)
(declare-fun log/1006881114 (var563 String Int) void)
(declare-const null-var1717 var1717)
(declare-const null-var1399 var1399)
(declare-const null-String String)
(declare-const var474 var1717) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool 
(assert (not (= var474 null-var1717)))
(declare-const var881 var1399) ; Statement: r14 := @parameter0: java.util.Hashtable 
(assert (not (= var881 null-var1399)))
(declare-const var3649 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3649 null-String)))
(define-const var1810 var2805 var2805-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var2912 var209 (getConfig/-1194828243 (cast-from-var1717-to-var563 var474))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2322 var2805 (descriptorDir/2019956101 var2912)) ; Statement: $r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3188 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3188)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3188!1 String)
(assert (= var3188!1 ""))
(assert true)
(define-const var1606 String (append/672562846 var3188!1 var3649)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3188!2 String)
(assert (= var3188!2 (str.++ var3188!1 var3649)))
(assert true)
(define-const var3741 String (append/672562846 var1606 "jboss.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jboss.xml") 
(declare-const var1606!1 String)
(assert (= var1606!1 (str.++ var1606 "jboss.xml")))
(assert true)
(define-const var3596 String (toString/-2075883882 var3741)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1810 var2322 var3596)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8) 

(declare-const var1810!1 var2805)
(declare-const var2322!1 var2805)
(declare-const var3596!1 String)
(assert true)
(define-const var683 Bool (exists/1072868559 var1810!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var683 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3558 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3558)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3558!1 String)
(assert (= var3558!1 ""))
(assert true)
(define-const var219 String (append/672562846 var3558!1 "Unable to locate jboss deployment descriptor. It was expected to be in ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate jboss deployment descriptor. It was expected to be in ") 
(declare-const var3558!2 String)
(assert (= var3558!2 (str.++ var3558!1 "Unable to locate jboss deployment descriptor. It was expected to be in ")))
(assert true)
(define-const var1194 String (getPath/-1385219261 var1810!1)) ; Statement: $r10 = virtualinvoke $r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2888 String (append/672562846 var219 var1194)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var219!1 String)
(assert (= var219!1 (str.++ var219 var1194)))
(assert true)
(define-const var3633 String (toString/-2075883882 var2888)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1717-to-var563 var474) var3633 1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: void log(java.lang.String,int)>($r13, 1) 

(declare-const var474!1 var1717)
(declare-const var3633!1 String)
(declare-const var785 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2805-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var1717-to-var563=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var1717=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool, var474=r1, var1399=java.util.Hashtable, var881=r14, var3649=r5, var2611=null_type, var2805=java.io.File, var1810=$r0, var209=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var563=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2912=$r2, var2322=$r4, var3188=$r3, var1606=$r6, var3741=$r7, var3596=$r8, var683=$z0, var3558=$r9, var219=$r11, var1194=$r10, var2888=$r12, var3633=$r13, var785=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool=var1717, r1=var474, java.util.Hashtable=var1399, r14=var881, r5=var3649, null_type=var2611, java.io.File=var2805, $r0=var1810, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var209, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var563, $r2=var2912, $r4=var2322, $r3=var3188, $r6=var1606, $r7=var3741, $r8=var3596, $z0=var683, $r9=var3558, $r11=var219, $r10=var1194, $r12=var2888, $r13=var3633, 1=var785}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool;	r14 := @parameter0: java.util.Hashtable;	r5 := @parameter1: java.lang.String;	$r0 = new java.io.File;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r4 = $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jboss.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r4, $r8);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate jboss deployment descriptor. It was expected to be in ");	$r10 = virtualinvoke $r0.<java.io.File: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool: void log(java.lang.String,int)>($r13, 1);	return
;block_num 2