(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2613 0)
(declare-sort var1431 0)
(declare-sort var3977 0)
(declare-sort var2368 0)
(declare-sort var2344 0)
(declare-sort var886 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2368) Bool)
(declare-fun cast-from-var2613-to-var2368 (var2613) var2368)
(declare-fun dbVendor/1029604219 (var2613) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2344-init () var2344)
(declare-fun getConfig/-1194828243 (var2368) var886)
(declare-fun descriptorDir/2019956101 (var886) var2344)
(declare-fun <init>/-1833447926 (var2344 var2344 String) void)
(declare-fun exists/1072868559 (var2344) Bool)
(declare-fun getPath/-1385219261 (var2344) String)
(declare-fun log/1006881114 (var2368 String Int) void)
(declare-fun put/1981026245 (var1431 var2042 var2042) var2042)
(declare-fun cast-from-String-to-var2042 (String) var2042)
(declare-fun cast-from-var2344-to-var2042 (var2344) var2042)
(declare-fun newCMP/1029604219 (var2613) Bool)
(declare-const null-var2613 var2613)
(declare-const null-var1431 var1431)
(declare-const null-String String)
(declare-const var3350 var2613) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3350 null-var2613)))
(declare-const var1757 var1431) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var1757 null-var1431)))
(declare-const var144 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var144 null-String)))
(assert true)
(define-const var2763 Bool (usingBaseJarName/-2133246527 (cast-from-var2613-to-var2368 var3350))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var2763 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3237 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var1981 String var3237) ; Statement: r2 = $r67 
(define-const var1046 String (dbVendor/1029604219 var3350)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var1046 null-String))) ; Cond: $r3 != null 
(define-const var3265 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3265)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3265!1 String)
(assert (= var3265!1 ""))
(define-const var1027 String (dbVendor/1029604219 var3350)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
(assert true)
(define-const var2355 String (append/672562846 var3265!1 var1027)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3265!2 String)
(assert (= var3265!2 (str.++ var3265!1 var1027)))
(assert true)
(define-const var2092 String (append/672562846 var2355 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2355!1 String)
(assert (= var2355!1 (str.++ var2355 "-")))
(assert true)
(define-const var1090 String (toString/-2075883882 var2092)) ; Statement: $r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3790 String var1090) ; Statement: r8 = $r68 
(define-const var2008 var2344 var2344-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var616 var886 (getConfig/-1194828243 (cast-from-var2613-to-var2368 var3350))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1004 var2344 (descriptorDir/2019956101 var616)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2569 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2569)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2569!1 String)
(assert (= var2569!1 ""))
(assert true)
(define-const var2475 String (append/672562846 var2569!1 var1981)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2569!2 String)
(assert (= var2569!2 (str.++ var2569!1 var1981)))
(assert true)
(define-const var2085 String (append/672562846 var2475 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var2475!1 String)
(assert (= var2475!1 (str.++ var2475 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var1072 String (toString/-2075883882 var2085)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2008 var1004 var1072)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var2008!1 var2344)
(declare-const var1004!1 var2344)
(declare-const var1072!1 String)
(assert true)
(define-const var1620 Bool (exists/1072868559 var2008!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var1620 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2964 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2964)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2964!1 String)
(assert (= var2964!1 ""))
(assert true)
(define-const var3085 String (append/672562846 var2964!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var2964!2 String)
(assert (= var2964!2 (str.++ var2964!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var3945 String (getPath/-1385219261 var2008!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3289 String (append/672562846 var3085 var3945)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3085!1 String)
(assert (= var3085!1 (str.++ var3085 var3945)))
(assert true)
(define-const var3941 String (toString/-2075883882 var3289)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2613-to-var2368 var3350) var3941 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var3350!1 var2613)
(declare-const var3941!1 String)
(declare-const var1292 Int)
(assert true) ; Non Conditional
(define-const var2133 var2344 var2344-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var1330 var886 (getConfig/-1194828243 (cast-from-var2613-to-var2368 var3350!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var951 var2344 (descriptorDir/2019956101 var1330)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2962 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2962)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2962!1 String)
(assert (= var2962!1 ""))
(assert true)
(define-const var3535 String (append/672562846 var2962!1 var1981)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2962!2 String)
(assert (= var2962!2 (str.++ var2962!1 var1981)))
(assert true)
(define-const var3737 String (append/672562846 var3535 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var3535!1 String)
(assert (= var3535!1 (str.++ var3535 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var655 String (toString/-2075883882 var3737)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2133 var951 var655)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var2133!1 var2344)
(declare-const var951!1 var2344)
(declare-const var655!1 String)
(assert true)
(define-const var85 Bool (exists/1072868559 var2133!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var85 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var1757 (cast-from-String-to-var2042 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var2344-to-var2042 var2133!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var1757!1 var1431)
(declare-const var2231 String)
(declare-const var2133!2 var2344)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var191 Bool (newCMP/1029604219 var3350!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (not (= (ite var191 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
;(assert (log/1006881114 (cast-from-var2613-to-var2368 var3350!1) "The old method for locating CMP files has been DEPRECATED." 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3) 

(declare-const var3350!2 var2613)
(declare-const var3605 String)
(declare-const var1292!1 Int)
(assert true)
;(assert (log/1006881114 (cast-from-var2613-to-var2368 var3350!2) "Please adjust your websphere descriptor and set newCMP=\u0022true\u0022 to use the new CMP descriptor inclusion mechanism. " 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3) 

(declare-const var3350!3 var2613)
(declare-const var966 String)
(declare-const var1292!2 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var2613-to-var2368=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2344-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2042=([java.lang.String], java.lang.Object), cast-from-var2344-to-var2042=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean)}
; {var2613=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3350=r0, var1431=java.util.Hashtable, var1757=r59, var144=r1, var3977=null_type, var2368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2763=$z0, var3237=$r67, var1981=r2, var1046=$r3, var3265=$r4, var1027=$r5, var2355=$r6, var2092=$r7, var1090=$r68, var3790=r8, var2344=java.io.File, var2008=$r9, var886=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var616=$r10, var1004=$r12, var2569=$r11, var2475=$r13, var2085=$r14, var1072=$r15, var1620=$z1, var2964=$r16, var3085=$r18, var3945=$r17, var3289=$r19, var3941=$r20, var1292=3, var2133=$r21, var1330=$r22, var951=$r24, var2962=$r23, var3535=$r25, var3737=$r26, var655=$r27, var85=$z2, var2042=java.lang.Object, var2231="META-INF/ibm-ejb-jar-bnd.xmi", var191=$z3, var3605="The old method for locating CMP files has been DEPRECATED.", var966="Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var2613, r0=var3350, java.util.Hashtable=var1431, r59=var1757, r1=var144, null_type=var3977, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2368, $z0=var2763, $r67=var3237, r2=var1981, $r3=var1046, $r4=var3265, $r5=var1027, $r6=var2355, $r7=var2092, $r68=var1090, r8=var3790, java.io.File=var2344, $r9=var2008, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var886, $r10=var616, $r12=var1004, $r11=var2569, $r13=var2475, $r14=var2085, $r15=var1072, $z1=var1620, $r16=var2964, $r18=var3085, $r17=var3945, $r19=var3289, $r20=var3941, 3=var1292, $r21=var2133, $r22=var1330, $r24=var951, $r23=var2962, $r25=var3535, $r26=var3737, $r27=var655, $z2=var85, java.lang.Object=var2042, "META-INF/ibm-ejb-jar-bnd.xmi"=var2231, $z3=var191, "The old method for locating CMP files has been DEPRECATED."=var3605, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "=var966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3);	goto [?= return];	return
;block_num 11