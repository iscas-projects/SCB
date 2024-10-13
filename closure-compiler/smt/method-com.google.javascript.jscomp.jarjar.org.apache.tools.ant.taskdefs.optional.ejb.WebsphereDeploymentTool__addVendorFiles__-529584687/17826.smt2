(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var550 0)
(declare-sort var919 0)
(declare-sort var2388 0)
(declare-sort var1798 0)
(declare-sort var2651 0)
(declare-sort var3920 0)
(declare-sort var3951 0)
(declare-sort var2702 0)
(declare-sort var127 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var1798) Bool)
(declare-fun cast-from-var550-to-var1798 (var550) var1798)
(declare-fun dbVendor/1029604219 (var550) String)
(declare-fun var2651-init () var2651)
(declare-fun getConfig/-1194828243 (var1798) var3920)
(declare-fun descriptorDir/2019956101 (var3920) var2651)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2651 var2651 String) void)
(declare-fun exists/1072868559 (var2651) Bool)
(declare-fun put/1981026245 (var919 var3951 var3951) var3951)
(declare-fun cast-from-String-to-var3951 (String) var3951)
(declare-fun cast-from-var2651-to-var3951 (var2651) var3951)
(declare-fun getPath/-1385219261 (var2651) String)
(declare-fun log/1006881114 (var1798 String Int) void)
(declare-fun newCMP/1029604219 (var550) Bool)
(declare-fun var127-init () var127)
(declare-fun toString/-1112415476 (var3523) String)
(declare-fun cast-from-var2702-to-var3523 (var2702) var3523)
(declare-fun <init>/-191906322 (var127 String var3523) void)
(declare-const null-var550 var550)
(declare-const null-var919 var919)
(declare-const null-String String)
(declare-const null-var2702 var2702)
(declare-const var3500 var550) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3500 null-var550)))
(declare-const var2425 var919) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var2425 null-var919)))
(declare-const var506 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var506 null-String)))
(assert true)
(define-const var299 Bool (usingBaseJarName/-2133246527 (cast-from-var550-to-var1798 var3500))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var299 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1409 String var506) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var3125 String var1409) ; Statement: r2 = $r67 
(define-const var2905 String (dbVendor/1029604219 var3500)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var2905 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var2389 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var2393 String var2389) ; Statement: r8 = $r68 
(define-const var2492 var2651 var2651-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var230 var3920 (getConfig/-1194828243 (cast-from-var550-to-var1798 var3500))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1847 var2651 (descriptorDir/2019956101 var230)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3136 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3136)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3136!1 String)
(assert (= var3136!1 ""))
(assert true)
(define-const var2254 String (append/672562846 var3136!1 var3125)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3136!2 String)
(assert (= var3136!2 (str.++ var3136!1 var3125)))
(assert true)
(define-const var3009 String (append/672562846 var2254 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var2254!1 String)
(assert (= var2254!1 (str.++ var2254 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var133 String (toString/-2075883882 var3009)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2492 var1847 var133)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var2492!1 var2651)
(declare-const var1847!1 var2651)
(declare-const var133!1 String)
(assert true)
(define-const var3939 Bool (exists/1072868559 var2492!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var3939 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var2425 (cast-from-String-to-var3951 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var2651-to-var3951 var2492!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var2425!1 var919)
(declare-const var849 String)
(declare-const var2492!2 var2651)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var2699 var2651 var2651-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var271 var3920 (getConfig/-1194828243 (cast-from-var550-to-var1798 var3500))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3989 var2651 (descriptorDir/2019956101 var271)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2634 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2634)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2634!1 String)
(assert (= var2634!1 ""))
(assert true)
(define-const var1531 String (append/672562846 var2634!1 var3125)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2634!2 String)
(assert (= var2634!2 (str.++ var2634!1 var3125)))
(assert true)
(define-const var980 String (append/672562846 var1531 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var1531!1 String)
(assert (= var1531!1 (str.++ var1531 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var53 String (toString/-2075883882 var980)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2699 var3989 var53)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var2699!1 var2651)
(declare-const var3989!1 var2651)
(declare-const var53!1 String)
(assert true)
(define-const var3954 Bool (exists/1072868559 var2699!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var3954 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2072 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2072)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2072!1 String)
(assert (= var2072!1 ""))
(assert true)
(define-const var3392 String (append/672562846 var2072!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var2072!2 String)
(assert (= var2072!2 (str.++ var2072!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var1348 String (getPath/-1385219261 var2699!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var342 String (append/672562846 var3392 var1348)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3392!1 String)
(assert (= var3392!1 (str.++ var3392 var1348)))
(assert true)
(define-const var1302 String (toString/-2075883882 var342)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var550-to-var1798 var3500) var1302 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var3500!1 var550)
(declare-const var1302!1 String)
(declare-const var2028 Int)
(assert true) ; Non Conditional
(define-const var511 Bool (newCMP/1029604219 var3500!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var511 1 0) 0))) ; Cond: $z3 != 0 
(define-const var94 var2651 var2651-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3775 var2702) ; Statement: $r60 := @caughtexception 
(assert (not (= var3775 null-var2702)))
(define-const var3071 var127 var127-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var139 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var139)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var139!1 String)
(assert (= var139!1 ""))
(assert true)
(define-const var2747 String (append/672562846 var139!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var139!2 String)
(assert (= var139!2 (str.++ var139!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var3535 String (toString/-1112415476 (cast-from-var2702-to-var3523 var3775))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var1293 String (append/672562846 var2747 var3535)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2747!1 String)
(assert (= var2747!1 (str.++ var2747 var3535)))
(assert true)
(define-const var874 String (toString/-2075883882 var1293)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3071 var874 (cast-from-var2702-to-var3523 var3775))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var3071!1 var127)
(declare-const var874!1 String)
(declare-const var3775!1 var2702)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var550-to-var1798=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var2651-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3951=([java.lang.String], java.lang.Object), cast-from-var2651-to-var3951=([java.io.File], java.lang.Object), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var127-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2702-to-var3523=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var550=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3500=r0, var919=java.util.Hashtable, var2425=r59, var506=r1, var2388=null_type, var1798=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var299=$z0, var1409=$r67, var3125=r2, var2905=$r3, var2389=$r68, var2393=r8, var2651=java.io.File, var2492=$r9, var3920=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var230=$r10, var1847=$r12, var3136=$r11, var2254=$r13, var3009=$r14, var133=$r15, var3939=$z1, var3951=java.lang.Object, var849="META-INF/ibm-ejb-jar-ext.xmi", var2699=$r21, var271=$r22, var3989=$r24, var2634=$r23, var1531=$r25, var980=$r26, var53=$r27, var3954=$z2, var2072=$r28, var3392=$r30, var1348=$r29, var342=$r31, var1302=$r32, var2028=3, var511=$z3, var94=$r33, var2702=java.lang.Exception, var3775=$r60, var127=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3071=$r61, var139=$r62, var2747=$r64, var3523=java.lang.Throwable, var3535=$r63, var1293=$r65, var874=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var550, r0=var3500, java.util.Hashtable=var919, r59=var2425, r1=var506, null_type=var2388, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1798, $z0=var299, $r67=var1409, r2=var3125, $r3=var2905, $r68=var2389, r8=var2393, java.io.File=var2651, $r9=var2492, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var3920, $r10=var230, $r12=var1847, $r11=var3136, $r13=var2254, $r14=var3009, $r15=var133, $z1=var3939, java.lang.Object=var3951, "META-INF/ibm-ejb-jar-ext.xmi"=var849, $r21=var2699, $r22=var271, $r24=var3989, $r23=var2634, $r25=var1531, $r26=var980, $r27=var53, $z2=var3954, $r28=var2072, $r30=var3392, $r29=var1348, $r31=var342, $r32=var1302, 3=var2028, $z3=var511, $r33=var94, java.lang.Exception=var2702, $r60=var3775, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var127, $r61=var3071, $r62=var139, $r64=var2747, java.lang.Throwable=var3523, $r63=var3535, $r65=var1293, $r66=var874}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11