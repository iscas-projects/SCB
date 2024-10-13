(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2876 0)
(declare-sort var3418 0)
(declare-sort var3880 0)
(declare-sort var601 0)
(declare-sort var1888 0)
(declare-sort var2578 0)
(declare-sort var2608 0)
(declare-sort var1887 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3418_isLegacyExceptionHandling/967608559 () Bool)
(declare-fun var3880-init () var3880)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2608) String)
(declare-fun cast-from-var601-to-var2608 (var601) var2608)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1888 String) void)
(declare-fun var1887_semantic_error/-498493661 (String) void)
(declare-fun var669-init () var669)
(declare-fun <init>/1750087229 (var669) void)
(declare-const null-var2876 var2876)
(declare-const null-var601 var601)
(declare-const var2578-err var1888)
(declare-const var2902 var2876) ; Statement: r8 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations 
(assert (not (= var2902 null-var2876)))
(define-const var2342 Bool var3418_isLegacyExceptionHandling/967608559) ; Statement: z0 = staticinvoke <org.javacc.parser.Options: boolean isLegacyExceptionHandling()>() 
 ; Statement: if z0 == 0 goto $r44 = "TokenMgrException.java" 
(assert (not (= (ite var2342 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2662 String "TokenMgrError.java") ; Statement: $r44 = "TokenMgrError.java" 
(define-const var986 String "TokenMgrError.java") ; Statement: $r43 = "TokenMgrError.java" 
 ; Statement: goto [?= r0 = $r43] 
(assert true) ; Non Conditional
(define-const var388 String var986) ; Statement: r0 = $r43 
(define-const var3140 var3880 var3880-init) ; Statement: $r1 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2993 var601) ; Statement: $r25 := @caughtexception 
(assert (not (= var2993 null-var601)))
(define-const var349 var1888 var2578-err) ; Statement: $r27 = <java.lang.System: java.io.PrintStream err> 
(define-const var1154 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1154)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1154!1 String)
(assert (= var1154!1 ""))
(assert true)
(define-const var817 String (append/672562846 var1154!1 "Failed to create ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ") 
(declare-const var1154!2 String)
(assert (= var1154!2 (str.++ var1154!1 "Failed to create ")))
(assert true)
(define-const var583 String (append/672562846 var817 var388)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var817!1 String)
(assert (= var817!1 (str.++ var817 var388)))
(assert true)
(define-const var2059 String (append/672562846 var583 " ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var583!1 String)
(assert (= var583!1 (str.++ var583 " ")))
(assert true)
(define-const var1378 String (append/-1031950772 var2059 (cast-from-var601-to-var2608 var2993))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var2059!1 String)
(assert (str.prefixof var2059 var2059!1))
(assert true)
(define-const var479 String (toString/-2075883882 var1378)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var349 var479)) ; Statement: virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32) 

(declare-const var349!1 var1888)
(declare-const var479!1 String)
(define-const var2371 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2371)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2371!1 String)
(assert (= var2371!1 ""))
(assert true)
(define-const var2866 String (append/672562846 var2371!1 "Could not open file ")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ") 
(declare-const var2371!2 String)
(assert (= var2371!2 (str.++ var2371!1 "Could not open file ")))
(assert true)
(define-const var3251 String (append/672562846 var2866 var388)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2866!1 String)
(assert (= var2866!1 (str.++ var2866 var388)))
(assert true)
(define-const var2166 String (append/672562846 var3251 " for writing.")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 " for writing.")))
(assert true)
(define-const var63 String (toString/-2075883882 var2166)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1887_semantic_error/-498493661 var63)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37) 

(declare-const var63!1 String)
(define-const var1246 var669 var669-init) ; Statement: $r38 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var1246)) ; Statement: specialinvoke $r38.<java.lang.Error: void <init>()>() 

(declare-const var1246!1 var669)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var3418_isLegacyExceptionHandling/967608559=([], boolean), var3880-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var601-to-var2608=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1887_semantic_error/-498493661=([java.lang.String], void), var669-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var2876=org.javacc.parser.JavaFiles$JavaResourceTemplateLocations, var2902=r8, var3418=org.javacc.parser.Options, var2342=z0, var2662=$r44, var986=$r43, var388=r0, var3880=java.io.File, var3140=$r1, var601=java.io.IOException, var2993=$r25, var1888=java.io.PrintStream, var2578=java.lang.System, var349=$r27, var1154=$r26, var817=$r28, var583=$r29, var2059=$r30, var2608=java.lang.Object, var1378=$r31, var479=$r32, var2371=$r33, var2866=$r34, var3251=$r35, var2166=$r36, var63=$r37, var1887=org.javacc.parser.JavaCCErrors, var669=java.lang.Error, var1246=$r38}
; {org.javacc.parser.JavaFiles$JavaResourceTemplateLocations=var2876, r8=var2902, org.javacc.parser.Options=var3418, z0=var2342, $r44=var2662, $r43=var986, r0=var388, java.io.File=var3880, $r1=var3140, java.io.IOException=var601, $r25=var2993, java.io.PrintStream=var1888, java.lang.System=var2578, $r27=var349, $r26=var1154, $r28=var817, $r29=var583, $r30=var2059, java.lang.Object=var2608, $r31=var1378, $r32=var479, $r33=var2371, $r34=var2866, $r35=var3251, $r36=var2166, $r37=var63, org.javacc.parser.JavaCCErrors=var1887, java.lang.Error=var669, $r38=var1246}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @parameter0: org.javacc.parser.JavaFiles$JavaResourceTemplateLocations;	z0 = staticinvoke <org.javacc.parser.Options: boolean isLegacyExceptionHandling()>();	if z0 == 0 goto $r44 = "TokenMgrException.java";	$r44 = "TokenMgrError.java";	$r43 = "TokenMgrError.java";	goto [?= r0 = $r43];	r0 = $r43;	$r1 = new java.io.File;	$r25 := @caughtexception;	$r27 = <java.lang.System: java.io.PrintStream err>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>($r32);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r37);	$r38 = new java.lang.Error;	specialinvoke $r38.<java.lang.Error: void <init>()>();	throw $r38
;block_num 4