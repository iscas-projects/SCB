(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3995 0)
(declare-sort var2510 0)
(declare-sort var3157 0)
(declare-sort var909 0)
(declare-sort var1196 0)
(declare-sort var1372 0)
(declare-sort var3815 0)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2510-init () var2510)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1372) String)
(declare-fun cast-from-var3157-to-var1372 (var3157) var1372)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var909 String) void)
(declare-fun var3815_semantic_error/-498493661 (String) void)
(declare-fun var1225-init () var1225)
(declare-fun <init>/1750087229 (var1225) void)
(declare-const null-var3995 var3995)
(declare-const null-var3157 var3157)
(declare-const var1196-err var909)
(declare-const var3273 var3995) ; Statement: r10 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var3273 null-var3995)))
(define-const var2946 var2510 var2510-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var490 var3157) ; Statement: $r28 := @caughtexception 
(assert (not (= var490 null-var3157)))
(define-const var1163 var909 var1196-err) ; Statement: $r30 = <java.lang.System: java.io.PrintStream err> 
(define-const var3275 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3275)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3275!1 String)
(assert (= var3275!1 ""))
(assert true)
(define-const var368 String (append/672562846 var3275!1 "Failed to create JavaCharStream ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create JavaCharStream ") 
(declare-const var3275!2 String)
(assert (= var3275!2 (str.++ var3275!1 "Failed to create JavaCharStream ")))
(assert true)
(define-const var2672 String (append/-1031950772 var368 (cast-from-var3157-to-var1372 var490))) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var368!1 String)
(assert (str.prefixof var368 var368!1))
(assert true)
(define-const var3026 String (toString/-2075883882 var2672)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1163 var3026)) ; Statement: virtualinvoke $r30.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var1163!1 var909)
(declare-const var3026!1 String)
;(assert (var3815_semantic_error/-498493661 "Could not open file JavaCharStream.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file JavaCharStream.java for writing.") 

(declare-const var1871 String)
(define-const var486 var1225 var1225-init) ; Statement: $r34 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var486)) ; Statement: specialinvoke $r34.<java.lang.Error: void <init>()>() 

(declare-const var486!1 var1225)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var2510-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3157-to-var1372=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3815_semantic_error/-498493661=([java.lang.String], void), var1225-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var3995=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var3273=r10, var2510=java.io.File, var2946=$r0, var3157=java.io.IOException, var490=$r28, var909=java.io.PrintStream, var1196=java.lang.System, var1163=$r30, var3275=$r29, var368=$r31, var1372=java.lang.Object, var2672=$r32, var3026=$r33, var3815=org.javacc.parser.JavaCCErrors, var1871="Could not open file JavaCharStream.java for writing.", var1225=java.lang.Error, var486=$r34}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var3995, r10=var3273, java.io.File=var2510, $r0=var2946, java.io.IOException=var3157, $r28=var490, java.io.PrintStream=var909, java.lang.System=var1196, $r30=var1163, $r29=var3275, $r31=var368, java.lang.Object=var1372, $r32=var2672, $r33=var3026, org.javacc.parser.JavaCCErrors=var3815, "Could not open file JavaCharStream.java for writing."=var1871, java.lang.Error=var1225, $r34=var486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r28 := @caughtexception;	$r30 = <java.lang.System: java.io.PrintStream err>;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create JavaCharStream ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r30.<java.io.PrintStream: void println(java.lang.String)>($r33);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file JavaCharStream.java for writing.");	$r34 = new java.lang.Error;	specialinvoke $r34.<java.lang.Error: void <init>()>();	throw $r34
;block_num 2