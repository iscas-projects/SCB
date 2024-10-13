(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var3020 0)
(declare-sort var1783 0)
(declare-sort var2665 0)
(declare-sort var3763 0)
(declare-sort var3328 0)
(declare-sort var3914 0)
(declare-sort var3609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1783) Bool)
(declare-fun var3763-init () var3763)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var1783) String)
(declare-fun toString/-1112415476 (var3328) String)
(declare-fun cast-from-var2665-to-var3328 (var2665) var3328)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3609) var3914)
(declare-fun cast-from-var2638-to-var3609 (var2638) var3609)
(declare-fun <init>/1933136886 (var3763 String var3328 var3914) void)
(declare-const null-var2638 var2638)
(declare-const null-var3020 var3020)
(declare-const null-var1783 var1783)
(declare-const null-var2665 var2665)
(declare-const var1967 var2638) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar 
(assert (not (= var1967 null-var2638)))
(declare-const var3616 var3020) ; Statement: r26 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var3616 null-var3020)))
(declare-const var3713 var1783) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var3713 null-var1783)))
(declare-const var3695 var1783) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var3695 null-var1783)))
(assert true)
(define-const var2012 Bool (exists/1072868559 var3713)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var2012 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var1307 var2665) ; Statement: $r13 := @caughtexception 
(assert (not (= var1307 null-var2665)))
(define-const var3572 var3763 var3763-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2620 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2620)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2620!1 String)
(assert (= var2620!1 ""))
(assert true)
(define-const var921 String (append/672562846 var2620!1 "Error while expanding ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while expanding ") 
(declare-const var2620!2 String)
(assert (= var2620!2 (str.++ var2620!1 "Error while expanding ")))
(assert true)
(define-const var2290 String (getPath/-1385219261 var3713)) ; Statement: $r16 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1731 String (append/672562846 var921 var2290)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var921!1 String)
(assert (= var921!1 (str.++ var921 var2290)))
(assert true)
(define-const var2977 String (append/672562846 var1731 "\n")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 "\n")))
(assert true)
(define-const var601 String (toString/-1112415476 (cast-from-var2665-to-var3328 var1307))) ; Statement: $r19 = virtualinvoke $r13.<java.io.IOException: java.lang.String toString()>() 
(assert true)
(define-const var556 String (append/672562846 var2977 var601)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2977!1 String)
(assert (= var2977!1 (str.++ var2977 var601)))
(assert true)
(define-const var2398 String (toString/-2075883882 var556)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3119 var3914 (getLocation/851674571 (cast-from-var2638-to-var3609 var1967))) ; Statement: $r22 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var3572 var2398 (cast-from-var2665-to-var3328 var1307) var3119)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r13, $r22) 

(declare-const var3572!1 var3763)
(declare-const var2398!1 String)
(declare-const var1307!1 var2665)
(declare-const var3119!1 var3914)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var3763-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2665-to-var3328=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2638-to-var3609=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2638=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar, var1967=r3, var3020=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3616=r26, var1783=java.io.File, var3713=r0, var3695=r4, var2012=$z0, var2665=java.io.IOException, var1307=$r13, var3763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3572=$r14, var2620=$r15, var921=$r17, var2290=$r16, var1731=$r18, var2977=$r20, var3328=java.lang.Throwable, var601=$r19, var556=$r21, var2398=$r23, var3914=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3609=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3119=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar=var2638, r3=var1967, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3020, r26=var3616, java.io.File=var1783, r0=var3713, r4=var3695, $z0=var2012, java.io.IOException=var2665, $r13=var1307, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3763, $r14=var3572, $r15=var2620, $r17=var921, $r16=var2290, $r18=var1731, $r20=var2977, java.lang.Throwable=var3328, $r19=var601, $r21=var556, $r23=var2398, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3914, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3609, $r22=var3119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar;	r26 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r0 := @parameter1: java.io.File;	r4 := @parameter2: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r13 := @caughtexception;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while expanding ");	$r16 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r19 = virtualinvoke $r13.<java.io.IOException: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r13, $r22);	throw $r14
;block_num 2