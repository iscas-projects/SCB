(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2544 0)
(declare-sort var3363 0)
(declare-sort var970 0)
(declare-sort var2471 0)
(declare-sort var2299 0)
(declare-sort var966 0)
(declare-sort var2617 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3363-init () var3363)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var966) String)
(declare-fun cast-from-var970-to-var966 (var970) var966)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2471 String) void)
(declare-fun var2617_semantic_error/-498493661 (String) void)
(declare-fun var3894-init () var3894)
(declare-fun <init>/1750087229 (var3894) void)
(declare-const null-var2544 var2544)
(declare-const null-var970 var970)
(declare-const var2299-err var2471)
(declare-const var1563 var2544) ; Statement: r10 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var1563 null-var2544)))
(define-const var2671 var3363 var3363-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2185 var970) ; Statement: $r28 := @caughtexception 
(assert (not (= var2185 null-var970)))
(define-const var394 var2471 var2299-err) ; Statement: $r30 = <java.lang.System: java.io.PrintStream err> 
(define-const var1849 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1849)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1849!1 String)
(assert (= var1849!1 ""))
(assert true)
(define-const var380 String (append/672562846 var1849!1 "Failed to create SimpleCharStream ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create SimpleCharStream ") 
(declare-const var1849!2 String)
(assert (= var1849!2 (str.++ var1849!1 "Failed to create SimpleCharStream ")))
(assert true)
(define-const var3662 String (append/-1031950772 var380 (cast-from-var970-to-var966 var2185))) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var380!1 String)
(assert (str.prefixof var380 var380!1))
(assert true)
(define-const var2355 String (toString/-2075883882 var3662)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var394 var2355)) ; Statement: virtualinvoke $r30.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var394!1 var2471)
(declare-const var2355!1 String)
;(assert (var2617_semantic_error/-498493661 "Could not open file SimpleCharStream.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file SimpleCharStream.java for writing.") 

(declare-const var637 String)
(define-const var1651 var3894 var3894-init) ; Statement: $r34 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var1651)) ; Statement: specialinvoke $r34.<java.lang.Error: void <init>()>() 

(declare-const var1651!1 var3894)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var3363-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var970-to-var966=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2617_semantic_error/-498493661=([java.lang.String], void), var3894-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var2544=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var1563=r10, var3363=java.io.File, var2671=$r0, var970=java.io.IOException, var2185=$r28, var2471=java.io.PrintStream, var2299=java.lang.System, var394=$r30, var1849=$r29, var380=$r31, var966=java.lang.Object, var3662=$r32, var2355=$r33, var2617=org.javacc.parser.JavaCCErrors, var637="Could not open file SimpleCharStream.java for writing.", var3894=java.lang.Error, var1651=$r34}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var2544, r10=var1563, java.io.File=var3363, $r0=var2671, java.io.IOException=var970, $r28=var2185, java.io.PrintStream=var2471, java.lang.System=var2299, $r30=var394, $r29=var1849, $r31=var380, java.lang.Object=var966, $r32=var3662, $r33=var2355, org.javacc.parser.JavaCCErrors=var2617, "Could not open file SimpleCharStream.java for writing."=var637, java.lang.Error=var3894, $r34=var1651}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r28 := @caughtexception;	$r30 = <java.lang.System: java.io.PrintStream err>;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create SimpleCharStream ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r30.<java.io.PrintStream: void println(java.lang.String)>($r33);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file SimpleCharStream.java for writing.");	$r34 = new java.lang.Error;	specialinvoke $r34.<java.lang.Error: void <init>()>();	throw $r34
;block_num 2