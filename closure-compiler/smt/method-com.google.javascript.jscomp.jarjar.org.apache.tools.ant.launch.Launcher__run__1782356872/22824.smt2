(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var226 0)
(declare-sort var881 0)
(declare-sort var1302 0)
(declare-sort var3032 0)
(declare-sort var3176 0)
(declare-sort var2132 0)
(declare-sort var133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var881_getProperty/258823597 (String) String)
(declare-fun getClass/1258963082 (var3032) ClassObject)
(declare-fun cast-from-var226-to-var3032 (var226) var3032)
(declare-fun var3176_getClassSource/2083578866 (ClassObject) var1302)
(declare-fun getParentFile/-182598033 (var1302) var1302)
(declare-fun exists/1072868559 (var1302) Bool)
(declare-fun var133-init () var133)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var1302) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1469001358 (var133 String) void)
(declare-const null-var226 var226)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1302 var1302)
(declare-const null-String String)
(declare-const var3559 var226) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher 
(assert (not (= var3559 null-var226)))
(declare-const var3351 (Array Int String)) ; Statement: r8 := @parameter0: java.lang.String[] 
(assert (not (= var3351 null-__Array__Int__String__)))
(define-const var2082 String (var881_getProperty/258823597 "ant.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
(define-const var1783 var1302 null-var1302) ; Statement: r108 = null 
(assert true)
(define-const var1516 ClassObject (getClass/1258963082 (cast-from-var226-to-var3032 var3559))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1462 var1302 (var3176_getClassSource/2083578866 var1516)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getClassSource(java.lang.Class)>($r2) 
(assert true)
(define-const var2414 var1302 (getParentFile/-182598033 var1462)) ; Statement: r4 = virtualinvoke r3.<java.io.File: java.io.File getParentFile()>() 
(define-const var3651 String "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main") ; Statement: r109 = "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main" 
 ; Statement: if r0 == null goto (branch) 
(assert (= var2082 null-String)) ; Cond: r0 == null 
 ; Statement: if r108 == null goto $r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= var1783 null-var1302))) ; Negate: Cond: r108 == null  
(assert true)
(define-const var1789 Bool (exists/1072868559 var1783)) ; Statement: $z8 = virtualinvoke r108.<java.io.File: boolean exists()>() 
 ; Statement: if $z8 != 0 goto $z9 = virtualinvoke r108.<java.io.File: boolean exists()>() 
(assert (not (= (ite var1789 1 0) 0))) ; Cond: $z8 != 0 
(assert true)
(define-const var1726 Bool (exists/1072868559 var1783)) ; Statement: $z9 = virtualinvoke r108.<java.io.File: boolean exists()>() 
 ; Statement: if $z9 != 0 goto $r121 = new java.util.ArrayList 
(assert (not (not (= (ite var1726 1 0) 0)))) ; Negate: Cond: $z9 != 0  
(define-const var1504 var133 var133-init) ; Statement: $r120 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException 
(define-const var1821 String String-init) ; Statement: $r119 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1821)) ; Statement: specialinvoke $r119.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1821!1 String)
(assert (= var1821!1 ""))
(assert true)
(define-const var3375 String (append/672562846 var1821!1 "Ant home is set incorrectly or ant could not be located (estimated value=")) ; Statement: $r81 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant home is set incorrectly or ant could not be located (estimated value=") 
(declare-const var1821!2 String)
(assert (= var1821!2 (str.++ var1821!1 "Ant home is set incorrectly or ant could not be located (estimated value=")))
(assert true)
(define-const var1443 String (getAbsolutePath/-802773300 var1783)) ; Statement: $r80 = virtualinvoke r108.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var536 String (append/672562846 var3375 var1443)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80) 
(declare-const var3375!1 String)
(assert (= var3375!1 (str.++ var3375 var1443)))
(assert true)
(define-const var1884 String (append/672562846 var536 ")")) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var536!1 String)
(assert (= var536!1 (str.++ var536 ")")))
(assert true)
(define-const var3957 String (toString/-2075883882 var1884)) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1469001358 var1504 var3957)) ; Statement: specialinvoke $r120.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException: void <init>(java.lang.String)>($r84) 

(declare-const var1504!1 var133)
(declare-const var3957!1 String)
 ; Statement: throw $r120 
(check-sat)
(get-model)
(get-unsat-core)
; {var881_getProperty/258823597=([java.lang.String], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var226-to-var3032=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher], java.lang.Object), var3176_getClassSource/2083578866=([java.lang.Class], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), exists/1072868559=([java.io.File], boolean), var133-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1469001358=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException, java.lang.String], void)}
; {var226=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var3559=r1, var3351=r8, var881=java.lang.System, var2082=r0, var1302=java.io.File, var1783=r108, var3032=java.lang.Object, var1516=$r2, var3176=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator, var1462=r3, var2414=r4, var3651=r109, var2132=null_type, var1789=$z8, var1726=$z9, var133=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException, var1504=$r120, var1821=$r119, var3375=$r81, var1443=$r80, var536=$r82, var1884=$r83, var3957=$r84}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var226, r1=var3559, r8=var3351, java.lang.System=var881, r0=var2082, java.io.File=var1302, r108=var1783, java.lang.Object=var3032, $r2=var1516, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator=var3176, r3=var1462, r4=var2414, r109=var3651, null_type=var2132, $z8=var1789, $z9=var1726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException=var133, $r120=var1504, $r119=var1821, $r81=var3375, $r80=var1443, $r82=var536, $r83=var1884, $r84=var3957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher;	r8 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	r108 = null;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getClassSource(java.lang.Class)>($r2);	r4 = virtualinvoke r3.<java.io.File: java.io.File getParentFile()>();	r109 = "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main";	if r0 == null goto (branch);	if r108 == null goto $r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>();	$z8 = virtualinvoke r108.<java.io.File: boolean exists()>();	if $z8 != 0 goto $z9 = virtualinvoke r108.<java.io.File: boolean exists()>();	$z9 = virtualinvoke r108.<java.io.File: boolean exists()>();	if $z9 != 0 goto $r121 = new java.util.ArrayList;	$r120 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException;	$r119 = new java.lang.StringBuilder;	specialinvoke $r119.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant home is set incorrectly or ant could not be located (estimated value=");	$r80 = virtualinvoke r108.<java.io.File: java.lang.String getAbsolutePath()>();	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80);	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r120.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException: void <init>(java.lang.String)>($r84);	throw $r120
;block_num 5