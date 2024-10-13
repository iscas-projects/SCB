(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort var2951 0)
(declare-sort var3926 0)
(declare-sort var2299 0)
(declare-sort var3673 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var2400) String)
(declare-fun append/-1031950772 (String var2299) String)
(declare-fun cast-from-ClassObject-to-var2299 (ClassObject) var2299)
(declare-fun getMessage/849299655 (var3673) String)
(declare-fun cast-from-var3926-to-var3673 (var3926) var3673)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3654-init () var3654)
(declare-fun <init>/-191906322 (var3654 String var3673) void)
(declare-const null-var2400 var2400)
(declare-const null-var2951 var2951)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3926 var3926)
(declare-const var3498 var2400) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var3498 null-var2400)))
(declare-const var2755 var2951) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2755 null-var2951)))
(declare-const var728 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var728 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var801 var3926) ; Statement: $r43 := @caughtexception 
(assert (not (= var801 null-var3926)))
(define-const var3883 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3883)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3883!1 String)
(assert (= var3883!1 ""))
(assert true)
(define-const var1465 String (append/672562846 var3883!1 "Type ")) ; Statement: $r46 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ") 
(declare-const var3883!2 String)
(assert (= var3883!2 (str.++ var3883!1 "Type ")))
(define-const var2229 String (name/-1461999723 var3498)) ; Statement: $r45 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var1745 String (append/672562846 var1465 var2229)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var1465!1 String)
(assert (= var1465!1 (str.++ var1465 var2229)))
(assert true)
(define-const var1556 String (append/672562846 var1745 ": A class needed by class ")) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": A class needed by class ") 
(declare-const var1745!1 String)
(assert (= var1745!1 (str.++ var1745 ": A class needed by class ")))
(assert true)
(define-const var3567 String (append/-1031950772 var1556 (cast-from-ClassObject-to-var2299 var728))) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1556!1 String)
(assert (str.prefixof var1556 var1556!1))
(assert true)
(define-const var1823 String (append/672562846 var3567 " cannot be found: ")) ; Statement: $r51 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be found: ") 
(declare-const var3567!1 String)
(assert (= var3567!1 (str.++ var3567 " cannot be found: ")))
(assert true)
(define-const var363 String (getMessage/849299655 (cast-from-var3926-to-var3673 var801))) ; Statement: $r50 = virtualinvoke $r43.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var1802 String (append/672562846 var1823 var363)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50) 
(declare-const var1823!1 String)
(assert (= var1823!1 (str.++ var1823 var363)))
(assert true)
(define-const var1893 String (toString/-2075883882 var1802)) ; Statement: r64 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3028 var3654 var3654-init) ; Statement: $r53 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var3028 var1893 (cast-from-var3926-to-var3673 var801))) ; Statement: specialinvoke $r53.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r64, $r43) 

(declare-const var3028!1 var3654)
(declare-const var1893!1 String)
(declare-const var801!1 var3926)
 ; Statement: throw $r53 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2299=([java.lang.Class], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3926-to-var3673=([java.lang.NoClassDefFoundError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3654-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var2400=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var3498=r0, var2951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2755=r2, var728=r1, var3926=java.lang.NoClassDefFoundError, var801=$r43, var3883=$r44, var1465=$r46, var2229=$r45, var1745=$r47, var1556=$r48, var2299=java.lang.Object, var3567=$r49, var1823=$r51, var3673=java.lang.Throwable, var363=$r50, var1802=$r52, var1893=r64, var3654=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3028=$r53}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var2400, r0=var3498, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2951, r2=var2755, r1=var728, java.lang.NoClassDefFoundError=var3926, $r43=var801, $r44=var3883, $r46=var1465, $r45=var2229, $r47=var1745, $r48=var1556, java.lang.Object=var2299, $r49=var3567, $r51=var1823, java.lang.Throwable=var3673, $r50=var363, $r52=var1802, r64=var1893, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3654, $r53=var3028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r43 := @caughtexception;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ");	$r45 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": A class needed by class ");	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r51 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be found: ");	$r50 = virtualinvoke $r43.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50);	r64 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>();	$r53 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r53.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r64, $r43);	throw $r53
;block_num 2