(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort var3373 0)
(declare-sort var1514 0)
(declare-sort var1624 0)
(declare-sort var30 0)
(declare-sort var3314 0)
(declare-sort var2375 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3373-init () var3373)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3314) String)
(declare-fun cast-from-var1514-to-var3314 (var1514) var3314)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1624 String) void)
(declare-fun var2375_semantic_error/-498493661 (String) void)
(declare-fun var1437-init () var1437)
(declare-fun <init>/1750087229 (var1437) void)
(declare-const null-var125 var125)
(declare-const null-var1514 var1514)
(declare-const var30-err var1624)
(declare-const var2631 var125) ; Statement: r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var2631 null-var125)))
(define-const var3232 var3373 var3373-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1454 var1514) ; Statement: $r24 := @caughtexception 
(assert (not (= var1454 null-var1514)))
(define-const var1026 var1624 var30-err) ; Statement: $r26 = <java.lang.System: java.io.PrintStream err> 
(define-const var22 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var22)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var22!1 String)
(assert (= var22!1 ""))
(assert true)
(define-const var1319 String (append/672562846 var22!1 "Failed to create CharStream ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create CharStream ") 
(declare-const var22!2 String)
(assert (= var22!2 (str.++ var22!1 "Failed to create CharStream ")))
(assert true)
(define-const var2724 String (append/-1031950772 var1319 (cast-from-var1514-to-var3314 var1454))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24) 
(declare-const var1319!1 String)
(assert (str.prefixof var1319 var1319!1))
(assert true)
(define-const var2023 String (toString/-2075883882 var2724)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1026 var2023)) ; Statement: virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var1026!1 var1624)
(declare-const var2023!1 String)
;(assert (var2375_semantic_error/-498493661 "Could not open file CharStream.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file CharStream.java for writing.") 

(declare-const var305 String)
(define-const var3526 var1437 var1437-init) ; Statement: $r30 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var3526)) ; Statement: specialinvoke $r30.<java.lang.Error: void <init>()>() 

(declare-const var3526!1 var1437)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3373-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1514-to-var3314=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2375_semantic_error/-498493661=([java.lang.String], void), var1437-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var125=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var2631=r7, var3373=java.io.File, var3232=$r0, var1514=java.io.IOException, var1454=$r24, var1624=java.io.PrintStream, var30=java.lang.System, var1026=$r26, var22=$r25, var1319=$r27, var3314=java.lang.Object, var2724=$r28, var2023=$r29, var2375=org.javacc.parser.JavaCCErrors, var305="Could not open file CharStream.java for writing.", var1437=java.lang.Error, var3526=$r30}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var125, r7=var2631, java.io.File=var3373, $r0=var3232, java.io.IOException=var1514, $r24=var1454, java.io.PrintStream=var1624, java.lang.System=var30, $r26=var1026, $r25=var22, $r27=var1319, java.lang.Object=var3314, $r28=var2724, $r29=var2023, org.javacc.parser.JavaCCErrors=var2375, "Could not open file CharStream.java for writing."=var305, java.lang.Error=var1437, $r30=var3526}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r24 := @caughtexception;	$r26 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create CharStream ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file CharStream.java for writing.");	$r30 = new java.lang.Error;	specialinvoke $r30.<java.lang.Error: void <init>()>();	throw $r30
;block_num 2