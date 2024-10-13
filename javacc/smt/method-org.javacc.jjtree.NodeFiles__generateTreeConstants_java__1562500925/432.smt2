(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var1578 0)
(declare-sort var1588 0)
(declare-sort var3169 0)
(declare-sort var1445 0)
(declare-sort var3050 0)
(declare-sort var2462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var575_nodeConstants/-664664870 () String)
(declare-fun var1578-init () var1578)
(declare-fun var1588_getJJTreeOutputDirectory/-709711143 () var1578)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1578 var1578 String) void)
(declare-fun var3169-init () var3169)
(declare-fun var3050-init () var3050)
(declare-fun toString/-1112415476 (var2462) String)
(declare-fun cast-from-var1445-to-var2462 (var1445) var2462)
(declare-fun <init>/1101485922 (var3050 String) void)
(declare-const null-var1445 var1445)
(define-const var3208 String var575_nodeConstants/-664664870) ; Statement: r0 = staticinvoke <org.javacc.jjtree.NodeFiles: java.lang.String nodeConstants()>() 
(define-const var1249 var1578 var1578-init) ; Statement: $r1 = new java.io.File 
(define-const var2407 var1578 var1588_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var220 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var220)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var220!1 String)
(assert (= var220!1 ""))
(assert true)
(define-const var2324 String (append/672562846 var220!1 var3208)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var220!2 String)
(assert (= var220!2 (str.++ var220!1 var3208)))
(assert true)
(define-const var1492 String (append/672562846 var2324 ".java")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var2324!1 String)
(assert (= var2324!1 (str.++ var2324 ".java")))
(assert true)
(define-const var2127 String (toString/-2075883882 var1492)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1249 var2407 var2127)) ; Statement: specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var1249!1 var1578)
(declare-const var2407!1 var1578)
(declare-const var2127!1 String)
(define-const var3429 var3169 var3169-init) ; Statement: $r7 = new org.javacc.parser.OutputFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2575 var1445) ; Statement: $r29 := @caughtexception 
(assert (not (= var2575 null-var1445)))
(define-const var1909 var3050 var3050-init) ; Statement: $r30 = new java.lang.Error 
(assert true)
(define-const var158 String (toString/-1112415476 (cast-from-var1445-to-var2462 var2575))) ; Statement: $r31 = virtualinvoke $r29.<java.io.IOException: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1101485922 var1909 var158)) ; Statement: specialinvoke $r30.<java.lang.Error: void <init>(java.lang.String)>($r31) 

(declare-const var1909!1 var3050)
(declare-const var158!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var575_nodeConstants/-664664870=([], java.lang.String), var1578-init=([], java.io.File), var1588_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var3169-init=([], org.javacc.parser.OutputFile), var3050-init=([], java.lang.Error), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1445-to-var2462=([java.io.IOException], java.lang.Throwable), <init>/1101485922=([java.lang.Error, java.lang.String], void)}
; {var575=org.javacc.jjtree.NodeFiles, var3208=r0, var1578=java.io.File, var1249=$r1, var1588=org.javacc.jjtree.JJTreeOptions, var2407=$r6, var220=$r2, var2324=$r3, var1492=$r4, var2127=$r5, var3169=org.javacc.parser.OutputFile, var3429=$r7, var1445=java.io.IOException, var2575=$r29, var3050=java.lang.Error, var1909=$r30, var2462=java.lang.Throwable, var158=$r31}
; {org.javacc.jjtree.NodeFiles=var575, r0=var3208, java.io.File=var1578, $r1=var1249, org.javacc.jjtree.JJTreeOptions=var1588, $r6=var2407, $r2=var220, $r3=var2324, $r4=var1492, $r5=var2127, org.javacc.parser.OutputFile=var3169, $r7=var3429, java.io.IOException=var1445, $r29=var2575, java.lang.Error=var3050, $r30=var1909, java.lang.Throwable=var2462, $r31=var158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Throwable: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.javacc.jjtree.NodeFiles: java.lang.String nodeConstants()>();	$r1 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = new org.javacc.parser.OutputFile;	$r29 := @caughtexception;	$r30 = new java.lang.Error;	$r31 = virtualinvoke $r29.<java.io.IOException: java.lang.String toString()>();	specialinvoke $r30.<java.lang.Error: void <init>(java.lang.String)>($r31);	throw $r30
;block_num 2