(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1785 0)
(declare-sort var3453 0)
(declare-sort var162 0)
(declare-sort var3747 0)
(declare-sort var3903 0)
(declare-sort var232 0)
(declare-sort var3065 0)
(declare-sort var231 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var162-init () var162)
(declare-fun var3903-init () var3903)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var232) String)
(declare-fun cast-from-var3453-to-var232 (var3453) var232)
(declare-fun cast-from-var3747-to-var232 (var3747) var232)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var231) var3065)
(declare-fun cast-from-var1785-to-var231 (var1785) var231)
(declare-fun <init>/1933136886 (var3903 String var442 var3065) void)
(declare-fun cast-from-var3747-to-var442 (var3747) var442)
(declare-const null-var1785 var1785)
(declare-const null-var3453 var3453)
(declare-const null-var3747 var3747)
(declare-const var2902 var1785) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var2902 null-var1785)))
(declare-const var144 var3453) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var144 null-var3453)))
(define-const var685 var162 var162-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1390 var3747) ; Statement: $r3 := @caughtexception 
(assert (not (= var1390 null-var3747)))
(define-const var2804 var3903 var3903-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1725 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1725)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1725!1 String)
(assert (= var1725!1 ""))
(assert true)
(define-const var1984 String (append/672562846 var1725!1 "Could not delete \u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete \"") 
(declare-const var1725!2 String)
(assert (= var1725!2 (str.++ var1725!1 "Could not delete \u0022")))
(assert true)
(define-const var3115 String (append/-1031950772 var1984 (cast-from-var3453-to-var232 var144))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1984!1 String)
(assert (str.prefixof var1984 var1984!1))
(assert true)
(define-const var2386 String (append/672562846 var3115 "\u0022: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ") 
(declare-const var3115!1 String)
(assert (= var3115!1 (str.++ var3115 "\u0022: ")))
(assert true)
(define-const var2543 String (append/-1031950772 var2386 (cast-from-var3747-to-var232 var1390))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2386!1 String)
(assert (str.prefixof var2386 var2386!1))
(assert true)
(define-const var3511 String (toString/-2075883882 var2543)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3366 var3065 (getLocation/851674571 (cast-from-var1785-to-var231 var2902))) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2804 var3511 (cast-from-var3747-to-var442 var1390) var3366)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r3, $r10) 

(declare-const var2804!1 var3903)
(declare-const var3511!1 String)
(declare-const var1390!1 var3747)
(declare-const var3366!1 var3065)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var162-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$1), var3903-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3453-to-var232=([java.nio.file.Path], java.lang.Object), cast-from-var3747-to-var232=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1785-to-var231=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var3747-to-var442=([java.io.IOException], java.lang.Throwable)}
; {var1785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var2902=r2, var3453=java.nio.file.Path, var144=r0, var162=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$1, var685=$r1, var3747=java.io.IOException, var1390=$r3, var3903=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2804=$r4, var1725=$r5, var1984=$r6, var232=java.lang.Object, var3115=$r7, var2386=$r8, var2543=$r9, var3511=$r11, var3065=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var231=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3366=$r10, var442=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var1785, r2=var2902, java.nio.file.Path=var3453, r0=var144, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$1=var162, $r1=var685, java.io.IOException=var3747, $r3=var1390, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3903, $r4=var2804, $r5=var1725, $r6=var1984, java.lang.Object=var232, $r7=var3115, $r8=var2386, $r9=var2543, $r11=var3511, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3065, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var231, $r10=var3366, java.lang.Throwable=var442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r0 := @parameter0: java.nio.file.Path;	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$1;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r3, $r10);	throw $r4
;block_num 2