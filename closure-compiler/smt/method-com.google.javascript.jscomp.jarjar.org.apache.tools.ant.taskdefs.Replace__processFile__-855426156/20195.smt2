(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2626 0)
(declare-sort var1331 0)
(declare-sort var1322 0)
(declare-sort var306 0)
(declare-sort var2760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1331) Bool)
(declare-fun var1322-init () var1322)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var1331) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2760) var306)
(declare-fun cast-from-var2626-to-var2760 (var2626) var2760)
(declare-fun <init>/-469549130 (var1322 String var306) void)
(declare-const null-var2626 var2626)
(declare-const null-var1331 var1331)
(declare-const var3634 var2626) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var3634 null-var2626)))
(declare-const var987 var1331) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var987 null-var1331)))
(assert true)
(define-const var362 Bool (exists/1072868559 var987)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: int replaceCount> 
(assert (not (not (= (ite var362 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2257 var1322 var1322-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2111 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2111)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2111!1 String)
(assert (= var2111!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var2111!1 "Replace: source file ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Replace: source file ") 
(declare-const var2111!2 String)
(assert (= var2111!2 (str.++ var2111!1 "Replace: source file ")))
(assert true)
(define-const var685 String (getPath/-1385219261 var987)) ; Statement: $r14 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2350 String (append/672562846 var2712 var685)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 var685)))
(assert true)
(define-const var786 String (append/672562846 var2350 " doesn\u0027t exist")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist") 
(declare-const var2350!1 String)
(assert (= var2350!1 (str.++ var2350 " doesn\u0027t exist")))
(assert true)
(define-const var3921 String (toString/-2075883882 var786)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var414 var306 (getLocation/851674571 (cast-from-var2626-to-var2760 var3634))) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2257 var3921 var414)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r18) 

(declare-const var2257!1 var1322)
(declare-const var3921!1 String)
(declare-const var414!1 var306)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var1322-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2626-to-var2760=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2626=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var3634=r1, var1331=java.io.File, var987=r0, var362=$z0, var1322=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2257=$r12, var2111=$r13, var2712=$r15, var685=$r14, var2350=$r16, var786=$r17, var3921=$r19, var306=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2760=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var414=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var2626, r1=var3634, java.io.File=var1331, r0=var987, $z0=var362, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1322, $r12=var2257, $r13=var2111, $r15=var2712, $r14=var685, $r16=var2350, $r17=var786, $r19=var3921, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var306, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2760, $r18=var414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: int replaceCount>;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Replace: source file ");	$r14 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r18);	throw $r12
;block_num 2