(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var118 0)
(declare-sort var2557 0)
(declare-sort var3470 0)
(declare-sort var2017 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun remote/1754939147 (var118) var3470)
(declare-fun getClassFile/679581012 (var3470 var2557) var2557)
(declare-fun lastModified/415300308 (var2557) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getQualifiedClassName/-1520352682 (var3470) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2017 String) void)
(declare-const null-var118 var118)
(declare-const null-var2557 var2557)
(declare-const var2153-out var2017)
(declare-const var3609 var118) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo 
(assert (not (= var3609 null-var118)))
(declare-const var2935 var2557) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2935 null-var2557)))
(define-const var1454 var3470 (remote/1754939147 var3609)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote> 
(assert true)
(define-const var1018 var2557 (getClassFile/679581012 var1454 var2935)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.io.File getClassFile(java.io.File)>(r1) 
(assert true)
(define-const var1184 Int (lastModified/415300308 var1018)) ; Statement: l9 = virtualinvoke r3.<java.io.File: long lastModified()>() 
(define-const var218 Int (ite (> var1184 (- 1)) 1 (ite (< var1184 (- 1)) (- 1) 0))) ; Statement: $b0 = l9 cmp -1L 
 ; Statement: if $b0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname home> 
(assert (not (not (= var218 0)))) ; Negate: Cond: $b0 != 0  
(define-const var2488 var2017 var2153-out) ; Statement: $r63 = <java.lang.System: java.io.PrintStream out> 
(define-const var1490 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var3037 String (append/672562846 var1490!1 "The class ")) ; Statement: $r66 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The class ") 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 "The class ")))
(define-const var2550 var3470 (remote/1754939147 var3609)) ; Statement: $r64 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote> 
(assert true)
(define-const var550 String (getQualifiedClassName/-1520352682 var2550)) ; Statement: $r65 = virtualinvoke $r64.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
(assert true)
(define-const var3372 String (append/672562846 var3037 var550)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65) 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 var550)))
(assert true)
(define-const var1581 String (append/672562846 var3372 " couldn\u0027t be found on the classpath")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" couldn\'t be found on the classpath") 
(declare-const var3372!1 String)
(assert (= var3372!1 (str.++ var3372 " couldn\u0027t be found on the classpath")))
(assert true)
(define-const var360 String (toString/-2075883882 var1581)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2488 var360)) ; Statement: virtualinvoke $r63.<java.io.PrintStream: void println(java.lang.String)>($r69) 

(declare-const var2488!1 var2017)
(declare-const var360!1 String)
 ; Statement: return -1L 
(check-sat)
(get-model)
(get-unsat-core)
; {remote/1754939147=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), getClassFile/679581012=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, java.io.File], java.io.File), lastModified/415300308=([java.io.File], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getQualifiedClassName/-1520352682=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var118=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var3609=r0, var2557=java.io.File, var2935=r1, var3470=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var1454=$r2, var1018=r3, var1184=l9, var218=$b0, var2017=java.io.PrintStream, var2153=java.lang.System, var2488=$r63, var1490=$r62, var3037=$r66, var2550=$r64, var550=$r65, var3372=$r67, var1581=$r68, var360=$r69}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var118, r0=var3609, java.io.File=var2557, r1=var2935, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var3470, $r2=var1454, r3=var1018, l9=var1184, $b0=var218, java.io.PrintStream=var2017, java.lang.System=var2153, $r63=var2488, $r62=var1490, $r66=var3037, $r64=var2550, $r65=var550, $r67=var3372, $r68=var1581, $r69=var360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo;	r1 := @parameter0: java.io.File;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote>;	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.io.File getClassFile(java.io.File)>(r1);	l9 = virtualinvoke r3.<java.io.File: long lastModified()>();	$b0 = l9 cmp -1L;	if $b0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname home>;	$r63 = <java.lang.System: java.io.PrintStream out>;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r66 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The class ");	$r64 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote>;	$r65 = virtualinvoke $r64.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" couldn\'t be found on the classpath");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r63.<java.io.PrintStream: void println(java.lang.String)>($r69);	return -1L
;block_num 2