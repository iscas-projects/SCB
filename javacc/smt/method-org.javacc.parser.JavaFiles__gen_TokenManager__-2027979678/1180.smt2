(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3852 0)
(declare-sort var2051 0)
(declare-sort var2712 0)
(declare-sort var565 0)
(declare-sort var229 0)
(declare-sort var82 0)
(declare-sort var2594 0)
(declare-sort var3931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2051-init () var2051)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var82) String)
(declare-fun cast-from-var2712-to-var82 (var2712) var82)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var565 String) void)
(declare-fun var2594_semantic_error/-498493661 (String) void)
(declare-fun var3931-init () var3931)
(declare-fun <init>/1750087229 (var3931) void)
(declare-const null-var3852 var3852)
(declare-const null-var2712 var2712)
(declare-const var229-err var565)
(declare-const var1266 var3852) ; Statement: r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var1266 null-var3852)))
(define-const var3994 var2051 var2051-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1103 var2712) ; Statement: $r24 := @caughtexception 
(assert (not (= var1103 null-var2712)))
(define-const var826 var565 var229-err) ; Statement: $r26 = <java.lang.System: java.io.PrintStream err> 
(define-const var3079 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3079)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3079!1 String)
(assert (= var3079!1 ""))
(assert true)
(define-const var1884 String (append/672562846 var3079!1 "Failed to create TokenManager ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create TokenManager ") 
(declare-const var3079!2 String)
(assert (= var3079!2 (str.++ var3079!1 "Failed to create TokenManager ")))
(assert true)
(define-const var1161 String (append/-1031950772 var1884 (cast-from-var2712-to-var82 var1103))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24) 
(declare-const var1884!1 String)
(assert (str.prefixof var1884 var1884!1))
(assert true)
(define-const var3465 String (toString/-2075883882 var1161)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var826 var3465)) ; Statement: virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var826!1 var565)
(declare-const var3465!1 String)
;(assert (var2594_semantic_error/-498493661 "Could not open file TokenManager.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file TokenManager.java for writing.") 

(declare-const var2843 String)
(define-const var3190 var3931 var3931-init) ; Statement: $r30 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var3190)) ; Statement: specialinvoke $r30.<java.lang.Error: void <init>()>() 

(declare-const var3190!1 var3931)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2051-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2712-to-var82=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2594_semantic_error/-498493661=([java.lang.String], void), var3931-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var3852=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var1266=r7, var2051=java.io.File, var3994=$r0, var2712=java.io.IOException, var1103=$r24, var565=java.io.PrintStream, var229=java.lang.System, var826=$r26, var3079=$r25, var1884=$r27, var82=java.lang.Object, var1161=$r28, var3465=$r29, var2594=org.javacc.parser.JavaCCErrors, var2843="Could not open file TokenManager.java for writing.", var3931=java.lang.Error, var3190=$r30}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var3852, r7=var1266, java.io.File=var2051, $r0=var3994, java.io.IOException=var2712, $r24=var1103, java.io.PrintStream=var565, java.lang.System=var229, $r26=var826, $r25=var3079, $r27=var1884, java.lang.Object=var82, $r28=var1161, $r29=var3465, org.javacc.parser.JavaCCErrors=var2594, "Could not open file TokenManager.java for writing."=var2843, java.lang.Error=var3931, $r30=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r24 := @caughtexception;	$r26 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create TokenManager ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file TokenManager.java for writing.");	$r30 = new java.lang.Error;	specialinvoke $r30.<java.lang.Error: void <init>()>();	throw $r30
;block_num 2