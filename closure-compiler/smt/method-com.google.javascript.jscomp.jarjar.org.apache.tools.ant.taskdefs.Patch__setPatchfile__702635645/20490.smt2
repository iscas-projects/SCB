(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var2891 0)
(declare-sort var705 0)
(declare-sort var1385 0)
(declare-sort var3045 0)
(declare-sort var2111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2891) Bool)
(declare-fun var705-init () var705)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1385) String)
(declare-fun cast-from-var2891-to-var1385 (var2891) var1385)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2111) var3045)
(declare-fun cast-from-var2782-to-var2111 (var2782) var2111)
(declare-fun <init>/-469549130 (var705 String var3045) void)
(declare-const null-var2782 var2782)
(declare-const null-var2891 var2891)
(declare-const var2400 var2782) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch 
(assert (not (= var2400 null-var2782)))
(declare-const var885 var2891) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var885 null-var2891)))
(assert true)
(define-const var2373 Bool (exists/1072868559 var885)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert (not (not (= (ite var2373 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var877 var705 var705-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1852 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1852)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1852!1 String)
(assert (= var1852!1 ""))
(assert true)
(define-const var700 String (append/672562846 var1852!1 "patchfile ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("patchfile ") 
(declare-const var1852!2 String)
(assert (= var1852!2 (str.++ var1852!1 "patchfile ")))
(assert true)
(define-const var169 String (append/-1031950772 var700 (cast-from-var2891-to-var1385 var885))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var700!1 String)
(assert (str.prefixof var700 var700!1))
(assert true)
(define-const var307 String (append/672562846 var169 " doesn\u0027t exist")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist") 
(declare-const var169!1 String)
(assert (= var169!1 (str.++ var169 " doesn\u0027t exist")))
(assert true)
(define-const var300 String (toString/-2075883882 var307)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3637 var3045 (getLocation/851674571 (cast-from-var2782-to-var2111 var2400))) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var877 var300 var3637)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11) 

(declare-const var877!1 var705)
(declare-const var300!1 String)
(declare-const var3637!1 var3045)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var705-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2891-to-var1385=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2782-to-var2111=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2782=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch, var2400=r1, var2891=java.io.File, var885=r0, var2373=$z0, var705=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var877=$r6, var1852=$r7, var700=$r8, var1385=java.lang.Object, var169=$r9, var307=$r10, var300=$r12, var3045=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2111=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3637=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch=var2782, r1=var2400, java.io.File=var2891, r0=var885, $z0=var2373, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var705, $r6=var877, $r7=var1852, $r8=var700, java.lang.Object=var1385, $r9=var169, $r10=var307, $r12=var300, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3045, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2111, $r11=var3637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("patchfile ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11);	throw $r6
;block_num 2