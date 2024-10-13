(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3491 0)
(declare-sort var904 0)
(declare-sort var1963 0)
(declare-sort var2566 0)
(declare-sort var1098 0)
(declare-sort var328 0)
(declare-sort var3225 0)
(declare-sort var2632 0)
(declare-sort var880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toolName/-884741558 (var3491) String)
(declare-fun getName/1128186653 (var904) String)
(declare-fun var2566_getIdString/-826932917 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1098-init () var1098)
(declare-fun var328-init () var328)
(declare-fun var2632_semantic_error/-498493661 (String) void)
(declare-fun var880-init () var880)
(declare-fun <init>/1750087229 (var880) void)
(declare-const null-var3491 var3491)
(declare-const null-var904 var904)
(declare-const null-String String)
(declare-const null-var3225 var3225)
(declare-const var3334 var3491) ; Statement: r1 := @this: org.javacc.parser.OutputFile 
(assert (not (= var3334 null-var3491)))
(declare-const var2246 var904) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2246 null-var904)))
(declare-const var1435 String) ; Statement: r15 := @parameter1: java.lang.String 
(assert (not (= var1435 null-String)))
(define-const var3783 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3783)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3783!1 String)
(assert (= var3783!1 ""))
(assert true)
(define-const var2361 String (append/672562846 var3783!1 "/* ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var3783!2 String)
(assert (= var3783!2 (str.++ var3783!1 "/* ")))
(define-const var498 String (toolName/-884741558 var3334)) ; Statement: $r3 = r1.<org.javacc.parser.OutputFile: java.lang.String toolName> 
(assert true)
(define-const var1961 String (getName/1128186653 var2246)) ; Statement: $r4 = virtualinvoke r2.<java.io.File: java.lang.String getName()>() 
(define-const var2978 String (var2566_getIdString/-826932917 var498 var1961)) ; Statement: $r5 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.lang.String,java.lang.String)>($r3, $r4) 
(assert true)
(define-const var233 String (append/672562846 var2361 var2978)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2361!1 String)
(assert (= var2361!1 (str.++ var2361 var2978)))
(assert true)
(define-const var1860 String (append/672562846 var233 " Version ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ") 
(declare-const var233!1 String)
(assert (= var233!1 (str.++ var233 " Version ")))
(assert true)
(define-const var3885 String (toString/-2075883882 var1860)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2060 var1098 var1098-init) ; Statement: $r10 = new java.io.BufferedReader 
(define-const var621 var328 var328-init) ; Statement: $r11 = new java.io.FileReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3077 var3225) ; Statement: $r30 := @caughtexception 
(assert (not (= var3077 null-var3225)))
(define-const var1722 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1722)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1722!1 String)
(assert (= var1722!1 ""))
(assert true)
(define-const var417 String (append/672562846 var1722!1 "Could not open file ")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ") 
(declare-const var1722!2 String)
(assert (= var1722!2 (str.++ var1722!1 "Could not open file ")))
(assert true)
(define-const var84 String (getName/1128186653 var2246)) ; Statement: $r32 = virtualinvoke r2.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var68 String (append/672562846 var417 var84)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var417!1 String)
(assert (= var417!1 (str.++ var417 var84)))
(assert true)
(define-const var3420 String (append/672562846 var68 " for writing.")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var68!1 String)
(assert (= var68!1 (str.++ var68 " for writing.")))
(assert true)
(define-const var1116 String (toString/-2075883882 var3420)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2632_semantic_error/-498493661 var1116)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r36) 

(declare-const var1116!1 String)
(define-const var676 var880 var880-init) ; Statement: $r37 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var676)) ; Statement: specialinvoke $r37.<java.lang.Error: void <init>()>() 

(declare-const var676!1 var880)
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toolName/-884741558=([org.javacc.parser.OutputFile], java.lang.String), getName/1128186653=([java.io.File], java.lang.String), var2566_getIdString/-826932917=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1098-init=([], java.io.BufferedReader), var328-init=([], java.io.FileReader), var2632_semantic_error/-498493661=([java.lang.String], void), var880-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var3491=org.javacc.parser.OutputFile, var3334=r1, var904=java.io.File, var2246=r2, var1435=r15, var1963=null_type, var3783=$r0, var2361=$r6, var498=$r3, var1961=$r4, var2566=org.javacc.parser.JavaCCGlobals, var2978=$r5, var233=$r7, var1860=$r8, var3885=r9, var1098=java.io.BufferedReader, var2060=$r10, var328=java.io.FileReader, var621=$r11, var3225=java.io.FileNotFoundException, var3077=$r30, var1722=$r31, var417=$r33, var84=$r32, var68=$r34, var3420=$r35, var1116=$r36, var2632=org.javacc.parser.JavaCCErrors, var880=java.lang.Error, var676=$r37}
; {org.javacc.parser.OutputFile=var3491, r1=var3334, java.io.File=var904, r2=var2246, r15=var1435, null_type=var1963, $r0=var3783, $r6=var2361, $r3=var498, $r4=var1961, org.javacc.parser.JavaCCGlobals=var2566, $r5=var2978, $r7=var233, $r8=var1860, r9=var3885, java.io.BufferedReader=var1098, $r10=var2060, java.io.FileReader=var328, $r11=var621, java.io.FileNotFoundException=var3225, $r30=var3077, $r31=var1722, $r33=var417, $r32=var84, $r34=var68, $r35=var3420, $r36=var1116, org.javacc.parser.JavaCCErrors=var2632, java.lang.Error=var880, $r37=var676}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.javacc.parser.OutputFile;	r2 := @parameter0: java.io.File;	r15 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r3 = r1.<org.javacc.parser.OutputFile: java.lang.String toolName>;	$r4 = virtualinvoke r2.<java.io.File: java.lang.String getName()>();	$r5 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.lang.String,java.lang.String)>($r3, $r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.io.BufferedReader;	$r11 = new java.io.FileReader;	$r30 := @caughtexception;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ");	$r32 = virtualinvoke r2.<java.io.File: java.lang.String getName()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r36);	$r37 = new java.lang.Error;	specialinvoke $r37.<java.lang.Error: void <init>()>();	throw $r37
;block_num 2