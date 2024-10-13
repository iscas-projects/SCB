(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var766 0)
(declare-sort var1149 0)
(declare-sort var741 0)
(declare-sort var2912 0)
(declare-sort var694 0)
(declare-sort var1671 0)
(declare-sort var1533 0)
(declare-sort var706 0)
(declare-sort var2185 0)
(declare-sort var581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2912) Bool)
(declare-fun cast-from-var766-to-var2912 (var766) var2912)
(declare-fun dbVendor/1029604219 (var766) String)
(declare-fun var694-init () var694)
(declare-fun getConfig/-1194828243 (var2912) var1671)
(declare-fun descriptorDir/2019956101 (var1671) var694)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var694 var694 String) void)
(declare-fun exists/1072868559 (var694) Bool)
(declare-fun getPath/-1385219261 (var694) String)
(declare-fun log/1006881114 (var2912 String Int) void)
(declare-fun put/1981026245 (var1149 var1533 var1533) var1533)
(declare-fun cast-from-String-to-var1533 (String) var1533)
(declare-fun cast-from-var694-to-var1533 (var694) var1533)
(declare-fun newCMP/1029604219 (var766) Bool)
(declare-fun var2185-init () var2185)
(declare-fun toString/-1112415476 (var581) String)
(declare-fun cast-from-var706-to-var581 (var706) var581)
(declare-fun <init>/-191906322 (var2185 String var581) void)
(declare-const null-var766 var766)
(declare-const null-var1149 var1149)
(declare-const null-String String)
(declare-const null-var706 var706)
(declare-const var2828 var766) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var2828 null-var766)))
(declare-const var2867 var1149) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var2867 null-var1149)))
(declare-const var3904 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3904 null-String)))
(assert true)
(define-const var3821 Bool (usingBaseJarName/-2133246527 (cast-from-var766-to-var2912 var2828))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var3821 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1771 String var3904) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var1774 String var1771) ; Statement: r2 = $r67 
(define-const var2411 String (dbVendor/1029604219 var2828)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var2411 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3333 String "") ; Statement: $r68 = "" 
 ; Statement: goto [?= r8 = $r68] 
(assert true) ; Non Conditional
(define-const var583 String var3333) ; Statement: r8 = $r68 
(define-const var3958 var694 var694-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var3009 var1671 (getConfig/-1194828243 (cast-from-var766-to-var2912 var2828))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var559 var694 (descriptorDir/2019956101 var3009)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1233 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1233)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1233!1 String)
(assert (= var1233!1 ""))
(assert true)
(define-const var1901 String (append/672562846 var1233!1 var1774)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1233!2 String)
(assert (= var1233!2 (str.++ var1233!1 var1774)))
(assert true)
(define-const var3026 String (append/672562846 var1901 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var1901!1 String)
(assert (= var1901!1 (str.++ var1901 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var863 String (toString/-2075883882 var3026)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3958 var559 var863)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var3958!1 var694)
(declare-const var559!1 var694)
(declare-const var863!1 String)
(assert true)
(define-const var79 Bool (exists/1072868559 var3958!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var79 1 0) 0)) ; Cond: $z1 == 0 
(define-const var271 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var271)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var271!1 String)
(assert (= var271!1 ""))
(assert true)
(define-const var284 String (append/672562846 var271!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var271!2 String)
(assert (= var271!2 (str.++ var271!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var2803 String (getPath/-1385219261 var3958!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1308 String (append/672562846 var284 var2803)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var284!1 String)
(assert (= var284!1 (str.++ var284 var2803)))
(assert true)
(define-const var795 String (toString/-2075883882 var1308)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var766-to-var2912 var2828) var795 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var2828!1 var766)
(declare-const var795!1 String)
(declare-const var2266 Int)
(assert true) ; Non Conditional
(define-const var2762 var694 var694-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3074 var1671 (getConfig/-1194828243 (cast-from-var766-to-var2912 var2828!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3930 var694 (descriptorDir/2019956101 var3074)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var715 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var715)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var715!1 String)
(assert (= var715!1 ""))
(assert true)
(define-const var2577 String (append/672562846 var715!1 var1774)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var715!2 String)
(assert (= var715!2 (str.++ var715!1 var1774)))
(assert true)
(define-const var373 String (append/672562846 var2577 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var2577!1 String)
(assert (= var2577!1 (str.++ var2577 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var1701 String (toString/-2075883882 var373)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2762 var3930 var1701)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var2762!1 var694)
(declare-const var3930!1 var694)
(declare-const var1701!1 String)
(assert true)
(define-const var624 Bool (exists/1072868559 var2762!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var624 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var2867 (cast-from-String-to-var1533 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var694-to-var1533 var2762!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var2867!1 var1149)
(declare-const var3219 String)
(declare-const var2762!2 var694)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var979 Bool (newCMP/1029604219 var2828!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var979 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1933 var694 var694-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2016 var706) ; Statement: $r60 := @caughtexception 
(assert (not (= var2016 null-var706)))
(define-const var1003 var2185 var2185-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2790 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2790)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2790!1 String)
(assert (= var2790!1 ""))
(assert true)
(define-const var1538 String (append/672562846 var2790!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var2790!2 String)
(assert (= var2790!2 (str.++ var2790!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var1994 String (toString/-1112415476 (cast-from-var706-to-var581 var2016))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var554 String (append/672562846 var1538 var1994)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var1538!1 String)
(assert (= var1538!1 (str.++ var1538 var1994)))
(assert true)
(define-const var2382 String (toString/-2075883882 var554)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1003 var2382 (cast-from-var706-to-var581 var2016))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var1003!1 var2185)
(declare-const var2382!1 String)
(declare-const var2016!1 var706)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var766-to-var2912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), var694-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1533=([java.lang.String], java.lang.Object), cast-from-var694-to-var1533=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var2185-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var706-to-var581=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var766=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var2828=r0, var1149=java.util.Hashtable, var2867=r59, var3904=r1, var741=null_type, var2912=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3821=$z0, var1771=$r67, var1774=r2, var2411=$r3, var3333=$r68, var583=r8, var694=java.io.File, var3958=$r9, var1671=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3009=$r10, var559=$r12, var1233=$r11, var1901=$r13, var3026=$r14, var863=$r15, var79=$z1, var271=$r16, var284=$r18, var2803=$r17, var1308=$r19, var795=$r20, var2266=3, var2762=$r21, var3074=$r22, var3930=$r24, var715=$r23, var2577=$r25, var373=$r26, var1701=$r27, var624=$z2, var1533=java.lang.Object, var3219="META-INF/ibm-ejb-jar-bnd.xmi", var979=$z3, var1933=$r33, var706=java.lang.Exception, var2016=$r60, var2185=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1003=$r61, var2790=$r62, var1538=$r64, var581=java.lang.Throwable, var1994=$r63, var554=$r65, var2382=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var766, r0=var2828, java.util.Hashtable=var1149, r59=var2867, r1=var3904, null_type=var741, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2912, $z0=var3821, $r67=var1771, r2=var1774, $r3=var2411, $r68=var3333, r8=var583, java.io.File=var694, $r9=var3958, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1671, $r10=var3009, $r12=var559, $r11=var1233, $r13=var1901, $r14=var3026, $r15=var863, $z1=var79, $r16=var271, $r18=var284, $r17=var2803, $r19=var1308, $r20=var795, 3=var2266, $r21=var2762, $r22=var3074, $r24=var3930, $r23=var715, $r25=var2577, $r26=var373, $r27=var1701, $z2=var624, java.lang.Object=var1533, "META-INF/ibm-ejb-jar-bnd.xmi"=var3219, $z3=var979, $r33=var1933, java.lang.Exception=var706, $r60=var2016, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2185, $r61=var1003, $r62=var2790, $r64=var1538, java.lang.Throwable=var581, $r63=var1994, $r65=var554, $r66=var2382}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r68 = "";	goto [?= r8 = $r68];	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11