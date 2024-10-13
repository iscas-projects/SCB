(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1030 0)
(declare-sort var3148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1030!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun symbolName/-133345059 (var3148) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var3148-THIS var3148)
(declare-const var3148-RETURN var3148)
(declare-const var1030-RETURN_NAME String)
(define-const var698 ClassObject var1030!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/codegen/SplitIntoFunctions;" 
(assert true)
(define-const var1174 Bool (desiredAssertionStatus/-1561484483 var698)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1174 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2909 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var788 Bool var2909) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1 
(define-const var2160 var3148 var3148-THIS) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS> 
(assert true)
(define-const var3866 String (symbolName/-133345059 var2160)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(define-const var3544 String var3866) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME> = $r2 
(define-const var2686 var3148 var3148-RETURN) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants RETURN> 
(assert true)
(define-const var955 String (symbolName/-133345059 var2686)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(define-const var3625 String var955) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> = $r4 
(define-const var3150 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3150)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3150!1 String)
(assert (= var3150!1 ""))
(define-const var2914 String var1030-RETURN_NAME) ; Statement: $r6 = <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> 
(assert true)
(define-const var514 String (append/672562846 var3150!1 var2914)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3150!2 String)
(assert (= var3150!2 (str.++ var3150!1 var2914)))
(assert true)
(define-const var3432 String (append/672562846 var514 "-in")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-in") 
(declare-const var514!1 String)
(assert (= var514!1 (str.++ var514 "-in")))
(assert true)
(define-const var1576 String (toString/-2075883882 var3432)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var307 String var1576) ; Statement: <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1030=jdk.nashorn.internal.codegen.SplitIntoFunctions, var698=$r0, var1174=$z0, var2909=$z1, var788=<jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled>, var3148=jdk.nashorn.internal.codegen.CompilerConstants, var2160=$r1, var3866=$r2, var3544=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME>, var2686=$r3, var955=$r4, var3625=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>, var3150=$r5, var2914=$r6, var514=$r7, var3432=$r8, var1576=$r9, var307=<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME>}
; {jdk.nashorn.internal.codegen.SplitIntoFunctions=var1030, $r0=var698, $z0=var1174, $z1=var2909, <jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled>=var788, jdk.nashorn.internal.codegen.CompilerConstants=var3148, $r1=var2160, $r2=var3866, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME>=var3544, $r3=var2686, $r4=var955, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>=var3625, $r5=var3150, $r6=var2914, $r7=var514, $r8=var3432, $r9=var1576, <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME>=var307}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/codegen/SplitIntoFunctions;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<jdk.nashorn.internal.codegen.SplitIntoFunctions: boolean $assertionsDisabled> = $z1;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String THIS_NAME> = $r2;	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants RETURN>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = <jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_NAME>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-in");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.nashorn.internal.codegen.SplitIntoFunctions: java.lang.String RETURN_PARAM_NAME> = $r9;	return
;block_num 3