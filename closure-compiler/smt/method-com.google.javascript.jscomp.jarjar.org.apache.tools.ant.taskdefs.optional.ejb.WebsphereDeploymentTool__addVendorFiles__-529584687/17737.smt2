(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2388 0)
(declare-sort var2420 0)
(declare-sort var3652 0)
(declare-sort var676 0)
(declare-sort var997 0)
(declare-sort var2018 0)
(declare-sort var513 0)
(declare-sort var1454 0)
(declare-sort var966 0)
(declare-sort var2755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usingBaseJarName/-2133246527 (var676) Bool)
(declare-fun cast-from-var2388-to-var676 (var2388) var676)
(declare-fun dbVendor/1029604219 (var2388) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var997-init () var997)
(declare-fun getConfig/-1194828243 (var676) var2018)
(declare-fun descriptorDir/2019956101 (var2018) var997)
(declare-fun <init>/-1833447926 (var997 var997 String) void)
(declare-fun exists/1072868559 (var997) Bool)
(declare-fun getPath/-1385219261 (var997) String)
(declare-fun log/1006881114 (var676 String Int) void)
(declare-fun put/1981026245 (var2420 var513 var513) var513)
(declare-fun cast-from-String-to-var513 (String) var513)
(declare-fun cast-from-var997-to-var513 (var997) var513)
(declare-fun newCMP/1029604219 (var2388) Bool)
(declare-fun var966-init () var966)
(declare-fun toString/-1112415476 (var2755) String)
(declare-fun cast-from-var1454-to-var2755 (var1454) var2755)
(declare-fun <init>/-191906322 (var966 String var2755) void)
(declare-const null-var2388 var2388)
(declare-const null-var2420 var2420)
(declare-const null-String String)
(declare-const null-var1454 var1454)
(declare-const var3637 var2388) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool 
(assert (not (= var3637 null-var2388)))
(declare-const var3005 var2420) ; Statement: r59 := @parameter0: java.util.Hashtable 
(assert (not (= var3005 null-var2420)))
(declare-const var2147 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2147 null-String)))
(assert true)
(define-const var1470 Bool (usingBaseJarName/-2133246527 (cast-from-var2388-to-var676 var3637))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>() 
 ; Statement: if $z0 == 0 goto $r67 = r1 
(assert (not (= (ite var1470 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3868 String "") ; Statement: $r67 = "" 
 ; Statement: goto [?= r2 = $r67] 
(assert true) ; Non Conditional
(define-const var3025 String var3868) ; Statement: r2 = $r67 
(define-const var234 String (dbVendor/1029604219 var3637)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var234 null-String))) ; Cond: $r3 != null 
(define-const var1951 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1951)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1951!1 String)
(assert (= var1951!1 ""))
(define-const var1828 String (dbVendor/1029604219 var3637)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor> 
(assert true)
(define-const var2797 String (append/672562846 var1951!1 var1828)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1951!2 String)
(assert (= var1951!2 (str.++ var1951!1 var1828)))
(assert true)
(define-const var1043 String (append/672562846 var2797 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2797!1 String)
(assert (= var2797!1 (str.++ var2797 "-")))
(assert true)
(define-const var2062 String (toString/-2075883882 var1043)) ; Statement: $r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var856 String var2062) ; Statement: r8 = $r68 
(define-const var276 var997 var997-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var439 var2018 (getConfig/-1194828243 (cast-from-var2388-to-var676 var3637))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2172 var997 (descriptorDir/2019956101 var439)) ; Statement: $r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1453 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1453)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1453!1 String)
(assert (= var1453!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var1453!1 var3025)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1453!2 String)
(assert (= var1453!2 (str.++ var1453!1 var3025)))
(assert true)
(define-const var1688 String (append/672562846 var1713 "ibm-ejb-jar-ext.xmi")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi") 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 "ibm-ejb-jar-ext.xmi")))
(assert true)
(define-const var1217 String (toString/-2075883882 var1688)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var276 var2172 var1217)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15) 

(declare-const var276!1 var997)
(declare-const var2172!1 var997)
(declare-const var1217!1 String)
(assert true)
(define-const var744 Bool (exists/1072868559 var276!1)) ; Statement: $z1 = virtualinvoke $r9.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var744 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3932 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3932)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3932!1 String)
(assert (= var3932!1 ""))
(assert true)
(define-const var155 String (append/672562846 var3932!1 "Unable to locate websphere extensions. It was expected to be in ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ") 
(declare-const var3932!2 String)
(assert (= var3932!2 (str.++ var3932!1 "Unable to locate websphere extensions. It was expected to be in ")))
(assert true)
(define-const var3550 String (getPath/-1385219261 var276!1)) ; Statement: $r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var203 String (append/672562846 var155 var3550)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var155!1 String)
(assert (= var155!1 (str.++ var155 var3550)))
(assert true)
(define-const var212 String (toString/-2075883882 var203)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var2388-to-var676 var3637) var212 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3) 

(declare-const var3637!1 var2388)
(declare-const var212!1 String)
(declare-const var3179 Int)
(assert true) ; Non Conditional
(define-const var1728 var997 var997-init) ; Statement: $r21 = new java.io.File 
(assert true)
(define-const var3244 var2018 (getConfig/-1194828243 (cast-from-var2388-to-var676 var3637!1))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var3375 var997 (descriptorDir/2019956101 var3244)) ; Statement: $r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var3231 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3231)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3231!1 String)
(assert (= var3231!1 ""))
(assert true)
(define-const var4 String (append/672562846 var3231!1 var3025)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3231!2 String)
(assert (= var3231!2 (str.++ var3231!1 var3025)))
(assert true)
(define-const var3561 String (append/672562846 var4 "ibm-ejb-jar-bnd.xmi")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi") 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 "ibm-ejb-jar-bnd.xmi")))
(assert true)
(define-const var2249 String (toString/-2075883882 var3561)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1728 var3375 var2249)) ; Statement: specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27) 

(declare-const var1728!1 var997)
(declare-const var3375!1 var997)
(declare-const var2249!1 String)
(assert true)
(define-const var2517 Bool (exists/1072868559 var1728!1)) ; Statement: $z2 = virtualinvoke $r21.<java.io.File: boolean exists()>() 
 ; Statement: if $z2 == 0 goto $r28 = new java.lang.StringBuilder 
(assert (not (= (ite var2517 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (put/1981026245 var3005 (cast-from-String-to-var513 "META-INF/ibm-ejb-jar-bnd.xmi") (cast-from-var997-to-var513 var1728!1))) ; Statement: virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21) 

(declare-const var3005!1 var2420)
(declare-const var1749 String)
(declare-const var1728!2 var997)
 ; Statement: goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>] 
(assert true) ; Non Conditional
(define-const var634 Bool (newCMP/1029604219 var3637!1)) ; Statement: $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP> 
 ; Statement: if $z3 != 0 goto $r33 = new java.io.File 
(assert (not (= (ite var634 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3864 var997 var997-init) ; Statement: $r33 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1538 var1454) ; Statement: $r60 := @caughtexception 
(assert (not (= var1538 null-var1454)))
(define-const var3529 var966 var966-init) ; Statement: $r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2539 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2539)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2539!1 String)
(assert (= var2539!1 ""))
(assert true)
(define-const var897 String (append/672562846 var2539!1 "Exception while adding Vendor specific files: ")) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ") 
(declare-const var2539!2 String)
(assert (= var2539!2 (str.++ var2539!1 "Exception while adding Vendor specific files: ")))
(assert true)
(define-const var3834 String (toString/-1112415476 (cast-from-var1454-to-var2755 var1538))) ; Statement: $r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var76 String (append/672562846 var897 var3834)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var897!1 String)
(assert (= var897!1 (str.++ var897 var3834)))
(assert true)
(define-const var3234 String (toString/-2075883882 var76)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3529 var3234 (cast-from-var1454-to-var2755 var1538))) ; Statement: specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60) 

(declare-const var3529!1 var966)
(declare-const var3234!1 String)
(declare-const var1538!1 var1454)
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {usingBaseJarName/-2133246527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], boolean), cast-from-var2388-to-var676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), dbVendor/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var997-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var513=([java.lang.String], java.lang.Object), cast-from-var997-to-var513=([java.io.File], java.lang.Object), newCMP/1029604219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool], boolean), var966-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1454-to-var2755=([java.lang.Exception], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var2388=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool, var3637=r0, var2420=java.util.Hashtable, var3005=r59, var2147=r1, var3652=null_type, var676=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1470=$z0, var3868=$r67, var3025=r2, var234=$r3, var1951=$r4, var1828=$r5, var2797=$r6, var1043=$r7, var2062=$r68, var856=r8, var997=java.io.File, var276=$r9, var2018=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var439=$r10, var2172=$r12, var1453=$r11, var1713=$r13, var1688=$r14, var1217=$r15, var744=$z1, var3932=$r16, var155=$r18, var3550=$r17, var203=$r19, var212=$r20, var3179=3, var1728=$r21, var3244=$r22, var3375=$r24, var3231=$r23, var4=$r25, var3561=$r26, var2249=$r27, var2517=$z2, var513=java.lang.Object, var1749="META-INF/ibm-ejb-jar-bnd.xmi", var634=$z3, var3864=$r33, var1454=java.lang.Exception, var1538=$r60, var966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3529=$r61, var2539=$r62, var897=$r64, var2755=java.lang.Throwable, var3834=$r63, var76=$r65, var3234=$r66}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool=var2388, r0=var3637, java.util.Hashtable=var2420, r59=var3005, r1=var2147, null_type=var3652, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var676, $z0=var1470, $r67=var3868, r2=var3025, $r3=var234, $r4=var1951, $r5=var1828, $r6=var2797, $r7=var1043, $r68=var2062, r8=var856, java.io.File=var997, $r9=var276, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2018, $r10=var439, $r12=var2172, $r11=var1453, $r13=var1713, $r14=var1688, $r15=var1217, $z1=var744, $r16=var3932, $r18=var155, $r17=var3550, $r19=var203, $r20=var212, 3=var3179, $r21=var1728, $r22=var3244, $r24=var3375, $r23=var3231, $r25=var4, $r26=var3561, $r27=var2249, $z2=var2517, java.lang.Object=var513, "META-INF/ibm-ejb-jar-bnd.xmi"=var1749, $z3=var634, $r33=var3864, java.lang.Exception=var1454, $r60=var1538, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var966, $r61=var3529, $r62=var2539, $r64=var897, java.lang.Throwable=var2755, $r63=var3834, $r65=var76, $r66=var3234}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool;	r59 := @parameter0: java.util.Hashtable;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean usingBaseJarName()>();	if $z0 == 0 goto $r67 = r1;	$r67 = "";	goto [?= r2 = $r67];	r2 = $r67;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: java.lang.String dbVendor>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r68 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r68;	$r9 = new java.io.File;	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r12 = $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-ext.xmi");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, $r15);	$z1 = virtualinvoke $r9.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate websphere extensions. It was expected to be in ");	$r17 = virtualinvoke $r9.<java.io.File: java.lang.String getPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: void log(java.lang.String,int)>($r20, 3);	$r21 = new java.io.File;	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r24 = $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ibm-ejb-jar-bnd.xmi");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.File: void <init>(java.io.File,java.lang.String)>($r24, $r27);	$z2 = virtualinvoke $r21.<java.io.File: boolean exists()>();	if $z2 == 0 goto $r28 = new java.lang.StringBuilder;	virtualinvoke r59.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>("META-INF/ibm-ejb-jar-bnd.xmi", $r21);	goto [?= $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>];	$z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool: boolean newCMP>;	if $z3 != 0 goto $r33 = new java.io.File;	$r33 = new java.io.File;	$r60 := @caughtexception;	$r61 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while adding Vendor specific files: ");	$r63 = virtualinvoke $r60.<java.lang.Exception: java.lang.String toString()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r61.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r66, $r60);	throw $r61
;block_num 11