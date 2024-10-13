(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1907 0)
(declare-sort var2720 0)
(declare-sort var30 0)
(declare-sort var2605 0)
(declare-sort var3136 0)
(declare-sort var2038 0)
(declare-sort var3346 0)
(declare-sort var3239 0)
(declare-sort var1448 0)
(declare-sort var1715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2605) Bool)
(declare-fun cast-from-var1907-to-var2605 (var1907) var2605)
(declare-fun dbVendor/1029604219 (var1907) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3136-init () var3136)
(declare-fun getConfig/-1194828243 (var2605) var2038)
(declare-fun descriptorDir/2019956101 (var2038) var3136)
(declare-fun <init>/-1833447926 (var3136 var3136 String) void)
(declare-fun exists/1072868559 (var3136) Bool)
(declare-fun put/1981026245 (var2720 var3346 var3346) var3346)
(declare-fun cast-from-String-to-var3346 (String) var3346)
(declare-fun cast-from-var3136-to-var3346 (var3136) var3346)
(declare-fun getPath/-1385219261 (var3136) String)
(declare-fun log/1006881114 (var2605 String Int) void)
(declare-fun newCMP/1029604219 (var1907) Bool)
(declare-fun var1448-init () var1448)
(declare-fun toString/-1112415476 (var1715) String)
(declare-fun cast-from-var3239-to-var1715 (var3239) var1715)
(declare-fun <init>/-191906322 (var1448 String var1715) void)
(declare-const null-var1907 var1907)
(declare-const null-var2720 var2720)
(declare-const null-String String)
(declare-const null-var3239 var3239)
(declare-const var987 var1907) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var987 null-var1907)))
(declare-const var2832 var2720) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var2832 null-var2720)))
(declare-const var3646 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3646 null-String)))
(assert true)
(define-const var1610 Bool (usingBaseJarName/-2133246527 (cast-from-var1907-to-var2605 var987))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var1610 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2074 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var555 String var2074) ; Statement: r2 = $r67 
(define-const var2310 String (dbVendor/1029604219 var987)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var2310 null-String))) ; Cond: $r3 != null 
(define-const var223 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var223)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var223!1 String)
(assert (= var223!1 ""))
(define-const var2444 String (dbVendor/1029604219 var987)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
(assert true)
(define-const var504 String (append/672562846 var223!1 var2444)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var223!2 String)
(assert (= var223!2 (str.++ var223!1 var2444)))
(assert true)
(define-const var1081 String (append/672562846 var504 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var504!1 String)
(assert (= var504!1 (str.++ var504 "-")))
(assert true)
(define-const var3237 String (toString/-2075883882 var1081)) ; Statement: $r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1784 String var3237) ; Statement: r8 = $r68 
(define-const var416 var3136 var3136-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var2798 var2038 (getConfig/-1194828243 (cast-from-var1907-to-var2605 var987))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3471 var3136 (descriptorDir/2019956101 var2798)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var185 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var185)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var185!1 String)
(assert (= var185!1 ""))
(assert true)
(define-const var2876 String (append/672562846 var185!1 var555)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var185!2 String)
(assert (= var185!2 (str.++ var185!1 var555)))
(assert true)
(define-const var1580 String (append/672562846 var2876 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var2876!1 String)
(assert (= var2876!1 (str.++ var2876 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var2008 String (toString/-2075883882 var1580)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var416 var3471 var2008)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var416!1 var3136)
(declare-const var3471!1 var3136)
(declare-const var2008!1 String)
(assert true)
(define-const var763 Bool (exists/1072868559 var416!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var763 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (put/1981026245 var2832 (cast-from-String-to-var3346 "META-INF/ibm-ejb-jar-ext.xmi") (cast-from-var3136-to-var3346 var416!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9) 

(declare-const var2832!1 var2720)
(declare-const var2544 String)
(declare-const var416!2 var3136)
 ; Statement: goto [?= $r21 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var1507 var3136 var3136-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var240 var2038 (getConfig/-1194828243 (cast-from-var1907-to-var2605 var987))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1399 var3136 (descriptorDir/2019956101 var240)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1696 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1696)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1696!1 String)
(assert (= var1696!1 ""))
(assert true)
(define-const var3061 String (append/672562846 var1696!1 var555)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1696!2 String)
(assert (= var1696!2 (str.++ var1696!1 var555)))
(assert true)
(define-const var965 String (append/672562846 var3061 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var24 String (toString/-2075883882 var965)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1507 var1399 var24)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var1507!1 var3136)
(declare-const var1399!1 var3136)
(declare-const var24!1 String)
(assert true)
(define-const var1858 Bool (exists/1072868559 var1507!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var1858 1 0) 0)) ; Cond: $z2 == 0 
(define-const var201 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var201)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var201!1 String)
(assert (= var201!1 ""))
(assert true)
(define-const var900 String (append/672562846 var201!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var201!2 String)
(assert (= var201!2 (str.++ var201!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var2007 String (getPath/-1385219261 var1507!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1877 String (append/672562846 var900 var2007)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var900!1 String)
(assert (= var900!1 (str.++ var900 var2007)))
(assert true)
(define-const var429 String (toString/-2075883882 var1877)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1907-to-var2605 var987) var429 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var987!1 var1907)
(declare-const var429!1 String)
(declare-const var2020 Int)
(assert true) ; Non Conditional
(define-const var2654 Bool (newCMP/1029604219 var987!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var2654 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3874 var3136 var3136-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2411 var3239) ; Statement: $r60 := @caughtexception 
(assert (not (= var2411 null-var3239)))
(define-const var2837 var1448 var1448-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var21 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var21)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var21!1 String)
(assert (= var21!1 ""))
(assert true)
(define-const var1323 String (append/672562846 var21!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var21!2 String)
(assert (= var21!2 (str.++ var21!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var415 String (toString/-1112415476 (cast-from-var3239-to-var1715 var2411))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3261 String (append/672562846 var1323 var415)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var1323!1 String)
(assert (= var1323!1 (str.++ var1323 var415)))
(assert true)
(define-const var2854 String (toString/-2075883882 var3261)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2837 var2854 (cast-from-var3239-to-var1715 var2411))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var2837!1 var1448)
(declare-const var2854!1 String)
(declare-const var2411!1 var3239)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var1907-to-var2605=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3136-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3346=([java.lang.String], java.lang.Object), cast-from-var3136-to-var3346=([java.io.File], java.lang.Object), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var1448-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3239-to-var1715=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1907=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var987=r0, var2720=java.util.Hashtable, var2832=r59, var3646=r1, var30=null_type, var2605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1610=$z0, var2074=$r67, var555=r2, var2310=$r3, var223=$r4, var2444=$r5, var504=$r6, var1081=$r7, var3237=$r68, var1784=r8, var3136=java.io.File, var416=$r9, var2038=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var2798=$r10, var3471=$r12, var185=$r11, var2876=$r13, var1580=$r14, var2008=$r15, var763=$z1, var3346=java.lang.Object, var2544="META-INF/ibm-ejb-jar-ext.xmi", var1507=$r21, var240=$r22, var1399=$r24, var1696=$r23, var3061=$r25, var965=$r26, var24=$r27, var1858=$z2, var201=$r28, var900=$r30, var2007=$r29, var1877=$r31, var429=$r32, var2020=3, var2654=$z3, var3874=$r33, var3239=java.lang.Exception, var2411=$r60, var1448=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2837=$r61, var21=$r62, var1323=$r64, var1715=java.lang.Throwable, var415=$r63, var3261=$r65, var2854=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var1907, r0=var987, java.util.Hashtable=var2720, r59=var2832, r1=var3646, null_type=var30, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2605, $z0=var1610, $r67=var2074, r2=var555, $r3=var2310, $r4=var223, $r5=var2444, $r6=var504, $r7=var1081, $r68=var3237, r8=var1784, java.io.File=var3136, $r9=var416, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2038, $r10=var2798, $r12=var3471, $r11=var185, $r13=var2876, $r14=var1580, $r15=var2008, $z1=var763, java.lang.Object=var3346, "META-INF/ibm-ejb-jar-ext.xmi"=var2544, $r21=var1507, $r22=var240, $r24=var1399, $r23=var1696, $r25=var3061, $r26=var965, $r27=var24, $z2=var1858, $r28=var201, $r30=var900, $r29=var2007, $r31=var1877, $r32=var429, 3=var2020, $z3=var2654, $r33=var3874, java.lang.Exception=var3239, $r60=var2411, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1448, $r61=var2837, $r62=var21, $r64=var1323, java.lang.Throwable=var1715, $r63=var415, $r65=var3261, $r66=var2854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-ext.xmi", $r9);	goto [?= $r21 = new java.io.File];	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11