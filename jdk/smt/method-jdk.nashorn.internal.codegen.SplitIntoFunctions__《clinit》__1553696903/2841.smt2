(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var676 0)
(declare-sort var3759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var676!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun symbolName/-133345059 (var3759) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var3759-THIS var3759)
(declare-const var3759-RETURN var3759)
(declare-const var676-RETURN_NAME String)
(define-const var3694 ClassObject var676!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/codegen/SplitIntoFunctions;" 
(assert true)
(define-const var472 Bool (desiredAssertionStatus/-1561484483 var3694)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var472 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2477 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var1023 Bool var2477) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1 
(define-const var2286 var3759 var3759-THIS) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS> 
(assert true)
(define-const var3171 String (symbolName/-133345059 var2286)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(define-const var3054 String var3171) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME> = $r2 
(define-const var3783 var3759 var3759-RETURN) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants RETURN> 
(assert true)
(define-const var2972 String (symbolName/-133345059 var3783)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(define-const var1354 String var2972) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> = $r4 
(define-const var1072 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1072)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1072!1 String)
(assert (= var1072!1 ""))
(define-const var1024 String var676-RETURN_NAME) ; Statement: $r6 = <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> 
(assert true)
(define-const var2961 String (append/672562846 var1072!1 var1024)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1072!2 String)
(assert (= var1072!2 (str.++ var1072!1 var1024)))
(assert true)
(define-const var1933 String (append/672562846 var2961 "-in")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-in") 
(declare-const var2961!1 String)
(assert (= var2961!1 (str.++ var2961 "-in")))
(assert true)
(define-const var3348 String (toString/-2075883882 var1933)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3295 String var3348) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var676=jdk.nashorn.internal.codegen.SplitIntoFunctions, var3694=$r0, var472=$z0, var2477=$z1, var1023=<jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled>, var3759=jdk.nashorn.internal.codegen.CompilerConstants, var2286=$r1, var3171=$r2, var3054=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME>, var3783=$r3, var2972=$r4, var1354=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>, var1072=$r5, var1024=$r6, var2961=$r7, var1933=$r8, var3348=$r9, var3295=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME>}
; {jdk.nashorn.internal.codegen.SplitIntoFunctions=var676, $r0=var3694, $z0=var472, $z1=var2477, <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled>=var1023, jdk.nashorn.internal.codegen.CompilerConstants=var3759, $r1=var2286, $r2=var3171, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME>=var3054, $r3=var3783, $r4=var2972, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>=var1354, $r5=var1072, $r6=var1024, $r7=var2961, $r8=var1933, $r9=var3348, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME>=var3295}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/codegen/SplitIntoFunctions;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1];	<jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME> = $r2;	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants RETURN>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-in");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME> = $r9;	return
;block_num 3