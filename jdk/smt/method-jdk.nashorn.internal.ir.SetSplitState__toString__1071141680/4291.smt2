(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3175 0)
(declare-sort var926 0)
(declare-sort var3208 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolName/-133345059 (var926) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/571410439 (var3208) String)
(declare-fun state/-45658435 (var3175) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-var3175 var3175)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var926-SCOPE var926)
(declare-const var1174-SET_SPLIT_STATE var3208)
(declare-const var3254 var3175) ; Statement: r8 := @this: jdk.nashorn.internal.ir.SetSplitState 
(assert (not (= var3254 null-var3175)))
(declare-const var139 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var139 null-String)))
(declare-const var2300 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2300 null-Bool)))
(define-const var3966 var926 var926-SCOPE) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE> 
(assert true)
(define-const var2349 String (symbolName/-133345059 var3966)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var876 String (append/672562846 var139 var2349)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var139!1 String)
(assert (= var139!1 (str.++ var139 var2349)))
(assert true)
(define-const var110 String (append/-1166366385 var876 46)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var876!1 String)
(assert (str.prefixof var876 var876!1))
(define-const var3678 var3208 var1174-SET_SPLIT_STATE) ; Statement: $r4 = <jdk.nashorn.internal.runtime.Scope: jdk.nashorn.internal.codegen.CompilerConstants$Call SET_SPLIT_STATE> 
(assert true)
(define-const var3844 String (name/571410439 var3678)) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.String name()>() 
(assert true)
(define-const var1770 String (append/672562846 var110 var3844)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var110!1 String)
(assert (= var110!1 (str.++ var110 var3844)))
(assert true)
(define-const var1832 String (append/-1166366385 var1770 40)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1770!1 String)
(assert (str.prefixof var1770 var1770!1))
(define-const var2698 Int (state/-45658435 var3254)) ; Statement: $i0 = r8.<jdk.nashorn.internal.ir.SetSplitState: int state> 
(assert true)
(define-const var1220 String (append/-1001720160 var1832 var2698)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1832!1 String)
(assert (str.prefixof var1832 var1832!1))
(assert true)
;(assert (append/672562846 var1220 ");")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1220!1 String)
(assert (= var1220!1 (str.++ var1220 ");")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/571410439=([jdk.nashorn.internal.codegen.CompilerConstants$Call], java.lang.String), state/-45658435=([jdk.nashorn.internal.ir.SetSplitState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var3175=jdk.nashorn.internal.ir.SetSplitState, var3254=r8, var139=r0, var2300=z0, var926=jdk.nashorn.internal.codegen.CompilerConstants, var3966=$r1, var2349=$r2, var876=$r3, var110=$r6, var3208=jdk.nashorn.internal.codegen.CompilerConstants$Call, var1174=jdk.nashorn.internal.runtime.Scope, var3678=$r4, var3844=$r5, var1770=$r7, var1832=$r9, var2698=$i0, var1220=$r10}
; {jdk.nashorn.internal.ir.SetSplitState=var3175, r8=var3254, r0=var139, z0=var2300, jdk.nashorn.internal.codegen.CompilerConstants=var926, $r1=var3966, $r2=var2349, $r3=var876, $r6=var110, jdk.nashorn.internal.codegen.CompilerConstants$Call=var3208, jdk.nashorn.internal.runtime.Scope=var1174, $r4=var3678, $r5=var3844, $r7=var1770, $r9=var1832, $i0=var2698, $r10=var1220}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r8 := @this: jdk.nashorn.internal.ir.SetSplitState;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants SCOPE>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = <jdk.nashorn.internal.runtime.Scope: jdk.nashorn.internal.codegen.CompilerConstants$Call SET_SPLIT_STATE>;	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.String name()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$i0 = r8.<jdk.nashorn.internal.ir.SetSplitState: int state>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	return
;block_num 1