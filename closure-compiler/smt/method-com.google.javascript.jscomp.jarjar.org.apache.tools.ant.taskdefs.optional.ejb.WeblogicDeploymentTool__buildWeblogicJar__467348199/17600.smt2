(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2641 0)
(declare-sort var1512 0)
(declare-sort var2895 0)
(declare-sort var1467 0)
(declare-sort var755 0)
(declare-sort var3249 0)
(declare-sort var2385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun noEJBC/-1382280566 (var2641) Bool)
(declare-fun ejbcClass/-1382280566 (var2641) String)
(declare-fun var1467-init () var1467)
(declare-fun var3249-init () var3249)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var2385) String)
(declare-fun cast-from-var755-to-var2385 (var755) var2385)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3249 String var2385) void)
(declare-const null-var2641 var2641)
(declare-const null-var1512 var1512)
(declare-const null-String String)
(declare-const null-var755 var755)
(declare-const var3585 var2641) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool 
(assert (not (= var3585 null-var2641)))
(declare-const var327 var1512) ; Statement: r11 := @parameter0: java.io.File 
(assert (not (= var327 null-var1512)))
(declare-const var1323 var1512) ; Statement: r23 := @parameter1: java.io.File 
(assert (not (= var1323 null-var1512)))
(declare-const var2544 String) ; Statement: r40 := @parameter2: java.lang.String 
(assert (not (= var2544 null-String)))
(define-const var709 Bool (noEJBC/-1382280566 var3585)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: boolean noEJBC> 
 ; Statement: if $z0 == 0 goto r66 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: java.lang.String ejbcClass> 
(assert (= (ite var709 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2691 String (ejbcClass/-1382280566 var3585)) ; Statement: r66 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: java.lang.String ejbcClass> 
(define-const var2308 var1467 var1467-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2541 var755) ; Statement: $r55 := @caughtexception 
(assert (not (= var2541 null-var755)))
(define-const var1367 var3249 var3249-init) ; Statement: $r56 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var535 String String-init) ; Statement: $r57 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r57.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(assert true)
(define-const var745 String (append/672562846 var535!1 "Exception while calling ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling ") 
(declare-const var535!2 String)
(assert (= var535!2 (str.++ var535!1 "Exception while calling ")))
(assert true)
(define-const var1960 String (append/672562846 var745 var2691)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var745!1 String)
(assert (= var745!1 (str.++ var745 var2691)))
(assert true)
(define-const var3083 String (append/672562846 var1960 ". Details: ")) ; Statement: $r61 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Details: ") 
(declare-const var1960!1 String)
(assert (= var1960!1 (str.++ var1960 ". Details: ")))
(assert true)
(define-const var2897 String (toString/-1112415476 (cast-from-var755-to-var2385 var2541))) ; Statement: $r60 = virtualinvoke $r55.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3535 String (append/672562846 var3083 var2897)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r60) 
(declare-const var3083!1 String)
(assert (= var3083!1 (str.++ var3083 var2897)))
(assert true)
(define-const var1708 String (toString/-2075883882 var3535)) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1367 var1708 (cast-from-var755-to-var2385 var2541))) ; Statement: specialinvoke $r56.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r63, $r55) 

(declare-const var1367!1 var3249)
(declare-const var1708!1 String)
(declare-const var2541!1 var755)
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {noEJBC/-1382280566=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool], boolean), ejbcClass/-1382280566=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool], java.lang.String), var1467-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java), var3249-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var755-to-var2385=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var2641=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, var3585=r0, var1512=java.io.File, var327=r11, var1323=r23, var2544=r40, var2895=null_type, var709=$z0, var2691=r66, var1467=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java, var2308=$r1, var755=java.lang.Exception, var2541=$r55, var3249=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1367=$r56, var535=$r57, var745=$r58, var1960=$r59, var3083=$r61, var2385=java.lang.Throwable, var2897=$r60, var3535=$r62, var1708=$r63}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool=var2641, r0=var3585, java.io.File=var1512, r11=var327, r23=var1323, r40=var2544, null_type=var2895, $z0=var709, r66=var2691, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java=var1467, $r1=var2308, java.lang.Exception=var755, $r55=var2541, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3249, $r56=var1367, $r57=var535, $r58=var745, $r59=var1960, $r61=var3083, java.lang.Throwable=var2385, $r60=var2897, $r62=var3535, $r63=var1708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool;	r11 := @parameter0: java.io.File;	r23 := @parameter1: java.io.File;	r40 := @parameter2: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: boolean noEJBC>;	if $z0 == 0 goto r66 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: java.lang.String ejbcClass>;	r66 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: java.lang.String ejbcClass>;	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java;	$r55 := @caughtexception;	$r56 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r57 = new java.lang.StringBuilder;	specialinvoke $r57.<java.lang.StringBuilder: void <init>()>();	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception while calling ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r61 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Details: ");	$r60 = virtualinvoke $r55.<java.lang.Exception: java.lang.String toString()>();	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r60);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r56.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r63, $r55);	throw $r56
;block_num 3