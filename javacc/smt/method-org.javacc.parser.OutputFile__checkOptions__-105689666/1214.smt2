(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1389 0)
(declare-sort var1304 0)
(declare-sort var3157 0)
(declare-sort var1629 0)
(declare-sort var1243 0)
(declare-sort var9 0)
(declare-sort var1798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3157-init () var3157)
(declare-fun var1629-init () var1629)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var1304) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var9_semantic_error/-498493661 (String) void)
(declare-fun var1798-init () var1798)
(declare-fun <init>/1750087229 (var1798) void)
(declare-const null-var1389 var1389)
(declare-const null-var1304 var1304)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1243 var1243)
(declare-const var1720 var1389) ; Statement: r20 := @this: org.javacc.parser.OutputFile 
(assert (not (= var1720 null-var1389)))
(declare-const var1400 var1304) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1400 null-var1304)))
(declare-const var2262 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var2262 null-__Array__Int__String__)))
(define-const var1769 var3157 var3157-init) ; Statement: $r22 = new java.io.BufferedReader 
(define-const var3239 var1629 var1629-init) ; Statement: $r21 = new java.io.FileReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3830 var1243) ; Statement: $r12 := @caughtexception 
(assert (not (= var3830 null-var1243)))
(define-const var3443 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3443)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3443!1 String)
(assert (= var3443!1 ""))
(assert true)
(define-const var2175 String (append/672562846 var3443!1 "Could not open file ")) ; Statement: $r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ") 
(declare-const var3443!2 String)
(assert (= var3443!2 (str.++ var3443!1 "Could not open file ")))
(assert true)
(define-const var2833 String (getName/1128186653 var1400)) ; Statement: $r14 = virtualinvoke r2.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var797 String (append/672562846 var2175 var2833)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2175!1 String)
(assert (= var2175!1 (str.++ var2175 var2833)))
(assert true)
(define-const var2050 String (append/672562846 var797 " for writing.")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.") 
(declare-const var797!1 String)
(assert (= var797!1 (str.++ var797 " for writing.")))
(assert true)
(define-const var3856 String (toString/-2075883882 var2050)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var9_semantic_error/-498493661 var3856)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r18) 

(declare-const var3856!1 String)
(define-const var3326 var1798 var1798-init) ; Statement: $r25 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var3326)) ; Statement: specialinvoke $r25.<java.lang.Error: void <init>()>() 

(declare-const var3326!1 var1798)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var3157-init=([], java.io.BufferedReader), var1629-init=([], java.io.FileReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var9_semantic_error/-498493661=([java.lang.String], void), var1798-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var1389=org.javacc.parser.OutputFile, var1720=r20, var1304=java.io.File, var1400=r2, var2262=r4, var3157=java.io.BufferedReader, var1769=$r22, var1629=java.io.FileReader, var3239=$r21, var1243=java.io.FileNotFoundException, var3830=$r12, var3443=$r24, var2175=$r15, var2833=$r14, var797=$r16, var2050=$r17, var3856=$r18, var9=org.javacc.parser.JavaCCErrors, var1798=java.lang.Error, var3326=$r25}
; {org.javacc.parser.OutputFile=var1389, r20=var1720, java.io.File=var1304, r2=var1400, r4=var2262, java.io.BufferedReader=var3157, $r22=var1769, java.io.FileReader=var1629, $r21=var3239, java.io.FileNotFoundException=var1243, $r12=var3830, $r24=var3443, $r15=var2175, $r14=var2833, $r16=var797, $r17=var2050, $r18=var3856, org.javacc.parser.JavaCCErrors=var9, java.lang.Error=var1798, $r25=var3326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.javacc.parser.OutputFile;	r2 := @parameter0: java.io.File;	r4 := @parameter1: java.lang.String[];	$r22 = new java.io.BufferedReader;	$r21 = new java.io.FileReader;	$r12 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open file ");	$r14 = virtualinvoke r2.<java.io.File: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for writing.");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r18);	$r25 = new java.lang.Error;	specialinvoke $r25.<java.lang.Error: void <init>()>();	throw $r25
;block_num 2