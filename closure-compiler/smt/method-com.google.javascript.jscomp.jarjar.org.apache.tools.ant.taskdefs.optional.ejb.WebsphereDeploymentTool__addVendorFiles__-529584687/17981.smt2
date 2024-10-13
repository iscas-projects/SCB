(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2362 0)
(declare-sort var3404 0)
(declare-sort var2443 0)
(declare-sort var2838 0)
(declare-sort var1183 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var2838) Bool)
(declare-fun cast-from-var2362-to-var2838 (var2362) var2838)
(declare-fun dbVendor/1029604219 (var2362) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1183-init () var1183)
(declare-fun getConfig/-1194828243 (var2838) var1652)
(declare-fun descriptorDir/2019956101 (var1652) var1183)
(declare-fun <init>/-1833447926 (var1183 var1183 String) void)
(declare-fun exists/1072868559 (var1183) Bool)
(declare-fun getPath/-1385219261 (var1183) String)
(declare-fun log/1006881114 (var2838 String Int) void)
(declare-fun newCMP/1029604219 (var2362) Bool)
(declare-const null-var2362 var2362)
(declare-const null-var3404 var3404)
(declare-const null-String String)
(declare-const var1011 var2362) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var1011 null-var2362)))
(declare-const var1768 var3404) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var1768 null-var3404)))
(declare-const var1582 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1582 null-String)))
(assert true)
(define-const var3022 Bool (usingBaseJarName/-2133246527 (cast-from-var2362-to-var2838 var1011))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (= (ite var3022 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2018 String var1582) ; Statement: $r67 = r1 
(assert true) ; Non Conditional
(define-const var1036 String var2018) ; Statement: r2 = $r67 
(define-const var51 String (dbVendor/1029604219 var1011)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var51 null-String))) ; Cond: $r3 != null 
(define-const var1366 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1366)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1366!1 String)
(assert (= var1366!1 ""))
(define-const var3397 String (dbVendor/1029604219 var1011)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
(assert true)
(define-const var275 String (append/672562846 var1366!1 var3397)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1366!2 String)
(assert (= var1366!2 (str.++ var1366!1 var3397)))
(assert true)
(define-const var2728 String (append/672562846 var275 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var275!1 String)
(assert (= var275!1 (str.++ var275 "-")))
(assert true)
(define-const var525 String (toString/-2075883882 var2728)) ; Statement: $r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var405 String var525) ; Statement: r8 = $r68 
(define-const var132 var1183 var1183-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var1071 var1652 (getConfig/-1194828243 (cast-from-var2362-to-var2838 var1011))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2452 var1183 (descriptorDir/2019956101 var1071)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1722 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1722)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1722!1 String)
(assert (= var1722!1 ""))
(assert true)
(define-const var2841 String (append/672562846 var1722!1 var1036)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1722!2 String)
(assert (= var1722!2 (str.++ var1722!1 var1036)))
(assert true)
(define-const var2302 String (append/672562846 var2841 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var2841!1 String)
(assert (= var2841!1 (str.++ var2841 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var639 String (toString/-2075883882 var2302)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var132 var2452 var639)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var132!1 var1183)
(declare-const var2452!1 var1183)
(declare-const var639!1 String)
(assert true)
(define-const var2064 Bool (exists/1072868559 var132!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var2064 1 0) 0)) ; Cond: $z1 == 0 
(define-const var978 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var978)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var978!1 String)
(assert (= var978!1 ""))
(assert true)
(define-const var3086 String (append/672562846 var978!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var978!2 String)
(assert (= var978!2 (str.++ var978!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var56 String (getPath/-1385219261 var132!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2831 String (append/672562846 var3086 var56)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 var56)))
(assert true)
(define-const var1369 String (toString/-2075883882 var2831)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2362-to-var2838 var1011) var1369 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var1011!1 var2362)
(declare-const var1369!1 String)
(declare-const var2156 Int)
(assert true) ; Non Conditional
(define-const var1965 var1183 var1183-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3509 var1652 (getConfig/-1194828243 (cast-from-var2362-to-var2838 var1011!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3090 var1183 (descriptorDir/2019956101 var3509)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var2797 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2797)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2797!1 String)
(assert (= var2797!1 ""))
(assert true)
(define-const var249 String (append/672562846 var2797!1 var1036)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2797!2 String)
(assert (= var2797!2 (str.++ var2797!1 var1036)))
(assert true)
(define-const var1329 String (append/672562846 var249 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var249!1 String)
(assert (= var249!1 (str.++ var249 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var1413 String (toString/-2075883882 var1329)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1965 var3090 var1413)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var1965!1 var1183)
(declare-const var3090!1 var1183)
(declare-const var1413!1 String)
(assert true)
(define-const var2624 Bool (exists/1072868559 var1965!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (= (ite var2624 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1637 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1637)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1637!1 String)
(assert (= var1637!1 ""))
(assert true)
(define-const var3644 String (append/672562846 var1637!1 "Unable to locate websphere bindings. It was expected to be in ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ") 
(declare-const var1637!2 String)
(assert (= var1637!2 (str.++ var1637!1 "Unable to locate websphere bindings. It was expected to be in ")))
(assert true)
(define-const var601 String (getPath/-1385219261 var1965!1)) ; Statement: $r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2754 String (append/672562846 var3644 var601)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3644!1 String)
(assert (= var3644!1 (str.++ var3644 var601)))
(assert true)
(define-const var1145 String (toString/-2075883882 var2754)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2362-to-var2838 var1011!1) var1145 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3) 

(declare-const var1011!2 var2362)
(declare-const var1145!1 String)
(declare-const var2156!1 Int)
(assert true) ; Non Conditional
(define-const var3658 Bool (newCMP/1029604219 var1011!2)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (not (= (ite var3658 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
;(assert (log/1006881114 (cast-from-var2362-to-var2838 var1011!2) "The old method for locating CMP files has been DEPRECATED." 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3) 

(declare-const var1011!3 var2362)
(declare-const var3293 String)
(declare-const var2156!2 Int)
(assert true)
;(assert (log/1006881114 (cast-from-var2362-to-var2838 var1011!3) "Please adjust your websphere descriptor and set newCMP=\u0022true\u0022 to use the new CMP descriptor inclusion mechanism. " 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3) 

(declare-const var1011!4 var2362)
(declare-const var2006 String)
(declare-const var2156!3 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var2362-to-var2838=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1183-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean)}
; {var2362=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var1011=r0, var3404=java.util.Hashtable, var1768=r59, var1582=r1, var2443=null_type, var2838=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3022=$z0, var2018=$r67, var1036=r2, var51=$r3, var1366=$r4, var3397=$r5, var275=$r6, var2728=$r7, var525=$r68, var405=r8, var1183=java.io.File, var132=$r9, var1652=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1071=$r10, var2452=$r12, var1722=$r11, var2841=$r13, var2302=$r14, var639=$r15, var2064=$z1, var978=$r16, var3086=$r18, var56=$r17, var2831=$r19, var1369=$r20, var2156=3, var1965=$r21, var3509=$r22, var3090=$r24, var2797=$r23, var249=$r25, var1329=$r26, var1413=$r27, var2624=$z2, var1637=$r28, var3644=$r30, var601=$r29, var2754=$r31, var1145=$r32, var3658=$z3, var3293="The old method for locating CMP files has been DEPRECATED.", var2006="Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var2362, r0=var1011, java.util.Hashtable=var3404, r59=var1768, r1=var1582, null_type=var2443, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2838, $z0=var3022, $r67=var2018, r2=var1036, $r3=var51, $r4=var1366, $r5=var3397, $r6=var275, $r7=var2728, $r68=var525, r8=var405, java.io.File=var1183, $r9=var132, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1652, $r10=var1071, $r12=var2452, $r11=var1722, $r13=var2841, $r14=var2302, $r15=var639, $z1=var2064, $r16=var978, $r18=var3086, $r17=var56, $r19=var2831, $r20=var1369, 3=var2156, $r21=var1965, $r22=var3509, $r24=var3090, $r23=var2797, $r25=var249, $r26=var1329, $r27=var1413, $z2=var2624, $r28=var1637, $r30=var3644, $r29=var601, $r31=var2754, $r32=var1145, $z3=var3658, "The old method for locating CMP files has been DEPRECATED."=var3293, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "=var2006}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = r1;	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere bindings. It was expected to be in ");	$r29 = virtualinvoke $r21.<java.io.File: java.lang.String getPath()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r32, 3);	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("The old method for locating CMP files has been DEPRECATED.", 3);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>("Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. ", 3);	goto [?= return];	return
;block_num 11