(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1821 0)
(declare-sort var1730 0)
(declare-sort var1002 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolName/-133345059 (var1730) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/571410439 (var1002) String)
(declare-const null-var1821 var1821)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1730-SCOPE var1730)
(declare-const var1452-GET_SPLIT_STATE var1002)
(declare-const var3375 var1821) ; Statement: r8 := @this: jdk.nashorn.internal.ir.GetSplitState 
(assert (not (= var3375 null-var1821)))
(declare-const var1013 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1013 null-String)))
(declare-const var2791 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2791 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE> 
(assert (= (ite var2791 1 0) 0)) ; Cond: z0 == 0 
(define-const var3530 var1730 var1730-SCOPE) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE> 
(assert true)
(define-const var3326 String (symbolName/-133345059 var3530)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var2495 String (append/672562846 var1013 var3326)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1013!1 String)
(assert (= var1013!1 (str.++ var1013 var3326)))
(assert true)
(define-const var346 String (append/-1166366385 var2495 46)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2495!1 String)
(assert (str.prefixof var2495 var2495!1))
(define-const var260 var1002 var1452-GET_SPLIT_STATE) ; Statement: $r4 = <jdk.nashorn.internal.runtime.Scope: jdk.nashorn.internal.codegen.CompilerConstants$Call GET_SPLIT_STATE> 
(assert true)
(define-const var3705 String (name/571410439 var260)) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.String name()>() 
(assert true)
(define-const var2434 String (append/672562846 var346 var3705)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var346!1 String)
(assert (= var346!1 (str.++ var346 var3705)))
(assert true)
;(assert (append/672562846 var2434 "()")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2434!1 String)
(assert (= var2434!1 (str.++ var2434 "()")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/571410439=([jdk.nashorn.internal.codegen.CompilerConstants$Call], java.lang.String)}
; {var1821=jdk.nashorn.internal.ir.GetSplitState, var3375=r8, var1013=r0, var2791=z0, var1730=jdk.nashorn.internal.codegen.CompilerConstants, var3530=$r1, var3326=$r2, var2495=$r3, var346=$r6, var1002=jdk.nashorn.internal.codegen.CompilerConstants$Call, var1452=jdk.nashorn.internal.runtime.Scope, var260=$r4, var3705=$r5, var2434=$r7}
; {jdk.nashorn.internal.ir.GetSplitState=var1821, r8=var3375, r0=var1013, z0=var2791, jdk.nashorn.internal.codegen.CompilerConstants=var1730, $r1=var3530, $r2=var3326, $r3=var2495, $r6=var346, jdk.nashorn.internal.codegen.CompilerConstants$Call=var1002, jdk.nashorn.internal.runtime.Scope=var1452, $r4=var260, $r5=var3705, $r7=var2434}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r8 := @this: jdk.nashorn.internal.ir.GetSplitState;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	if z0 == 0 goto $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE>;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = <jdk.nashorn.internal.runtime.Scope: jdk.nashorn.internal.codegen.CompilerConstants$Call GET_SPLIT_STATE>;	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.String name()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	return
;block_num 2