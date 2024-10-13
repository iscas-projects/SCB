(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2643 0)
(declare-sort var790 0)
(declare-sort var427 0)
(declare-sort var886 0)
(declare-sort var3646 0)
(declare-sort var163 0)
(declare-sort var1116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var886) Bool)
(declare-fun cast-from-var2643-to-var886 (var2643) var886)
(declare-fun dbVendor/1029604219 (var2643) String)
(declare-fun var3646-init () var3646)
(declare-fun getConfig/-1194828243 (var886) var163)
(declare-fun descriptorDir/2019956101 (var163) var3646)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3646 var3646 String) void)
(declare-fun exists/1072868559 (var3646) Bool)
(declare-fun put/1981026245 (var790 var1116 var1116) var1116)
(declare-fun cast-from-String-to-var1116 (String) var1116)
(declare-fun cast-from-var3646-to-var1116 (var3646) var1116)
(declare-fun getPath/-1385219261 (var3646) String)
(declare-fun log/1006881114 (var886 String Int) void)
(declare-fun newCMP/1029604219 (var2643) Bool)
(declare-const null-var2643 var2643)
(declare-const null-var790 var790)
(declare-const null-String String)
(declare-const var1424 var2643) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var1424 null-var2643)))
(declare-const var2446 var790) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var2446 null-var790)))
(declare-const var597 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var597 null-String)))
(assert true)
(define-const var3404 Bool (usingBaseJarName/-2133246527 (cast-from-var2643-to-var886 var1424))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var3404 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2937 String var597) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var2100 String var2937) ; Statement: r2 = $r67 
(define-const var86 String (dbVendor/1029604219 var1424)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var86 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var1028 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var3189 String var1028) ; Statement: r8 = $r68 
(define-const var3969 var3646 var3646-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var3618 var163 (getConfig/-1194828243 (cast-from-var2643-to-var886 var1424))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1509 var3646 (descriptorDir/2019956101 var3618)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1021 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1021)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1021!1 String)
(assert (= var1021!1 ""))
(assert true)
(define-const var1596 String (append/672562846 var1021!1 var2100)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1021!2 String)
(assert (= var1021!2 (str.++ var1021!1 var2100)))
(assert true)
(define-const var1999 String (append/672562846 var1596 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var1596!1 String)
(assert (= var1596!1 (str.++ var1596 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var3612 String (toString/-2075883882 var1999)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3969 var1509 var3612)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var3969!1 var3646)
(declare-const var1509!1 var3646)
(declare-const var3612!1 String)
(assert true)
(define-const var3254 Bool (exists/1072868559 var3969!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var3254 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var2446 (cast-from-String-to-var1116 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var3646-to-var1116 var3969!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var2446!1 var790)
(declare-const var3649 String)
(declare-const var3969!2 var3646)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var3205 var3646 var3646-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var1198 var163 (getConfig/-1194828243 (cast-from-var2643-to-var886 var1424))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3389 var3646 (descriptorDir/2019956101 var1198)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2342 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2342)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2342!1 String)
(assert (= var2342!1 ""))
(assert true)
(define-const var3996 String (append/672562846 var2342!1 var2100)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 var2100)))
(assert true)
(define-const var1114 String (append/672562846 var3996 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var3996!1 String)
(assert (= var3996!1 (str.++ var3996 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var8 String (toString/-2075883882 var1114)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3205 var3389 var8)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var3205!1 var3646)
(declare-const var3389!1 var3646)
(declare-const var8!1 String)
(assert true)
(define-const var1399 Bool (exists/1072868559 var3205!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var1399 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2043 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2043)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2043!1 String)
(assert (= var2043!1 ""))
(assert true)
(define-const var2459 String (append/672562846 var2043!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var2043!2 String)
(assert (= var2043!2 (str.++ var2043!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var2261 String (getPath/-1385219261 var3205!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2661 String (append/672562846 var2459 var2261)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2459!1 String)
(assert (= var2459!1 (str.++ var2459 var2261)))
(assert true)
(define-const var2232 String (toString/-2075883882 var2661)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2643-to-var886 var1424) var2232 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var1424!1 var2643)
(declare-const var2232!1 String)
(declare-const var2305 Int)
(assert true) ; Non Conditional
(define-const var2229 Bool (newCMP/1029604219 var1424!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (not (= (ite var2229 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
;(assert (log/1006881114 (cast-from-var2643-to-var886 var1424!1) "The old method for locating CMP files has been DEPRECATED." 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3) 

(declare-const var1424!2 var2643)
(declare-const var2929 String)
(declare-const var2305!1 Int)
(assert true)
;(assert (log/1006881114 (cast-from-var2643-to-var886 var1424!2) "Please adjust your websphere descriptor and set newCMP=\u0022true\u0022 to use the new CMP descriptor inclusion mechanism. " 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3) 

(declare-const var1424!3 var2643)
(declare-const var151 String)
(declare-const var2305!2 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var2643-to-var886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var3646-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1116=([java.lang.String], java.lang.Object), cast-from-var3646-to-var1116=([java.io.File], java.lang.Object), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean)}
; {var2643=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var1424=r0, var790=java.util.Hashtable, var2446=r59, var597=r1, var427=null_type, var886=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3404=$z0, var2937=$r67, var2100=r2, var86=$r3, var1028=$r68, var3189=r8, var3646=java.io.File, var3969=$r9, var163=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3618=$r10, var1509=$r12, var1021=$r11, var1596=$r13, var1999=$r14, var3612=$r15, var3254=$z1, var1116=java.lang.Object, var3649="META-INF/ibm-ejb-jar-ext.xmi", var3205=$r21, var1198=$r22, var3389=$r24, var2342=$r23, var3996=$r25, var1114=$r26, var8=$r27, var1399=$z2, var2043=$r28, var2459=$r30, var2261=$r29, var2661=$r31, var2232=$r32, var2305=3, var2229=$z3, var2929="The old method for locating CMP files has been DEPRECATED.", var151="Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var2643, r0=var1424, java.util.Hashtable=var790, r59=var2446, r1=var597, null_type=var427, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var886, $z0=var3404, $r67=var2937, r2=var2100, $r3=var86, $r68=var1028, r8=var3189, java.io.File=var3646, $r9=var3969, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var163, $r10=var3618, $r12=var1509, $r11=var1021, $r13=var1596, $r14=var1999, $r15=var3612, $z1=var3254, java.lang.Object=var1116, "META-INF/ibm-ejb-jar-ext.xmi"=var3649, $r21=var3205, $r22=var1198, $r24=var3389, $r23=var2342, $r25=var3996, $r26=var1114, $r27=var8, $z2=var1399, $r28=var2043, $r30=var2459, $r29=var2261, $r31=var2661, $r32=var2232, 3=var2305, $z3=var2229, "The old method for locating CMP files has been DEPRECATED."=var2929, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "=var151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3);	goto [?= return];	return
;block_num 11