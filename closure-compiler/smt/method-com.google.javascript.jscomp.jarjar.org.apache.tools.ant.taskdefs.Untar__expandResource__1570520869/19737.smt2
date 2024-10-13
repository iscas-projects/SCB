(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var37 0)
(declare-sort var2086 0)
(declare-sort var1552 0)
(declare-sort var1972 0)
(declare-sort var1860 0)
(declare-sort var197 0)
(declare-sort var3607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExists/-1936344525 (var37) Bool)
(declare-fun var1972-init () var1972)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1314741259 (var37) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var197) var1860)
(declare-fun cast-from-var1178-to-var197 (var1178) var197)
(declare-fun <init>/1933136886 (var1972 String var3607 var1860) void)
(declare-fun cast-from-var1552-to-var3607 (var1552) var3607)
(declare-const null-var1178 var1178)
(declare-const null-var37 var37)
(declare-const null-var2086 var2086)
(declare-const null-var1552 var1552)
(declare-const var2205 var1178) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar 
(assert (not (= var2205 null-var1178)))
(declare-const var3536 var37) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3536 null-var37)))
(declare-const var2818 var2086) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var2818 null-var2086)))
(assert true)
(define-const var3542 Bool (isExists/-1936344525 var3536)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>() 
 ; Statement: if $z0 != 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>() 
(assert (not (not (= (ite var3542 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var680 var1552) ; Statement: $r12 := @caughtexception 
(assert (not (= var680 null-var1552)))
(define-const var1101 var1972 var1972-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2013 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2013)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2013!1 String)
(assert (= var2013!1 ""))
(assert true)
(define-const var2285 String (append/672562846 var2013!1 "Error while expanding ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while expanding ") 
(declare-const var2013!2 String)
(assert (= var2013!2 (str.++ var2013!1 "Error while expanding ")))
(assert true)
(define-const var19 String (getName/1314741259 var3536)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var3131 String (append/672562846 var2285 var19)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2285!1 String)
(assert (= var2285!1 (str.++ var2285 var19)))
(assert true)
(define-const var424 String (toString/-2075883882 var3131)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3689 var1860 (getLocation/851674571 (cast-from-var1178-to-var197 var2205))) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var1101 var424 (cast-from-var1552-to-var3607 var680) var3689)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r12, $r18) 

(declare-const var1101!1 var1972)
(declare-const var424!1 String)
(declare-const var680!1 var1552)
(declare-const var3689!1 var1860)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {isExists/-1936344525=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), var1972-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1178-to-var197=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var1552-to-var3607=([java.io.IOException], java.lang.Throwable)}
; {var1178=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar, var2205=r1, var37=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3536=r0, var2086=java.io.File, var2818=r2, var3542=$z0, var1552=java.io.IOException, var680=$r12, var1972=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1101=$r13, var2013=$r14, var2285=$r16, var19=$r15, var3131=$r17, var424=$r19, var1860=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var197=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3689=$r18, var3607=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar=var1178, r1=var2205, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var37, r0=var3536, java.io.File=var2086, r2=var2818, $z0=var3542, java.io.IOException=var1552, $r12=var680, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1972, $r13=var1101, $r14=var2013, $r16=var2285, $r15=var19, $r17=var3131, $r19=var424, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var197, $r18=var3689, java.lang.Throwable=var3607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r2 := @parameter1: java.io.File;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>();	if $z0 != 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>();	$r12 := @caughtexception;	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while expanding ");	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r12, $r18);	throw $r13
;block_num 2