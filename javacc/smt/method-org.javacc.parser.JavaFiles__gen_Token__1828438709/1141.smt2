(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var319 0)
(declare-sort var3808 0)
(declare-sort var330 0)
(declare-sort var1330 0)
(declare-sort var3519 0)
(declare-sort var2335 0)
(declare-sort var2534 0)
(declare-sort var992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3808-init () var3808)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2335) String)
(declare-fun cast-from-var330-to-var2335 (var330) var2335)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1330 String) void)
(declare-fun var2534_semantic_error/-498493661 (String) void)
(declare-fun var992-init () var992)
(declare-fun <init>/1750087229 (var992) void)
(declare-const null-var319 var319)
(declare-const null-var330 var330)
(declare-const var3519-err var1330)
(declare-const var1161 var319) ; Statement: r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var1161 null-var319)))
(define-const var3564 var3808 var3808-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3538 var330) ; Statement: $r24 := @caughtexception 
(assert (not (= var3538 null-var330)))
(define-const var1402 var1330 var3519-err) ; Statement: $r26 = <java.lang.System: java.io.PrintStream err> 
(define-const var947 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var947)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var947!1 String)
(assert (= var947!1 ""))
(assert true)
(define-const var3704 String (append/672562846 var947!1 "Failed to create Token ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create Token ") 
(declare-const var947!2 String)
(assert (= var947!2 (str.++ var947!1 "Failed to create Token ")))
(assert true)
(define-const var662 String (append/-1031950772 var3704 (cast-from-var330-to-var2335 var3538))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24) 
(declare-const var3704!1 String)
(assert (str.prefixof var3704 var3704!1))
(assert true)
(define-const var3861 String (toString/-2075883882 var662)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1402 var3861)) ; Statement: virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var1402!1 var1330)
(declare-const var3861!1 String)
;(assert (var2534_semantic_error/-498493661 "Could not open file Token.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file Token.java for writing.") 

(declare-const var3115 String)
(define-const var2162 var992 var992-init) ; Statement: $r30 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var2162)) ; Statement: specialinvoke $r30.<java.lang.Error: void <init>()>() 

(declare-const var2162!1 var992)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3808-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var330-to-var2335=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2534_semantic_error/-498493661=([java.lang.String], void), var992-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var319=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var1161=r7, var3808=java.io.File, var3564=$r0, var330=java.io.IOException, var3538=$r24, var1330=java.io.PrintStream, var3519=java.lang.System, var1402=$r26, var947=$r25, var3704=$r27, var2335=java.lang.Object, var662=$r28, var3861=$r29, var2534=org.javacc.parser.JavaCCErrors, var3115="Could not open file Token.java for writing.", var992=java.lang.Error, var2162=$r30}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var319, r7=var1161, java.io.File=var3808, $r0=var3564, java.io.IOException=var330, $r24=var3538, java.io.PrintStream=var1330, java.lang.System=var3519, $r26=var1402, $r25=var947, $r27=var3704, java.lang.Object=var2335, $r28=var662, $r29=var3861, org.javacc.parser.JavaCCErrors=var2534, "Could not open file Token.java for writing."=var3115, java.lang.Error=var992, $r30=var2162}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r24 := @caughtexception;	$r26 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create Token ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file Token.java for writing.");	$r30 = new java.lang.Error;	specialinvoke $r30.<java.lang.Error: void <init>()>();	throw $r30
;block_num 2