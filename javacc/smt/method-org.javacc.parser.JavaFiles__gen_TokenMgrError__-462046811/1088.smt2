(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var55 0)
(declare-sort var733 0)
(declare-sort var153 0)
(declare-sort var478 0)
(declare-sort var233 0)
(declare-sort var3413 0)
(declare-sort var3392 0)
(declare-sort var1937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var55_isLegacyExceptionHandling/967608559 () Bool)
(declare-fun var733-init () var733)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3413) String)
(declare-fun cast-from-var153-to-var3413 (var153) var3413)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var478 String) void)
(declare-fun var3392_semantic_error/-498493661 (String) void)
(declare-fun var1937-init () var1937)
(declare-fun <init>/1750087229 (var1937) void)
(declare-const null-var2065 var2065)
(declare-const null-var153 var153)
(declare-const var233-err var478)
(declare-const var494 var2065) ; Statement: r8 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var494 null-var2065)))
(define-const var1510 Bool var55_isLegacyExceptionHandling/967608559) ; Statement: z0 = staticinvoke <org.javacc.parser.Options: boolean isLegacyExceptionHandling()>() 
 ; Statement: if z0 == 0 goto $r44 = "TokenMgrException.java" 
(assert (= (ite var1510 1 0) 0)) ; Cond: z0 == 0 
(define-const var2755 String "TokenMgrException.java") ; Statement: $r44 = "TokenMgrException.java" 
(define-const var781 String "TokenMgrException.java") ; Statement: $r43 = "TokenMgrException.java" 
(assert true) ; Non Conditional
(define-const var3106 String var781) ; Statement: r0 = $r43 
(define-const var314 var733 var733-init) ; Statement: $r1 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var183 var153) ; Statement: $r25 := @caughtexception 
(assert (not (= var183 null-var153)))
(define-const var598 var478 var233-err) ; Statement: $r27 = <java.lang.System: java.io.PrintStream err> 
(define-const var3886 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3886)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3886!1 String)
(assert (= var3886!1 ""))
(assert true)
(define-const var2242 String (append/672562846 var3886!1 "Failed to create ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ") 
(declare-const var3886!2 String)
(assert (= var3886!2 (str.++ var3886!1 "Failed to create ")))
(assert true)
(define-const var1852 String (append/672562846 var2242 var3106)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 var3106)))
(assert true)
(define-const var1789 String (append/672562846 var1852 " ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1852!1 String)
(assert (= var1852!1 (str.++ var1852 " ")))
(assert true)
(define-const var1108 String (append/-1031950772 var1789 (cast-from-var153-to-var3413 var183))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var1789!1 String)
(assert (str.prefixof var1789 var1789!1))
(assert true)
(define-const var1925 String (toString/-2075883882 var1108)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var598 var1925)) ; Statement: virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32) 

(declare-const var598!1 var478)
(declare-const var1925!1 String)
(define-const var768 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var768)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var768!1 String)
(assert (= var768!1 ""))
(assert true)
(define-const var1530 String (append/672562846 var768!1 "Could not open file ")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ") 
(declare-const var768!2 String)
(assert (= var768!2 (str.++ var768!1 "Could not open file ")))
(assert true)
(define-const var798 String (append/672562846 var1530 var3106)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1530!1 String)
(assert (= var1530!1 (str.++ var1530 var3106)))
(assert true)
(define-const var1415 String (append/672562846 var798 " for writing.")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 " for writing.")))
(assert true)
(define-const var347 String (toString/-2075883882 var1415)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3392_semantic_error/-498493661 var347)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37) 

(declare-const var347!1 String)
(define-const var1000 var1937 var1937-init) ; Statement: $r38 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var1000)) ; Statement: specialinvoke $r38.<java.lang.Error: void <init>()>() 

(declare-const var1000!1 var1937)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var55_isLegacyExceptionHandling/967608559=([], boolean), var733-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var153-to-var3413=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3392_semantic_error/-498493661=([java.lang.String], void), var1937-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var2065=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var494=r8, var55=org.javacc.parser.Options, var1510=z0, var2755=$r44, var781=$r43, var3106=r0, var733=java.io.File, var314=$r1, var153=java.io.IOException, var183=$r25, var478=java.io.PrintStream, var233=java.lang.System, var598=$r27, var3886=$r26, var2242=$r28, var1852=$r29, var1789=$r30, var3413=java.lang.Object, var1108=$r31, var1925=$r32, var768=$r33, var1530=$r34, var798=$r35, var1415=$r36, var347=$r37, var3392=org.javacc.parser.JavaCCErrors, var1937=java.lang.Error, var1000=$r38}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var2065, r8=var494, org.javacc.parser.Options=var55, z0=var1510, $r44=var2755, $r43=var781, r0=var3106, java.io.File=var733, $r1=var314, java.io.IOException=var153, $r25=var183, java.io.PrintStream=var478, java.lang.System=var233, $r27=var598, $r26=var3886, $r28=var2242, $r29=var1852, $r30=var1789, java.lang.Object=var3413, $r31=var1108, $r32=var1925, $r33=var768, $r34=var1530, $r35=var798, $r36=var1415, $r37=var347, org.javacc.parser.JavaCCErrors=var3392, java.lang.Error=var1937, $r38=var1000}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	z0 = staticinvoke <org.javacc.parser.Options: boolean isLegacyExceptionHandling()>();	if z0 == 0 goto $r44 = "TokenMgrException.java";	$r44 = "TokenMgrException.java";	$r43 = "TokenMgrException.java";	r0 = $r43;	$r1 = new java.io.File;	$r25 := @caughtexception;	$r27 = <java.lang.System: java.io.PrintStream err>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37);	$r38 = new java.lang.Error;	specialinvoke $r38.<java.lang.Error: void <init>()>();	throw $r38
;block_num 4