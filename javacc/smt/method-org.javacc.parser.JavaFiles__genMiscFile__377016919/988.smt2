(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var3217 0)
(declare-sort var525 0)
(declare-sort var2469 0)
(declare-sort var3148 0)
(declare-sort var60 0)
(declare-sort var842 0)
(declare-sort var2340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3217-init () var3217)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var60) String)
(declare-fun cast-from-var525-to-var60 (var525) var60)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2469 String) void)
(declare-fun var842_semantic_error/-498493661 (String) void)
(declare-fun var2340-init () var2340)
(declare-fun <init>/1750087229 (var2340) void)
(declare-const null-String String)
(declare-const null-var525 var525)
(declare-const var3148-err var2469)
(declare-const var2299 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2299 null-String)))
(declare-const var2778 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2778 null-String)))
(define-const var951 var3217 var3217-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var396 var525) ; Statement: $r25 := @caughtexception 
(assert (not (= var396 null-var525)))
(define-const var1490 var2469 var3148-err) ; Statement: $r27 = <java.lang.System: java.io.PrintStream err> 
(define-const var1061 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var1321 String (append/672562846 var1061!1 "Failed to create ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ") 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 "Failed to create ")))
(assert true)
(define-const var3421 String (append/672562846 var1321 var2299)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1321!1 String)
(assert (= var1321!1 (str.++ var1321 var2299)))
(assert true)
(define-const var1270 String (append/672562846 var3421 " ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3421!1 String)
(assert (= var3421!1 (str.++ var3421 " ")))
(assert true)
(define-const var1032 String (append/-1031950772 var1270 (cast-from-var525-to-var60 var396))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var1270!1 String)
(assert (str.prefixof var1270 var1270!1))
(assert true)
(define-const var133 String (toString/-2075883882 var1032)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1490 var133)) ; Statement: virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32) 

(declare-const var1490!1 var2469)
(declare-const var133!1 String)
(define-const var354 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var354)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var354!1 String)
(assert (= var354!1 ""))
(assert true)
(define-const var1444 String (append/672562846 var354!1 "Could not open file ")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ") 
(declare-const var354!2 String)
(assert (= var354!2 (str.++ var354!1 "Could not open file ")))
(assert true)
(define-const var2492 String (append/672562846 var1444 var2299)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1444!1 String)
(assert (= var1444!1 (str.++ var1444 var2299)))
(assert true)
(define-const var3936 String (append/672562846 var2492 " for writing.")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var2492!1 String)
(assert (= var2492!1 (str.++ var2492 " for writing.")))
(assert true)
(define-const var2191 String (toString/-2075883882 var3936)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var842_semantic_error/-498493661 var2191)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37) 

(declare-const var2191!1 String)
(define-const var72 var2340 var2340-init) ; Statement: $r38 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var72)) ; Statement: specialinvoke $r38.<java.lang.Error: void <init>()>() 

(declare-const var72!1 var2340)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var3217-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var525-to-var60=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var842_semantic_error/-498493661=([java.lang.String], void), var2340-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var2299=r1, var1580=null_type, var2778=r8, var3217=java.io.File, var951=$r0, var525=java.io.IOException, var396=$r25, var2469=java.io.PrintStream, var3148=java.lang.System, var1490=$r27, var1061=$r26, var1321=$r28, var3421=$r29, var1270=$r30, var60=java.lang.Object, var1032=$r31, var133=$r32, var354=$r33, var1444=$r34, var2492=$r35, var3936=$r36, var2191=$r37, var842=org.javacc.parser.JavaCCErrors, var2340=java.lang.Error, var72=$r38}
; {r1=var2299, null_type=var1580, r8=var2778, java.io.File=var3217, $r0=var951, java.io.IOException=var525, $r25=var396, java.io.PrintStream=var2469, java.lang.System=var3148, $r27=var1490, $r26=var1061, $r28=var1321, $r29=var3421, $r30=var1270, java.lang.Object=var60, $r31=var1032, $r32=var133, $r33=var354, $r34=var1444, $r35=var2492, $r36=var3936, $r37=var2191, org.javacc.parser.JavaCCErrors=var842, java.lang.Error=var2340, $r38=var72}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r0 = new java.io.File;	$r25 := @caughtexception;	$r27 = <java.lang.System: java.io.PrintStream err>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37);	$r38 = new java.lang.Error;	specialinvoke $r38.<java.lang.Error: void <init>()>();	throw $r38
;block_num 2