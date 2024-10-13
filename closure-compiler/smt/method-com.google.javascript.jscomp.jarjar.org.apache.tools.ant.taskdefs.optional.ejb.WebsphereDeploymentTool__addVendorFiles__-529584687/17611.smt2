(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3238 0)
(declare-sort var2702 0)
(declare-sort var3325 0)
(declare-sort var1188 0)
(declare-sort var2868 0)
(declare-sort var2418 0)
(declare-sort var1140 0)
(declare-sort var2447 0)
(declare-sort var2222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var1188) Bool)
(declare-fun cast-from-var3238-to-var1188 (var3238) var1188)
(declare-fun dbVendor/1029604219 (var3238) String)
(declare-fun var2868-init () var2868)
(declare-fun getConfig/-1194828243 (var1188) var2418)
(declare-fun descriptorDir/2019956101 (var2418) var2868)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2868 var2868 String) void)
(declare-fun exists/1072868559 (var2868) Bool)
(declare-fun getPath/-1385219261 (var2868) String)
(declare-fun log/1006881114 (var1188 String Int) void)
(declare-fun newCMP/1029604219 (var3238) Bool)
(declare-fun var2447-init () var2447)
(declare-fun toString/-1112415476 (var2222) String)
(declare-fun cast-from-var1140-to-var2222 (var1140) var2222)
(declare-fun <init>/-191906322 (var2447 String var2222) void)
(declare-const null-var3238 var3238)
(declare-const null-var2702 var2702)
(declare-const null-String String)
(declare-const null-var1140 var1140)
(declare-const var3175 var3238) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3175 null-var3238)))
(declare-const var18 var2702) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var18 null-var2702)))
(declare-const var160 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var160 null-String)))
(assert true)
(define-const var3960 Bool (usingBaseJarName/-2133246527 (cast-from-var3238-to-var1188 var3175))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var3960 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var118 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var2572 String var118) ; Statement: r2 = $r67 
(define-const var108 String (dbVendor/1029604219 var3175)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var108 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var269 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var3928 String var269) ; Statement: r8 = $r68 
(define-const var787 var2868 var2868-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var1481 var2418 (getConfig/-1194828243 (cast-from-var3238-to-var1188 var3175))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var549 var2868 (descriptorDir/2019956101 var1481)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3924 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3924)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3924!1 String)
(assert (= var3924!1 ""))
(assert true)
(define-const var974 String (append/672562846 var3924!1 var2572)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3924!2 String)
(assert (= var3924!2 (str.++ var3924!1 var2572)))
(assert true)
(define-const var2495 String (append/672562846 var974 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var974!1 String)
(assert (= var974!1 (str.++ var974 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var1020 String (toString/-2075883882 var2495)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var787 var549 var1020)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var787!1 var2868)
(declare-const var549!1 var2868)
(declare-const var1020!1 String)
(assert true)
(define-const var3272 Bool (exists/1072868559 var787!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var3272 1 0) 0)) ; Cond: $z1 == 0 
(define-const var236 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var236)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var236!1 String)
(assert (= var236!1 ""))
(assert true)
(define-const var854 String (append/672562846 var236!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var236!2 String)
(assert (= var236!2 (str.++ var236!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var346 String (getPath/-1385219261 var787!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2684 String (append/672562846 var854 var346)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var854!1 String)
(assert (= var854!1 (str.++ var854 var346)))
(assert true)
(define-const var1007 String (toString/-2075883882 var2684)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3238-to-var1188 var3175) var1007 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var3175!1 var3238)
(declare-const var1007!1 String)
(declare-const var3237 Int)
(assert true) ; Non Conditional
(define-const var2490 var2868 var2868-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3829 var2418 (getConfig/-1194828243 (cast-from-var3238-to-var1188 var3175!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var181 var2868 (descriptorDir/2019956101 var3829)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var389 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var389)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var389!1 String)
(assert (= var389!1 ""))
(assert true)
(define-const var2926 String (append/672562846 var389!1 var2572)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var389!2 String)
(assert (= var389!2 (str.++ var389!1 var2572)))
(assert true)
(define-const var3357 String (append/672562846 var2926 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var2926!1 String)
(assert (= var2926!1 (str.++ var2926 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var488 String (toString/-2075883882 var3357)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2490 var181 var488)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var2490!1 var2868)
(declare-const var181!1 var2868)
(declare-const var488!1 String)
(assert true)
(define-const var1701 Bool (exists/1072868559 var2490!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var1701 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2187 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2187)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2187!1 String)
(assert (= var2187!1 ""))
(assert true)
(define-const var3131 String (append/672562846 var2187!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var2187!2 String)
(assert (= var2187!2 (str.++ var2187!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var3039 String (getPath/-1385219261 var2490!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3712 String (append/672562846 var3131 var3039)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3131!1 String)
(assert (= var3131!1 (str.++ var3131 var3039)))
(assert true)
(define-const var3125 String (toString/-2075883882 var3712)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3238-to-var1188 var3175!1) var3125 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var3175!2 var3238)
(declare-const var3125!1 String)
(declare-const var3237!1 Int)
(assert true) ; Non Conditional
(define-const var3831 Bool (newCMP/1029604219 var3175!2)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var3831 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1108 var2868 var2868-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1295 var1140) ; Statement: $r60 := @caughtexception 
(assert (not (= var1295 null-var1140)))
(define-const var2171 var2447 var2447-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var474 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var474)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var474!1 String)
(assert (= var474!1 ""))
(assert true)
(define-const var8 String (append/672562846 var474!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var474!2 String)
(assert (= var474!2 (str.++ var474!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var3394 String (toString/-1112415476 (cast-from-var1140-to-var2222 var1295))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2699 String (append/672562846 var8 var3394)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var8!1 String)
(assert (= var8!1 (str.++ var8 var3394)))
(assert true)
(define-const var980 String (toString/-2075883882 var2699)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2171 var980 (cast-from-var1140-to-var2222 var1295))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var2171!1 var2447)
(declare-const var980!1 String)
(declare-const var1295!1 var1140)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var3238-to-var1188=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var2868-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var2447-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1140-to-var2222=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3238=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3175=r0, var2702=java.util.Hashtable, var18=r59, var160=r1, var3325=null_type, var1188=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3960=$z0, var118=$r67, var2572=r2, var108=$r3, var269=$r68, var3928=r8, var2868=java.io.File, var787=$r9, var2418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1481=$r10, var549=$r12, var3924=$r11, var974=$r13, var2495=$r14, var1020=$r15, var3272=$z1, var236=$r16, var854=$r18, var346=$r17, var2684=$r19, var1007=$r20, var3237=3, var2490=$r21, var3829=$r22, var181=$r24, var389=$r23, var2926=$r25, var3357=$r26, var488=$r27, var1701=$z2, var2187=$r28, var3131=$r30, var3039=$r29, var3712=$r31, var3125=$r32, var3831=$z3, var1108=$r33, var1140=java.lang.Exception, var1295=$r60, var2447=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2171=$r61, var474=$r62, var8=$r64, var2222=java.lang.Throwable, var3394=$r63, var2699=$r65, var980=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var3238, r0=var3175, java.util.Hashtable=var2702, r59=var18, r1=var160, null_type=var3325, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1188, $z0=var3960, $r67=var118, r2=var2572, $r3=var108, $r68=var269, r8=var3928, java.io.File=var2868, $r9=var787, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2418, $r10=var1481, $r12=var549, $r11=var3924, $r13=var974, $r14=var2495, $r15=var1020, $z1=var3272, $r16=var236, $r18=var854, $r17=var346, $r19=var2684, $r20=var1007, 3=var3237, $r21=var2490, $r22=var3829, $r24=var181, $r23=var389, $r25=var2926, $r26=var3357, $r27=var488, $z2=var1701, $r28=var2187, $r30=var3131, $r29=var3039, $r31=var3712, $r32=var3125, $z3=var3831, $r33=var1108, java.lang.Exception=var1140, $r60=var1295, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2447, $r61=var2171, $r62=var474, $r64=var8, java.lang.Throwable=var2222, $r63=var3394, $r65=var2699, $r66=var980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11