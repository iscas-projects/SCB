(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1136 0)
(declare-sort var2380 0)
(declare-sort var1797 0)
(declare-sort var555 0)
(declare-sort var201 0)
(declare-sort var1334 0)
(declare-sort var3873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var555) Bool)
(declare-fun cast-from-var1136-to-var555 (var1136) var555)
(declare-fun dbVendor/1029604219 (var1136) String)
(declare-fun var201-init () var201)
(declare-fun getConfig/-1194828243 (var555) var1334)
(declare-fun descriptorDir/2019956101 (var1334) var201)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var201 var201 String) void)
(declare-fun exists/1072868559 (var201) Bool)
(declare-fun put/1981026245 (var2380 var3873 var3873) var3873)
(declare-fun cast-from-String-to-var3873 (String) var3873)
(declare-fun cast-from-var201-to-var3873 (var201) var3873)
(declare-fun newCMP/1029604219 (var1136) Bool)
(declare-fun log/1006881114 (var555 String Int) void)
(declare-const null-var1136 var1136)
(declare-const null-var2380 var2380)
(declare-const null-String String)
(declare-const var79 var1136) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var79 null-var1136)))
(declare-const var1617 var2380) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var1617 null-var2380)))
(declare-const var3273 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3273 null-String)))
(assert true)
(define-const var1181 Bool (usingBaseJarName/-2133246527 (cast-from-var1136-to-var555 var79))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var1181 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3870 String var3273) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var3515 String var3870) ; Statement: r2 = $r67 
(define-const var2055 String (dbVendor/1029604219 var79)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var2055 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var1287 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var2193 String var1287) ; Statement: r8 = $r68 
(define-const var2375 var201 var201-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var3043 var1334 (getConfig/-1194828243 (cast-from-var1136-to-var555 var79))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1946 var201 (descriptorDir/2019956101 var3043)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var522 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var522)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var522!1 String)
(assert (= var522!1 ""))
(assert true)
(define-const var330 String (append/672562846 var522!1 var3515)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var522!2 String)
(assert (= var522!2 (str.++ var522!1 var3515)))
(assert true)
(define-const var3905 String (append/672562846 var330 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var330!1 String)
(assert (= var330!1 (str.++ var330 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var2560 String (toString/-2075883882 var3905)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2375 var1946 var2560)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var2375!1 var201)
(declare-const var1946!1 var201)
(declare-const var2560!1 String)
(assert true)
(define-const var2077 Bool (exists/1072868559 var2375!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var2077 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var1617 (cast-from-String-to-var3873 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var201-to-var3873 var2375!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var1617!1 var2380)
(declare-const var1073 String)
(declare-const var2375!2 var201)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var1375 var201 var201-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3920 var1334 (getConfig/-1194828243 (cast-from-var1136-to-var555 var79))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3941 var201 (descriptorDir/2019956101 var3920)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1534 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1534)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1534!1 String)
(assert (= var1534!1 ""))
(assert true)
(define-const var3499 String (append/672562846 var1534!1 var3515)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1534!2 String)
(assert (= var1534!2 (str.++ var1534!1 var3515)))
(assert true)
(define-const var3504 String (append/672562846 var3499 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var3499!1 String)
(assert (= var3499!1 (str.++ var3499 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var606 String (toString/-2075883882 var3504)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1375 var3941 var606)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var1375!1 var201)
(declare-const var3941!1 var201)
(declare-const var606!1 String)
(assert true)
(define-const var1273 Bool (exists/1072868559 var1375!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var1273 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var1617!1 (cast-from-String-to-var3873 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var201-to-var3873 var1375!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var1617!2 var2380)
(declare-const var263 String)
(declare-const var1375!2 var201)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var1120 Bool (newCMP/1029604219 var79)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (not (= (ite var1120 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
;(assert (log/1006881114 (cast-from-var1136-to-var555 var79) "The old method for locating CMP files has been DEPRECATED." 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3) 

(declare-const var79!1 var1136)
(declare-const var72 String)
(declare-const var2823 Int)
(assert true)
;(assert (log/1006881114 (cast-from-var1136-to-var555 var79!1) "Please adjust your websphere descriptor and set newCMP=\u0022true\u0022 to use the new CMP descriptor inclusion mechanism. " 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3) 

(declare-const var79!2 var1136)
(declare-const var3048 String)
(declare-const var2823!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var1136-to-var555=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var201-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3873=([java.lang.String], java.lang.Object), cast-from-var201-to-var3873=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var1136=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var79=r0, var2380=java.util.Hashtable, var1617=r59, var3273=r1, var1797=null_type, var555=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1181=$z0, var3870=$r67, var3515=r2, var2055=$r3, var1287=$r68, var2193=r8, var201=java.io.File, var2375=$r9, var1334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3043=$r10, var1946=$r12, var522=$r11, var330=$r13, var3905=$r14, var2560=$r15, var2077=$z1, var3873=java.lang.Object, var1073="META-INF/ibm-ejb-jar-ext.xmi", var1375=$r21, var3920=$r22, var3941=$r24, var1534=$r23, var3499=$r25, var3504=$r26, var606=$r27, var1273=$z2, var263="META-INF/ibm-ejb-jar-bnd.xmi", var1120=$z3, var72="The old method for locating CMP files has been DEPRECATED.", var2823=3, var3048="Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var1136, r0=var79, java.util.Hashtable=var2380, r59=var1617, r1=var3273, null_type=var1797, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var555, $z0=var1181, $r67=var3870, r2=var3515, $r3=var2055, $r68=var1287, r8=var2193, java.io.File=var201, $r9=var2375, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1334, $r10=var3043, $r12=var1946, $r11=var522, $r13=var330, $r14=var3905, $r15=var2560, $z1=var2077, java.lang.Object=var3873, "META-INF/ibm-ejb-jar-ext.xmi"=var1073, $r21=var1375, $r22=var3920, $r24=var3941, $r23=var1534, $r25=var3499, $r26=var3504, $r27=var606, $z2=var1273, "META-INF/ibm-ejb-jar-bnd.xmi"=var263, $z3=var1120, "The old method for locating CMP files has been DEPRECATED."=var72, 3=var2823, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3);	goto [?= return];	return
;block_num 11