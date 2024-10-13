(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var2456 0)
(declare-sort var347 0)
(declare-sort var2668 0)
(declare-sort var2085 0)
(declare-sort var2329 0)
(declare-sort var3618 0)
(declare-sort var2712 0)
(declare-sort var2647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2668) Bool)
(declare-fun cast-from-var3395-to-var2668 (var3395) var2668)
(declare-fun dbVendor/1029604219 (var3395) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2085-init () var2085)
(declare-fun getConfig/-1194828243 (var2668) var2329)
(declare-fun descriptorDir/2019956101 (var2329) var2085)
(declare-fun <init>/-1833447926 (var2085 var2085 String) void)
(declare-fun exists/1072868559 (var2085) Bool)
(declare-fun getPath/-1385219261 (var2085) String)
(declare-fun log/1006881114 (var2668 String Int) void)
(declare-fun newCMP/1029604219 (var3395) Bool)
(declare-fun var2712-init () var2712)
(declare-fun toString/-1112415476 (var2647) String)
(declare-fun cast-from-var3618-to-var2647 (var3618) var2647)
(declare-fun <init>/-191906322 (var2712 String var2647) void)
(declare-const null-var3395 var3395)
(declare-const null-var2456 var2456)
(declare-const null-String String)
(declare-const null-var3618 var3618)
(declare-const var979 var3395) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var979 null-var3395)))
(declare-const var498 var2456) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var498 null-var2456)))
(declare-const var1057 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1057 null-String)))
(assert true)
(define-const var742 Bool (usingBaseJarName/-2133246527 (cast-from-var3395-to-var2668 var979))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var742 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2645 String var1057) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var2402 String var2645) ; Statement: r2 = $r67 
(define-const var1746 String (dbVendor/1029604219 var979)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var1746 null-String))) ; Cond: $r3 != null 
(define-const var137 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var137)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var137!1 String)
(assert (= var137!1 ""))
(define-const var1549 String (dbVendor/1029604219 var979)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
(assert true)
(define-const var2732 String (append/672562846 var137!1 var1549)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var137!2 String)
(assert (= var137!2 (str.++ var137!1 var1549)))
(assert true)
(define-const var230 String (append/672562846 var2732 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2732!1 String)
(assert (= var2732!1 (str.++ var2732 "-")))
(assert true)
(define-const var710 String (toString/-2075883882 var230)) ; Statement: $r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1875 String var710) ; Statement: r8 = $r68 
(define-const var885 var2085 var2085-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var3113 var2329 (getConfig/-1194828243 (cast-from-var3395-to-var2668 var979))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var567 var2085 (descriptorDir/2019956101 var3113)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3633 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3633)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3633!1 String)
(assert (= var3633!1 ""))
(assert true)
(define-const var1522 String (append/672562846 var3633!1 var2402)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3633!2 String)
(assert (= var3633!2 (str.++ var3633!1 var2402)))
(assert true)
(define-const var3414 String (append/672562846 var1522 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var1162 String (toString/-2075883882 var3414)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var885 var567 var1162)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var885!1 var2085)
(declare-const var567!1 var2085)
(declare-const var1162!1 String)
(assert true)
(define-const var422 Bool (exists/1072868559 var885!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var422 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1020 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1020)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1020!1 String)
(assert (= var1020!1 ""))
(assert true)
(define-const var627 String (append/672562846 var1020!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var1020!2 String)
(assert (= var1020!2 (str.++ var1020!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var2958 String (getPath/-1385219261 var885!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3932 String (append/672562846 var627 var2958)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var627!1 String)
(assert (= var627!1 (str.++ var627 var2958)))
(assert true)
(define-const var600 String (toString/-2075883882 var3932)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3395-to-var2668 var979) var600 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var979!1 var3395)
(declare-const var600!1 String)
(declare-const var654 Int)
(assert true) ; Non Conditional
(define-const var3397 var2085 var2085-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3399 var2329 (getConfig/-1194828243 (cast-from-var3395-to-var2668 var979!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var274 var2085 (descriptorDir/2019956101 var3399)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3543 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3543)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3543!1 String)
(assert (= var3543!1 ""))
(assert true)
(define-const var629 String (append/672562846 var3543!1 var2402)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3543!2 String)
(assert (= var3543!2 (str.++ var3543!1 var2402)))
(assert true)
(define-const var3450 String (append/672562846 var629 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var1378 String (toString/-2075883882 var3450)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3397 var274 var1378)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var3397!1 var2085)
(declare-const var274!1 var2085)
(declare-const var1378!1 String)
(assert true)
(define-const var2688 Bool (exists/1072868559 var3397!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var2688 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3755 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3755)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3755!1 String)
(assert (= var3755!1 ""))
(assert true)
(define-const var2074 String (append/672562846 var3755!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var3755!2 String)
(assert (= var3755!2 (str.++ var3755!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var2084 String (getPath/-1385219261 var3397!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3887 String (append/672562846 var2074 var2084)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2074!1 String)
(assert (= var2074!1 (str.++ var2074 var2084)))
(assert true)
(define-const var1941 String (toString/-2075883882 var3887)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3395-to-var2668 var979!1) var1941 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var979!2 var3395)
(declare-const var1941!1 String)
(declare-const var654!1 Int)
(assert true) ; Non Conditional
(define-const var556 Bool (newCMP/1029604219 var979!2)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var556 1 0) 0))) ; Cond: $z3 != 0 
(define-const var2162 var2085 var2085-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1927 var3618) ; Statement: $r60 := @caughtexception 
(assert (not (= var1927 null-var3618)))
(define-const var1123 var2712 var2712-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var565 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var565)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var565!1 String)
(assert (= var565!1 ""))
(assert true)
(define-const var2383 String (append/672562846 var565!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var565!2 String)
(assert (= var565!2 (str.++ var565!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var2582 String (toString/-1112415476 (cast-from-var3618-to-var2647 var1927))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3400 String (append/672562846 var2383 var2582)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2383!1 String)
(assert (= var2383!1 (str.++ var2383 var2582)))
(assert true)
(define-const var2524 String (toString/-2075883882 var3400)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1123 var2524 (cast-from-var3618-to-var2647 var1927))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var1123!1 var2712)
(declare-const var2524!1 String)
(declare-const var1927!1 var3618)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var3395-to-var2668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2085-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var2712-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3618-to-var2647=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3395=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var979=r0, var2456=java.util.Hashtable, var498=r59, var1057=r1, var347=null_type, var2668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var742=$z0, var2645=$r67, var2402=r2, var1746=$r3, var137=$r4, var1549=$r5, var2732=$r6, var230=$r7, var710=$r68, var1875=r8, var2085=java.io.File, var885=$r9, var2329=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3113=$r10, var567=$r12, var3633=$r11, var1522=$r13, var3414=$r14, var1162=$r15, var422=$z1, var1020=$r16, var627=$r18, var2958=$r17, var3932=$r19, var600=$r20, var654=3, var3397=$r21, var3399=$r22, var274=$r24, var3543=$r23, var629=$r25, var3450=$r26, var1378=$r27, var2688=$z2, var3755=$r28, var2074=$r30, var2084=$r29, var3887=$r31, var1941=$r32, var556=$z3, var2162=$r33, var3618=java.lang.Exception, var1927=$r60, var2712=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1123=$r61, var565=$r62, var2383=$r64, var2647=java.lang.Throwable, var2582=$r63, var3400=$r65, var2524=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var3395, r0=var979, java.util.Hashtable=var2456, r59=var498, r1=var1057, null_type=var347, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2668, $z0=var742, $r67=var2645, r2=var2402, $r3=var1746, $r4=var137, $r5=var1549, $r6=var2732, $r7=var230, $r68=var710, r8=var1875, java.io.File=var2085, $r9=var885, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2329, $r10=var3113, $r12=var567, $r11=var3633, $r13=var1522, $r14=var3414, $r15=var1162, $z1=var422, $r16=var1020, $r18=var627, $r17=var2958, $r19=var3932, $r20=var600, 3=var654, $r21=var3397, $r22=var3399, $r24=var274, $r23=var3543, $r25=var629, $r26=var3450, $r27=var1378, $z2=var2688, $r28=var3755, $r30=var2074, $r29=var2084, $r31=var3887, $r32=var1941, $z3=var556, $r33=var2162, java.lang.Exception=var3618, $r60=var1927, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2712, $r61=var1123, $r62=var565, $r64=var2383, java.lang.Throwable=var2647, $r63=var2582, $r65=var3400, $r66=var2524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11