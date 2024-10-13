(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var2908 0)
(declare-sort var2849 0)
(declare-sort var1502 0)
(declare-sort var1612 0)
(declare-sort var3226 0)
(declare-sort var3740 0)
(declare-sort var3193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2908-init () var2908)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3226) String)
(declare-fun cast-from-var2849-to-var3226 (var2849) var3226)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1502 String) void)
(declare-fun var3740_semantic_error/-498493661 (String) void)
(declare-fun var3193-init () var3193)
(declare-fun <init>/1750087229 (var3193) void)
(declare-const null-var914 var914)
(declare-const null-var2849 var2849)
(declare-const var1612-err var1502)
(declare-const var2843 var914) ; Statement: r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var2843 null-var914)))
(define-const var3168 var2908 var2908-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1712 var2849) ; Statement: $r24 := @caughtexception 
(assert (not (= var1712 null-var2849)))
(define-const var3952 var1502 var1612-err) ; Statement: $r26 = <java.lang.System: java.io.PrintStream err> 
(define-const var949 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var949)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var949!1 String)
(assert (= var949!1 ""))
(assert true)
(define-const var1919 String (append/672562846 var949!1 "Failed to create ParseException ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ParseException ") 
(declare-const var949!2 String)
(assert (= var949!2 (str.++ var949!1 "Failed to create ParseException ")))
(assert true)
(define-const var562 String (append/-1031950772 var1919 (cast-from-var2849-to-var3226 var1712))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24) 
(declare-const var1919!1 String)
(assert (str.prefixof var1919 var1919!1))
(assert true)
(define-const var3167 String (toString/-2075883882 var562)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3952 var3167)) ; Statement: virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var3952!1 var1502)
(declare-const var3167!1 String)
;(assert (var3740_semantic_error/-498493661 "Could not open file ParseException.java for writing.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file ParseException.java for writing.") 

(declare-const var3473 String)
(define-const var2231 var3193 var3193-init) ; Statement: $r30 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var2231)) ; Statement: specialinvoke $r30.<java.lang.Error: void <init>()>() 

(declare-const var2231!1 var3193)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2908-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2849-to-var3226=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3740_semantic_error/-498493661=([java.lang.String], void), var3193-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var914=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var2843=r7, var2908=java.io.File, var3168=$r0, var2849=java.io.IOException, var1712=$r24, var1502=java.io.PrintStream, var1612=java.lang.System, var3952=$r26, var949=$r25, var1919=$r27, var3226=java.lang.Object, var562=$r28, var3167=$r29, var3740=org.javacc.parser.JavaCCErrors, var3473="Could not open file ParseException.java for writing.", var3193=java.lang.Error, var2231=$r30}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var914, r7=var2843, java.io.File=var2908, $r0=var3168, java.io.IOException=var2849, $r24=var1712, java.io.PrintStream=var1502, java.lang.System=var1612, $r26=var3952, $r25=var949, $r27=var1919, java.lang.Object=var3226, $r28=var562, $r29=var3167, org.javacc.parser.JavaCCErrors=var3740, "Could not open file ParseException.java for writing."=var3473, java.lang.Error=var3193, $r30=var2231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	$r0 = new java.io.File;	$r24 := @caughtexception;	$r26 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ParseException ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r26.<java.io.PrintStream: void println(java.lang.String)>($r29);	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>("Could not open file ParseException.java for writing.");	$r30 = new java.lang.Error;	specialinvoke $r30.<java.lang.Error: void <init>()>();	throw $r30
;block_num 2