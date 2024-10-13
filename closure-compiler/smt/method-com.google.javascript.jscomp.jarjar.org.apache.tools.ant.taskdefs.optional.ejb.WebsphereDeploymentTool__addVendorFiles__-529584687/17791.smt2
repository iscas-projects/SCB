(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1681 0)
(declare-sort var1833 0)
(declare-sort var1813 0)
(declare-sort var3829 0)
(declare-sort var3448 0)
(declare-sort var1933 0)
(declare-sort var1651 0)
(declare-sort var1922 0)
(declare-sort var2284 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var3829) Bool)
(declare-fun cast-from-var1681-to-var3829 (var1681) var3829)
(declare-fun dbVendor/1029604219 (var1681) String)
(declare-fun var3448-init () var3448)
(declare-fun getConfig/-1194828243 (var3829) var1933)
(declare-fun descriptorDir/2019956101 (var1933) var3448)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3448 var3448 String) void)
(declare-fun exists/1072868559 (var3448) Bool)
(declare-fun put/1981026245 (var1833 var1651 var1651) var1651)
(declare-fun cast-from-String-to-var1651 (String) var1651)
(declare-fun cast-from-var3448-to-var1651 (var3448) var1651)
(declare-fun newCMP/1029604219 (var1681) Bool)
(declare-fun var2284-init () var2284)
(declare-fun toString/-1112415476 (var1040) String)
(declare-fun cast-from-var1922-to-var1040 (var1922) var1040)
(declare-fun <init>/-191906322 (var2284 String var1040) void)
(declare-const null-var1681 var1681)
(declare-const null-var1833 var1833)
(declare-const null-String String)
(declare-const null-var1922 var1922)
(declare-const var3028 var1681) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3028 null-var1681)))
(declare-const var3684 var1833) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var3684 null-var1833)))
(declare-const var2861 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2861 null-String)))
(assert true)
(define-const var652 Bool (usingBaseJarName/-2133246527 (cast-from-var1681-to-var3829 var3028))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var652 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2736 String var2861) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var2373 String var2736) ; Statement: r2 = $r67 
(define-const var3010 String (dbVendor/1029604219 var3028)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var3010 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var2745 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var3389 String var2745) ; Statement: r8 = $r68 
(define-const var2726 var3448 var3448-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var2445 var1933 (getConfig/-1194828243 (cast-from-var1681-to-var3829 var3028))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var511 var3448 (descriptorDir/2019956101 var2445)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var420 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var420)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var420!1 String)
(assert (= var420!1 ""))
(assert true)
(define-const var2946 String (append/672562846 var420!1 var2373)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var420!2 String)
(assert (= var420!2 (str.++ var420!1 var2373)))
(assert true)
(define-const var2680 String (append/672562846 var2946 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var2946!1 String)
(assert (= var2946!1 (str.++ var2946 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var524 String (toString/-2075883882 var2680)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2726 var511 var524)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var2726!1 var3448)
(declare-const var511!1 var3448)
(declare-const var524!1 String)
(assert true)
(define-const var1037 Bool (exists/1072868559 var2726!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var1037 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var3684 (cast-from-String-to-var1651 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var3448-to-var1651 var2726!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var3684!1 var1833)
(declare-const var2641 String)
(declare-const var2726!2 var3448)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var3622 var3448 var3448-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var538 var1933 (getConfig/-1194828243 (cast-from-var1681-to-var3829 var3028))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3456 var3448 (descriptorDir/2019956101 var538)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3320 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3320)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3320!1 String)
(assert (= var3320!1 ""))
(assert true)
(define-const var2515 String (append/672562846 var3320!1 var2373)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3320!2 String)
(assert (= var3320!2 (str.++ var3320!1 var2373)))
(assert true)
(define-const var450 String (append/672562846 var2515 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var2515!1 String)
(assert (= var2515!1 (str.++ var2515 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var583 String (toString/-2075883882 var450)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3622 var3456 var583)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var3622!1 var3448)
(declare-const var3456!1 var3448)
(declare-const var583!1 String)
(assert true)
(define-const var3262 Bool (exists/1072868559 var3622!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var3262 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var3684!1 (cast-from-String-to-var1651 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var3448-to-var1651 var3622!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var3684!2 var1833)
(declare-const var1987 String)
(declare-const var3622!2 var3448)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var747 Bool (newCMP/1029604219 var3028)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var747 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3350 var3448 var3448-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var111 var1922) ; Statement: $r60 := @caughtexception 
(assert (not (= var111 null-var1922)))
(define-const var2014 var2284 var2284-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3596 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3596)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3596!1 String)
(assert (= var3596!1 ""))
(assert true)
(define-const var3014 String (append/672562846 var3596!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var3596!2 String)
(assert (= var3596!2 (str.++ var3596!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var2573 String (toString/-1112415476 (cast-from-var1922-to-var1040 var111))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2316 String (append/672562846 var3014 var2573)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var3014!1 String)
(assert (= var3014!1 (str.++ var3014 var2573)))
(assert true)
(define-const var2991 String (toString/-2075883882 var2316)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2014 var2991 (cast-from-var1922-to-var1040 var111))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var2014!1 var2284)
(declare-const var2991!1 String)
(declare-const var111!1 var1922)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var1681-to-var3829=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var3448-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1651=([java.lang.String], java.lang.Object), cast-from-var3448-to-var1651=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var2284-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1922-to-var1040=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1681=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3028=r0, var1833=java.util.Hashtable, var3684=r59, var2861=r1, var1813=null_type, var3829=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var652=$z0, var2736=$r67, var2373=r2, var3010=$r3, var2745=$r68, var3389=r8, var3448=java.io.File, var2726=$r9, var1933=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var2445=$r10, var511=$r12, var420=$r11, var2946=$r13, var2680=$r14, var524=$r15, var1037=$z1, var1651=java.lang.Object, var2641="META-INF/ibm-ejb-jar-ext.xmi", var3622=$r21, var538=$r22, var3456=$r24, var3320=$r23, var2515=$r25, var450=$r26, var583=$r27, var3262=$z2, var1987="META-INF/ibm-ejb-jar-bnd.xmi", var747=$z3, var3350=$r33, var1922=java.lang.Exception, var111=$r60, var2284=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2014=$r61, var3596=$r62, var3014=$r64, var1040=java.lang.Throwable, var2573=$r63, var2316=$r65, var2991=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var1681, r0=var3028, java.util.Hashtable=var1833, r59=var3684, r1=var2861, null_type=var1813, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3829, $z0=var652, $r67=var2736, r2=var2373, $r3=var3010, $r68=var2745, r8=var3389, java.io.File=var3448, $r9=var2726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1933, $r10=var2445, $r12=var511, $r11=var420, $r13=var2946, $r14=var2680, $r15=var524, $z1=var1037, java.lang.Object=var1651, "META-INF/ibm-ejb-jar-ext.xmi"=var2641, $r21=var3622, $r22=var538, $r24=var3456, $r23=var3320, $r25=var2515, $r26=var450, $r27=var583, $z2=var3262, "META-INF/ibm-ejb-jar-bnd.xmi"=var1987, $z3=var747, $r33=var3350, java.lang.Exception=var1922, $r60=var111, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2284, $r61=var2014, $r62=var3596, $r64=var3014, java.lang.Throwable=var1040, $r63=var2573, $r65=var2316, $r66=var2991}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11