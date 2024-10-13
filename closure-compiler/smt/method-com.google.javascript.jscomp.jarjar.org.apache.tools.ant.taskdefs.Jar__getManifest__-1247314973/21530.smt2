(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var190 0)
(declare-sort var1430 0)
(declare-sort var3065 0)
(declare-sort var612 0)
(declare-sort var1996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1430-init () var1430)
(declare-fun var612-init () var612)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1996) String)
(declare-fun cast-from-var3065-to-var1996 (var3065) var1996)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var612 String var1996) void)
(declare-const null-var3263 var3263)
(declare-const null-var190 var190)
(declare-const null-var3065 var3065)
(declare-const var812 var3263) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var812 null-var3263)))
(declare-const var592 var190) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var592 null-var190)))
(define-const var3900 var1430 var1430-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1952 var3065) ; Statement: $r2 := @caughtexception 
(assert (not (= var1952 null-var3065)))
(define-const var3897 var612 var612-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3921 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3921)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3921!1 String)
(assert (= var3921!1 ""))
(assert true)
(define-const var1947 String (append/672562846 var3921!1 "Unable to read manifest file (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read manifest file (") 
(declare-const var3921!2 String)
(assert (= var3921!2 (str.++ var3921!1 "Unable to read manifest file (")))
(assert true)
(define-const var1575 String (getMessage/849299655 (cast-from-var3065-to-var1996 var1952))) ; Statement: $r5 = virtualinvoke $r2.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3704 String (append/672562846 var1947 var1575)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1947!1 String)
(assert (= var1947!1 (str.++ var1947 var1575)))
(assert true)
(define-const var2786 String (append/672562846 var3704 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3704!1 String)
(assert (= var3704!1 (str.++ var3704 ")")))
(assert true)
(define-const var3653 String (toString/-2075883882 var2786)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3897 var3653 (cast-from-var3065-to-var1996 var1952))) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r2) 

(declare-const var3897!1 var612)
(declare-const var3653!1 String)
(declare-const var1952!1 var3065)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1430-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest), var612-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3065-to-var1996=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3263=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var812=r11, var190=java.io.Reader, var592=r1, var1430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var3900=$r0, var3065=java.io.IOException, var1952=$r2, var612=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3897=$r3, var3921=$r4, var1947=$r6, var1996=java.lang.Throwable, var1575=$r5, var3704=$r7, var2786=$r8, var3653=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var3263, r11=var812, java.io.Reader=var190, r1=var592, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var1430, $r0=var3900, java.io.IOException=var3065, $r2=var1952, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var612, $r3=var3897, $r4=var3921, $r6=var1947, java.lang.Throwable=var1996, $r5=var1575, $r7=var3704, $r8=var2786, $r9=var3653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r1 := @parameter0: java.io.Reader;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest;	$r2 := @caughtexception;	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read manifest file (");	$r5 = virtualinvoke $r2.<java.io.IOException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r2);	throw $r3
;block_num 2