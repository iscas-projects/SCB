(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var3059 0)
(declare-sort var3759 0)
(declare-sort var2265 0)
(declare-sort var561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2265-init () var2265)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var3386) String)
(declare-fun append/-1031950772 (String var561) String)
(declare-fun cast-from-ClassObject-to-var561 (ClassObject) var561)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2265 String) void)
(declare-const null-var3386 var3386)
(declare-const null-var3059 var3059)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3759 var3759)
(declare-const var3604 var3386) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var3604 null-var3386)))
(declare-const var470 var3059) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var470 null-var3059)))
(declare-const var3034 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3034 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2034 var3759) ; Statement: $r33 := @caughtexception 
(assert (not (= var2034 null-var3759)))
(define-const var1124 var2265 var2265-init) ; Statement: $r34 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1737 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1737)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1737!1 String)
(assert (= var1737!1 ""))
(assert true)
(define-const var1295 String (append/672562846 var1737!1 "Could not create type ")) ; Statement: $r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ") 
(declare-const var1737!2 String)
(assert (= var1737!2 (str.++ var1737!1 "Could not create type ")))
(define-const var1816 String (name/-1461999723 var3604)) ; Statement: $r36 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var1795 String (append/672562846 var1295 var1816)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var1295!1 String)
(assert (= var1295!1 (str.++ var1295 var1816)))
(assert true)
(define-const var3062 String (append/672562846 var1795 " as the class ")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the class ") 
(declare-const var1795!1 String)
(assert (= var1795!1 (str.++ var1795 " as the class ")))
(assert true)
(define-const var2935 String (append/-1031950772 var3062 (cast-from-ClassObject-to-var561 var3034))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3062!1 String)
(assert (str.prefixof var3062 var3062!1))
(assert true)
(define-const var1554 String (append/672562846 var2935 " has no compatible constructor")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no compatible constructor") 
(declare-const var2935!1 String)
(assert (= var2935!1 (str.++ var2935 " has no compatible constructor")))
(assert true)
(define-const var2843 String (toString/-2075883882 var1554)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1124 var2843)) ; Statement: specialinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r42) 

(declare-const var1124!1 var2265)
(declare-const var2843!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var2265-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var561=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3386=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var3604=r0, var3059=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var470=r2, var3034=r1, var3759=java.lang.NoSuchMethodException, var2034=$r33, var2265=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1124=$r34, var1737=$r35, var1295=$r37, var1816=$r36, var1795=$r38, var3062=$r39, var561=java.lang.Object, var2935=$r40, var1554=$r41, var2843=$r42}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var3386, r0=var3604, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3059, r2=var470, r1=var3034, java.lang.NoSuchMethodException=var3759, $r33=var2034, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2265, $r34=var1124, $r35=var1737, $r37=var1295, $r36=var1816, $r38=var1795, $r39=var3062, java.lang.Object=var561, $r40=var2935, $r41=var1554, $r42=var2843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r33 := @caughtexception;	$r34 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ");	$r36 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the class ");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no compatible constructor");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r42);	throw $r34
;block_num 2