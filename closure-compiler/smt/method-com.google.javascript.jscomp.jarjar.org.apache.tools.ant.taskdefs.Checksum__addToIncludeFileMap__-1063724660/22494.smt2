(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort var439 0)
(declare-sort var1636 0)
(declare-sort var1559 0)
(declare-sort var1239 0)
(declare-sort var852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var439) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var439) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1601532580 (var1636 String) void)
(declare-fun cast-from-var2827-to-var1636 (var2827) var1636)
(declare-fun var1559-init () var1559)
(declare-fun getLocation/851674571 (var852) var1239)
(declare-fun cast-from-var2827-to-var852 (var2827) var852)
(declare-fun <init>/-469549130 (var1559 String var1239) void)
(declare-const null-var2827 var2827)
(declare-const null-var439 var439)
(declare-const var3748 var2827) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum 
(assert (not (= var3748 null-var2827)))
(declare-const var3915 var439) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3915 null-var439)))
(assert true)
(define-const var481 Bool (exists/1072868559 var3915)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r27 = new java.lang.StringBuilder 
(assert (= (ite var481 1 0) 0)) ; Cond: $z0 == 0 
(define-const var354 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var354)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var354!1 String)
(assert (= var354!1 ""))
(assert true)
(define-const var3221 String (append/672562846 var354!1 "Could not find file ")) ; Statement: $r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find file ") 
(declare-const var354!2 String)
(assert (= var354!2 (str.++ var354!1 "Could not find file ")))
(assert true)
(define-const var3424 String (getAbsolutePath/-802773300 var3915)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2166 String (append/672562846 var3221 var3424)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3221!1 String)
(assert (= var3221!1 (str.++ var3221 var3424)))
(assert true)
(define-const var3980 String (append/672562846 var2166 " to generate checksum for.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to generate checksum for.") 
(declare-const var2166!1 String)
(assert (= var2166!1 (str.++ var2166 " to generate checksum for.")))
(assert true)
(define-const var1710 String (toString/-2075883882 var3980)) ; Statement: r25 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1601532580 (cast-from-var2827-to-var1636 var3748) var1710)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: void log(java.lang.String)>(r25) 

(declare-const var3748!1 var2827)
(declare-const var1710!1 String)
(define-const var2572 var1559 var1559-init) ; Statement: $r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var1060 var1239 (getLocation/851674571 (cast-from-var2827-to-var852 var3748!1))) ; Statement: $r8 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2572 var1710!1 var1060)) ; Statement: specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r25, $r8) 

(declare-const var2572!1 var1559)
(declare-const var1710!2 String)
(declare-const var1060!1 var1239)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var2827-to-var1636=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var1559-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2827-to-var852=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2827=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, var3748=r6, var439=java.io.File, var3915=r0, var481=$z0, var354=$r27, var3221=$r3, var3424=$r2, var2166=$r4, var3980=$r5, var1710=r25, var1636=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1559=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2572=$r28, var1239=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var852=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1060=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum=var2827, r6=var3748, java.io.File=var439, r0=var3915, $z0=var481, $r27=var354, $r3=var3221, $r2=var3424, $r4=var2166, $r5=var3980, r25=var1710, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1636, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1559, $r28=var2572, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1239, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var852, $r8=var1060}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r27 = new java.lang.StringBuilder;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find file ");	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to generate checksum for.");	r25 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: void log(java.lang.String)>(r25);	$r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>(r25, $r8);	throw $r28
;block_num 2