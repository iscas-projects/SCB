(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var645 0)
(declare-sort var1786 0)
(declare-sort var101 0)
(declare-sort var2067 0)
(declare-sort var3188 0)
(declare-sort var1179 0)
(declare-sort var2366 0)
(declare-sort var129 0)
(declare-sort var922 0)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2067) Bool)
(declare-fun cast-from-var645-to-var2067 (var645) var2067)
(declare-fun dbVendor/1029604219 (var645) String)
(declare-fun var3188-init () var3188)
(declare-fun getConfig/-1194828243 (var2067) var1179)
(declare-fun descriptorDir/2019956101 (var1179) var3188)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3188 var3188 String) void)
(declare-fun exists/1072868559 (var3188) Bool)
(declare-fun getPath/-1385219261 (var3188) String)
(declare-fun log/1006881114 (var2067 String Int) void)
(declare-fun put/1981026245 (var1786 var2366 var2366) var2366)
(declare-fun cast-from-String-to-var2366 (String) var2366)
(declare-fun cast-from-var3188-to-var2366 (var3188) var2366)
(declare-fun newCMP/1029604219 (var645) Bool)
(declare-fun var922-init () var922)
(declare-fun toString/-1112415476 (var503) String)
(declare-fun cast-from-var129-to-var503 (var129) var503)
(declare-fun <init>/-191906322 (var922 String var503) void)
(declare-const null-var645 var645)
(declare-const null-var1786 var1786)
(declare-const null-String String)
(declare-const null-var129 var129)
(declare-const var3509 var645) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3509 null-var645)))
(declare-const var3341 var1786) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var3341 null-var1786)))
(declare-const var1536 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1536 null-String)))
(assert true)
(define-const var308 Bool (usingBaseJarName/-2133246527 (cast-from-var645-to-var2067 var3509))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var308 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var650 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var2790 String var650) ; Statement: r2 = $r67 
(define-const var1113 String (dbVendor/1029604219 var3509)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var1113 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var2734 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var355 String var2734) ; Statement: r8 = $r68 
(define-const var2132 var3188 var3188-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var705 var1179 (getConfig/-1194828243 (cast-from-var645-to-var2067 var3509))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1530 var3188 (descriptorDir/2019956101 var705)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3139 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3139)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3139!1 String)
(assert (= var3139!1 ""))
(assert true)
(define-const var3581 String (append/672562846 var3139!1 var2790)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3139!2 String)
(assert (= var3139!2 (str.++ var3139!1 var2790)))
(assert true)
(define-const var466 String (append/672562846 var3581 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var822 String (toString/-2075883882 var466)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2132 var1530 var822)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var2132!1 var3188)
(declare-const var1530!1 var3188)
(declare-const var822!1 String)
(assert true)
(define-const var2700 Bool (exists/1072868559 var2132!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var2700 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2064 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2064)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2064!1 String)
(assert (= var2064!1 ""))
(assert true)
(define-const var1340 String (append/672562846 var2064!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var2064!2 String)
(assert (= var2064!2 (str.++ var2064!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var2555 String (getPath/-1385219261 var2132!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3296 String (append/672562846 var1340 var2555)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1340!1 String)
(assert (= var1340!1 (str.++ var1340 var2555)))
(assert true)
(define-const var2915 String (toString/-2075883882 var3296)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var645-to-var2067 var3509) var2915 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var3509!1 var645)
(declare-const var2915!1 String)
(declare-const var1621 Int)
(assert true) ; Non Conditional
(define-const var1088 var3188 var3188-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var2306 var1179 (getConfig/-1194828243 (cast-from-var645-to-var2067 var3509!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2572 var3188 (descriptorDir/2019956101 var2306)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var732 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(assert true)
(define-const var1787 String (append/672562846 var732!1 var2790)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 var2790)))
(assert true)
(define-const var827 String (append/672562846 var1787 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var1787!1 String)
(assert (= var1787!1 (str.++ var1787 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var467 String (toString/-2075883882 var827)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1088 var2572 var467)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var1088!1 var3188)
(declare-const var2572!1 var3188)
(declare-const var467!1 String)
(assert true)
(define-const var2348 Bool (exists/1072868559 var1088!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var2348 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var3341 (cast-from-String-to-var2366 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var3188-to-var2366 var1088!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var3341!1 var1786)
(declare-const var1604 String)
(declare-const var1088!2 var3188)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var3049 Bool (newCMP/1029604219 var3509!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var3049 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1503 var3188 var3188-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3502 var129) ; Statement: $r60 := @caughtexception 
(assert (not (= var3502 null-var129)))
(define-const var2326 var922 var922-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1130 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
(define-const var807 String (append/672562846 var1130!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var1130!2 String)
(assert (= var1130!2 (str.++ var1130!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var2439 String (toString/-1112415476 (cast-from-var129-to-var503 var3502))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3081 String (append/672562846 var807 var2439)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var807!1 String)
(assert (= var807!1 (str.++ var807 var2439)))
(assert true)
(define-const var567 String (toString/-2075883882 var3081)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2326 var567 (cast-from-var129-to-var503 var3502))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var2326!1 var922)
(declare-const var567!1 String)
(declare-const var3502!1 var129)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var645-to-var2067=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var3188-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2366=([java.lang.String], java.lang.Object), cast-from-var3188-to-var2366=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var922-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var129-to-var503=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var645=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3509=r0, var1786=java.util.Hashtable, var3341=r59, var1536=r1, var101=null_type, var2067=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var308=$z0, var650=$r67, var2790=r2, var1113=$r3, var2734=$r68, var355=r8, var3188=java.io.File, var2132=$r9, var1179=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var705=$r10, var1530=$r12, var3139=$r11, var3581=$r13, var466=$r14, var822=$r15, var2700=$z1, var2064=$r16, var1340=$r18, var2555=$r17, var3296=$r19, var2915=$r20, var1621=3, var1088=$r21, var2306=$r22, var2572=$r24, var732=$r23, var1787=$r25, var827=$r26, var467=$r27, var2348=$z2, var2366=java.lang.Object, var1604="META-INF/ibm-ejb-jar-bnd.xmi", var3049=$z3, var1503=$r33, var129=java.lang.Exception, var3502=$r60, var922=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2326=$r61, var1130=$r62, var807=$r64, var503=java.lang.Throwable, var2439=$r63, var3081=$r65, var567=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var645, r0=var3509, java.util.Hashtable=var1786, r59=var3341, r1=var1536, null_type=var101, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2067, $z0=var308, $r67=var650, r2=var2790, $r3=var1113, $r68=var2734, r8=var355, java.io.File=var3188, $r9=var2132, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1179, $r10=var705, $r12=var1530, $r11=var3139, $r13=var3581, $r14=var466, $r15=var822, $z1=var2700, $r16=var2064, $r18=var1340, $r17=var2555, $r19=var3296, $r20=var2915, 3=var1621, $r21=var1088, $r22=var2306, $r24=var2572, $r23=var732, $r25=var1787, $r26=var827, $r27=var467, $z2=var2348, java.lang.Object=var2366, "META-INF/ibm-ejb-jar-bnd.xmi"=var1604, $z3=var3049, $r33=var1503, java.lang.Exception=var129, $r60=var3502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var922, $r61=var2326, $r62=var1130, $r64=var807, java.lang.Throwable=var503, $r63=var2439, $r65=var3081, $r66=var567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11