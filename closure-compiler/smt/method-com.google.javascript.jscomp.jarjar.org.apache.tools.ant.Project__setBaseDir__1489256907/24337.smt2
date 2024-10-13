(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var3031 0)
(declare-sort var2218 0)
(declare-sort var887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var3031) String)
(declare-fun normalize/-959805877 (var2218 String) var3031)
(declare-fun exists/1072868559 (var3031) Bool)
(declare-fun var887-init () var887)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var887 String) void)
(declare-const null-var1375 var1375)
(declare-const null-var3031 var3031)
(declare-const var1375-FILE_UTILS var2218)
(declare-const var1654 var1375) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1654 null-var1375)))
(declare-const var1433 var3031) ; Statement: r24 := @parameter0: java.io.File 
(assert (not (= var1433 null-var3031)))
(define-const var1207 var2218 var1375-FILE_UTILS) ; Statement: $r0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(assert true)
(define-const var3269 String (getAbsolutePath/-802773300 var1433)) ; Statement: $r1 = virtualinvoke r24.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1163 var3031 (normalize/-959805877 var1207 var3269)) ; Statement: r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r1) 
(assert true)
(define-const var1075 Bool (exists/1072868559 var1163)) ; Statement: $z0 = virtualinvoke r25.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r25.<java.io.File: boolean isDirectory()>() 
(assert (not (not (= (ite var1075 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1205 var887 var887-init) ; Statement: $r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1802 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1802)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1802!1 String)
(assert (= var1802!1 ""))
(assert true)
(define-const var2829 String (append/672562846 var1802!1 "Basedir ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basedir ") 
(declare-const var1802!2 String)
(assert (= var1802!2 (str.++ var1802!1 "Basedir ")))
(assert true)
(define-const var3710 String (getAbsolutePath/-802773300 var1163)) ; Statement: $r19 = virtualinvoke r25.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3813 String (append/672562846 var2829 var3710)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2829!1 String)
(assert (= var2829!1 (str.++ var2829 var3710)))
(assert true)
(define-const var1760 String (append/672562846 var3813 " does not exist")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist") 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 " does not exist")))
(assert true)
(define-const var2626 String (toString/-2075883882 var1760)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1205 var2626)) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r23) 

(declare-const var1205!1 var887)
(declare-const var2626!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File), exists/1072868559=([java.io.File], boolean), var887-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1654=r2, var3031=java.io.File, var1433=r24, var2218=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1207=$r0, var3269=$r1, var1163=r25, var1075=$z0, var887=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1205=$r17, var1802=$r18, var2829=$r20, var3710=$r19, var3813=$r21, var1760=$r22, var2626=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1375, r2=var1654, java.io.File=var3031, r24=var1433, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2218, $r0=var1207, $r1=var3269, r25=var1163, $z0=var1075, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var887, $r17=var1205, $r18=var1802, $r20=var2829, $r19=var3710, $r21=var3813, $r22=var1760, $r23=var2626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r24 := @parameter0: java.io.File;	$r0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	$r1 = virtualinvoke r24.<java.io.File: java.lang.String getAbsolutePath()>();	r25 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r1);	$z0 = virtualinvoke r25.<java.io.File: boolean exists()>();	if $z0 != 0 goto $z1 = virtualinvoke r25.<java.io.File: boolean isDirectory()>();	$r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basedir ");	$r19 = virtualinvoke r25.<java.io.File: java.lang.String getAbsolutePath()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r23);	throw $r17
;block_num 2