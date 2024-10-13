(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3026 0)
(declare-sort var2846 0)
(declare-sort var1739 0)
(declare-sort var1697 0)
(declare-sort var670 0)
(declare-sort var1864 0)
(declare-sort var1279 0)
(declare-sort var53 0)
(declare-sort var3937 0)
(declare-sort var718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var1697) Bool)
(declare-fun cast-from-var3026-to-var1697 (var3026) var1697)
(declare-fun dbVendor/1029604219 (var3026) String)
(declare-fun var670-init () var670)
(declare-fun getConfig/-1194828243 (var1697) var1864)
(declare-fun descriptorDir/2019956101 (var1864) var670)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var670 var670 String) void)
(declare-fun exists/1072868559 (var670) Bool)
(declare-fun put/1981026245 (var2846 var1279 var1279) var1279)
(declare-fun cast-from-String-to-var1279 (String) var1279)
(declare-fun cast-from-var670-to-var1279 (var670) var1279)
(declare-fun getPath/-1385219261 (var670) String)
(declare-fun log/1006881114 (var1697 String Int) void)
(declare-fun newCMP/1029604219 (var3026) Bool)
(declare-fun var3937-init () var3937)
(declare-fun toString/-1112415476 (var718) String)
(declare-fun cast-from-var53-to-var718 (var53) var718)
(declare-fun <init>/-191906322 (var3937 String var718) void)
(declare-const null-var3026 var3026)
(declare-const null-var2846 var2846)
(declare-const null-String String)
(declare-const null-var53 var53)
(declare-const var776 var3026) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var776 null-var3026)))
(declare-const var1722 var2846) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var1722 null-var2846)))
(declare-const var1110 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1110 null-String)))
(assert true)
(define-const var1127 Bool (usingBaseJarName/-2133246527 (cast-from-var3026-to-var1697 var776))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var1127 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2264 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var2929 String var2264) ; Statement: r2 = $r67 
(define-const var14 String (dbVendor/1029604219 var776)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var14 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3228 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var639 String var3228) ; Statement: r8 = $r68 
(define-const var851 var670 var670-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var205 var1864 (getConfig/-1194828243 (cast-from-var3026-to-var1697 var776))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var415 var670 (descriptorDir/2019956101 var205)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3909 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3909)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3909!1 String)
(assert (= var3909!1 ""))
(assert true)
(define-const var1293 String (append/672562846 var3909!1 var2929)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3909!2 String)
(assert (= var3909!2 (str.++ var3909!1 var2929)))
(assert true)
(define-const var208 String (append/672562846 var1293 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var2630 String (toString/-2075883882 var208)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var851 var415 var2630)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var851!1 var670)
(declare-const var415!1 var670)
(declare-const var2630!1 String)
(assert true)
(define-const var2767 Bool (exists/1072868559 var851!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var2767 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var1722 (cast-from-String-to-var1279 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var670-to-var1279 var851!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var1722!1 var2846)
(declare-const var1464 String)
(declare-const var851!2 var670)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var3477 var670 var670-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var197 var1864 (getConfig/-1194828243 (cast-from-var3026-to-var1697 var776))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var98 var670 (descriptorDir/2019956101 var197)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var786 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var786)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var786!1 String)
(assert (= var786!1 ""))
(assert true)
(define-const var3248 String (append/672562846 var786!1 var2929)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var786!2 String)
(assert (= var786!2 (str.++ var786!1 var2929)))
(assert true)
(define-const var880 String (append/672562846 var3248 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var3248!1 String)
(assert (= var3248!1 (str.++ var3248 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var3931 String (toString/-2075883882 var880)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3477 var98 var3931)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var3477!1 var670)
(declare-const var98!1 var670)
(declare-const var3931!1 String)
(assert true)
(define-const var3221 Bool (exists/1072868559 var3477!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var3221 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1206 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1206)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1206!1 String)
(assert (= var1206!1 ""))
(assert true)
(define-const var1877 String (append/672562846 var1206!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var1206!2 String)
(assert (= var1206!2 (str.++ var1206!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var2401 String (getPath/-1385219261 var3477!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3498 String (append/672562846 var1877 var2401)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var2401)))
(assert true)
(define-const var1731 String (toString/-2075883882 var3498)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3026-to-var1697 var776) var1731 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var776!1 var3026)
(declare-const var1731!1 String)
(declare-const var3554 Int)
(assert true) ; Non Conditional
(define-const var1869 Bool (newCMP/1029604219 var776!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var1869 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3504 var670 var670-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1181 var53) ; Statement: $r60 := @caughtexception 
(assert (not (= var1181 null-var53)))
(define-const var1172 var3937 var3937-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1300 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1300)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1300!1 String)
(assert (= var1300!1 ""))
(assert true)
(define-const var2058 String (append/672562846 var1300!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var1300!2 String)
(assert (= var1300!2 (str.++ var1300!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var3872 String (toString/-1112415476 (cast-from-var53-to-var718 var1181))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2200 String (append/672562846 var2058 var3872)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2058!1 String)
(assert (= var2058!1 (str.++ var2058 var3872)))
(assert true)
(define-const var744 String (toString/-2075883882 var2200)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1172 var744 (cast-from-var53-to-var718 var1181))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var1172!1 var3937)
(declare-const var744!1 String)
(declare-const var1181!1 var53)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var3026-to-var1697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var670-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1279=([java.lang.String], java.lang.Object), cast-from-var670-to-var1279=([java.io.File], java.lang.Object), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var3937-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var53-to-var718=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3026=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var776=r0, var2846=java.util.Hashtable, var1722=r59, var1110=r1, var1739=null_type, var1697=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1127=$z0, var2264=$r67, var2929=r2, var14=$r3, var3228=$r68, var639=r8, var670=java.io.File, var851=$r9, var1864=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var205=$r10, var415=$r12, var3909=$r11, var1293=$r13, var208=$r14, var2630=$r15, var2767=$z1, var1279=java.lang.Object, var1464="META-INF/ibm-ejb-jar-ext.xmi", var3477=$r21, var197=$r22, var98=$r24, var786=$r23, var3248=$r25, var880=$r26, var3931=$r27, var3221=$z2, var1206=$r28, var1877=$r30, var2401=$r29, var3498=$r31, var1731=$r32, var3554=3, var1869=$z3, var3504=$r33, var53=java.lang.Exception, var1181=$r60, var3937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1172=$r61, var1300=$r62, var2058=$r64, var718=java.lang.Throwable, var3872=$r63, var2200=$r65, var744=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var3026, r0=var776, java.util.Hashtable=var2846, r59=var1722, r1=var1110, null_type=var1739, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1697, $z0=var1127, $r67=var2264, r2=var2929, $r3=var14, $r68=var3228, r8=var639, java.io.File=var670, $r9=var851, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1864, $r10=var205, $r12=var415, $r11=var3909, $r13=var1293, $r14=var208, $r15=var2630, $z1=var2767, java.lang.Object=var1279, "META-INF/ibm-ejb-jar-ext.xmi"=var1464, $r21=var3477, $r22=var197, $r24=var98, $r23=var786, $r25=var3248, $r26=var880, $r27=var3931, $z2=var3221, $r28=var1206, $r30=var1877, $r29=var2401, $r31=var3498, $r32=var1731, 3=var3554, $z3=var1869, $r33=var3504, java.lang.Exception=var53, $r60=var1181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3937, $r61=var1172, $r62=var1300, $r64=var2058, java.lang.Throwable=var718, $r63=var3872, $r65=var2200, $r66=var744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11