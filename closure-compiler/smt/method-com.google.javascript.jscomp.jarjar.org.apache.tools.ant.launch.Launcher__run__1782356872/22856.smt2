(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var220 0)
(declare-sort var3359 0)
(declare-sort var332 0)
(declare-sort var1254 0)
(declare-sort var3843 0)
(declare-sort var2621 0)
(declare-sort var2625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3359_getProperty/258823597 (String) String)
(declare-fun getClass/1258963082 (var1254) ClassObject)
(declare-fun cast-from-var220-to-var1254 (var220) var1254)
(declare-fun var3843_getClassSource/2083578866 (ClassObject) var332)
(declare-fun getParentFile/-182598033 (var332) var332)
(declare-fun getAbsolutePath/-802773300 (var332) String)
(declare-fun setProperty/-1232835038 (var220 String String) void)
(declare-fun exists/1072868559 (var332) Bool)
(declare-fun var2625-init () var2625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1469001358 (var2625 String) void)
(declare-const null-var220 var220)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var332 var332)
(declare-const null-String String)
(declare-const var3089 var220) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher 
(assert (not (= var3089 null-var220)))
(declare-const var1788 (Array Int String)) ; Statement: r8 := @parameter0: java.lang.String[] 
(assert (not (= var1788 null-__Array__Int__String__)))
(define-const var2140 String (var3359_getProperty/258823597 "ant.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
(define-const var3300 var332 null-var332) ; Statement: r108 = null 
(assert true)
(define-const var3895 ClassObject (getClass/1258963082 (cast-from-var220-to-var1254 var3089))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2649 var332 (var3843_getClassSource/2083578866 var3895)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getClassSource(java.lang.Class)>($r2) 
(assert true)
(define-const var2163 var332 (getParentFile/-182598033 var2649)) ; Statement: r4 = virtualinvoke r3.<java.io.File: java.io.File getParentFile()>() 
(define-const var1013 String "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main") ; Statement: r109 = "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main" 
 ; Statement: if r0 == null goto (branch) 
(assert (= var2140 null-String)) ; Cond: r0 == null 
 ; Statement: if r108 == null goto $r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>() 
(assert (= var3300 null-var332)) ; Cond: r108 == null 
(assert true)
(define-const var402 var332 (getParentFile/-182598033 var2163)) ; Statement: $r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>() 
(define-const var3300!1 var332 var402) ; Statement: r108 = $r85 
(assert true)
(define-const var3925 String (getAbsolutePath/-802773300 var402)) ; Statement: $r5 = virtualinvoke $r85.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
;(assert (setProperty/-1232835038 var3089 "ant.home" var3925)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: void setProperty(java.lang.String,java.lang.String)>("ant.home", $r5) 

(declare-const var3089!1 var220)
(declare-const var2112 String)
(declare-const var3925!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2683 Bool (exists/1072868559 var3300!1)) ; Statement: $z9 = virtualinvoke r108.<java.io.File: boolean exists()>() 
 ; Statement: if $z9 != 0 goto $r121 = new java.util.ArrayList 
(assert (not (not (= (ite var2683 1 0) 0)))) ; Negate: Cond: $z9 != 0  
(define-const var36 var2625 var2625-init) ; Statement: $r120 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException 
(define-const var2410 String String-init) ; Statement: $r119 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2410)) ; Statement: specialinvoke $r119.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2410!1 String)
(assert (= var2410!1 ""))
(assert true)
(define-const var806 String (append/672562846 var2410!1 "Ant home is set incorrectly or ant could not be located (estimated value=")) ; Statement: $r81 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant home is set incorrectly or ant could not be located (estimated value=") 
(declare-const var2410!2 String)
(assert (= var2410!2 (str.++ var2410!1 "Ant home is set incorrectly or ant could not be located (estimated value=")))
(assert true)
(define-const var924 String (getAbsolutePath/-802773300 var3300!1)) ; Statement: $r80 = virtualinvoke r108.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1530 String (append/672562846 var806 var924)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80) 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 var924)))
(assert true)
(define-const var3174 String (append/672562846 var1530 ")")) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1530!1 String)
(assert (= var1530!1 (str.++ var1530 ")")))
(assert true)
(define-const var3145 String (toString/-2075883882 var3174)) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1469001358 var36 var3145)) ; Statement: specialinvoke $r120.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException: void <init>(java.lang.String)>($r84) 

(declare-const var36!1 var2625)
(declare-const var3145!1 String)
 ; Statement: throw $r120 
(check-sat)
(get-model)
(get-unsat-core)
; {var3359_getProperty/258823597=([java.lang.String], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var220-to-var1254=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher], java.lang.Object), var3843_getClassSource/2083578866=([java.lang.Class], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), setProperty/-1232835038=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, java.lang.String, java.lang.String], void), exists/1072868559=([java.io.File], boolean), var2625-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1469001358=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException, java.lang.String], void)}
; {var220=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var3089=r1, var1788=r8, var3359=java.lang.System, var2140=r0, var332=java.io.File, var3300=r108, var1254=java.lang.Object, var3895=$r2, var3843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator, var2649=r3, var2163=r4, var1013=r109, var2621=null_type, var402=$r85, var3925=$r5, var2112="ant.home", var2683=$z9, var2625=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException, var36=$r120, var2410=$r119, var806=$r81, var924=$r80, var1530=$r82, var3174=$r83, var3145=$r84}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var220, r1=var3089, r8=var1788, java.lang.System=var3359, r0=var2140, java.io.File=var332, r108=var3300, java.lang.Object=var1254, $r2=var3895, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator=var3843, r3=var2649, r4=var2163, r109=var1013, null_type=var2621, $r85=var402, $r5=var3925, "ant.home"=var2112, $z9=var2683, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException=var2625, $r120=var36, $r119=var2410, $r81=var806, $r80=var924, $r82=var1530, $r83=var3174, $r84=var3145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher;	r8 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	r108 = null;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getClassSource(java.lang.Class)>($r2);	r4 = virtualinvoke r3.<java.io.File: java.io.File getParentFile()>();	r109 = "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main";	if r0 == null goto (branch);	if r108 == null goto $r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>();	$r85 = virtualinvoke r4.<java.io.File: java.io.File getParentFile()>();	r108 = $r85;	$r5 = virtualinvoke $r85.<java.io.File: java.lang.String getAbsolutePath()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: void setProperty(java.lang.String,java.lang.String)>("ant.home", $r5);	$z9 = virtualinvoke r108.<java.io.File: boolean exists()>();	if $z9 != 0 goto $r121 = new java.util.ArrayList;	$r120 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException;	$r119 = new java.lang.StringBuilder;	specialinvoke $r119.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ant home is set incorrectly or ant could not be located (estimated value=");	$r80 = virtualinvoke r108.<java.io.File: java.lang.String getAbsolutePath()>();	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80);	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r120.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.LaunchException: void <init>(java.lang.String)>($r84);	throw $r120
;block_num 5