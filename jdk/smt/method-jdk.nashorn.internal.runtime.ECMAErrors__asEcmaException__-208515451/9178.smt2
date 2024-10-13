(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var1628 0)
(declare-sort var33 0)
(declare-sort var130 0)
(declare-sort var1340 0)
(declare-sort var3804 0)
(declare-sort var3340 0)
(declare-sort var1404 0)
(declare-sort var2145 0)
(declare-sort var2453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var1628) var33)
(declare-fun getMessage/849299655 (var1340) String)
(declare-fun cast-from-var1628-to-var1340 (var1628) var1340)
(declare-fun ordinal/-291641772 (var3340) Int)
(declare-fun cast-from-var33-to-var3340 (var33) var3340)
(declare-fun newURIError/-580929171 (var1748 String) var1404)
(declare-fun var130_error/1194267908 (var2453 var1340) var2145)
(declare-fun cast-from-var1404-to-var2453 (var1404) var2453)
(declare-const null-var1748 var1748)
(declare-const null-var1628 var1628)
(declare-const var130-$assertionsDisabled Bool)
(declare-const var3804-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var2543 var1748) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var2543 null-var1748)))
(declare-const var3364 var1628) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3364 null-var1628)))
(assert true)
(define-const var92 var33 (getErrorType/-890517346 var3364)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var2619 Bool var130-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var2619 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3908 String (getMessage/849299655 (cast-from-var1628-to-var1340 var3364))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var1000 (Array Int Int) var3804-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var1485 Int (ordinal/-291641772 (cast-from-var33-to-var3340 var92))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var2004 Int (select var1000 var1485)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var2004 7) (and (not (= var2004 6)) (and (not (= var2004 5)) (and (not (= var2004 4)) (and (not (= var2004 3)) (and (not (= var2004 2)) (and (not (= var2004 1)) true)))))))) ; Intersect: Cond: $i1 == 7  and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(assert true)
(define-const var736 var1404 (newURIError/-580929171 var2543 var3908)) ; Statement: $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20) 
(define-const var252 var2145 (var130_error/1194267908 (cast-from-var1404-to-var2453 var736) (cast-from-var1628-to-var1340 var3364))) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r4, r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1628-to-var1340=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var33-to-var3340=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newURIError/-580929171=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var130_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1404-to-var2453=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var1748=jdk.nashorn.internal.objects.Global, var2543=r2, var1628=jdk.nashorn.internal.runtime.ParserException, var3364=r0, var33=jdk.nashorn.internal.runtime.JSErrorType, var92=r1, var130=jdk.nashorn.internal.runtime.ECMAErrors, var2619=$z0, var1340=java.lang.Throwable, var3908=$r20, var3804=jdk.nashorn.internal.runtime.ECMAErrors$1, var1000=$r3, var3340=java.lang.Enum, var1485=$i0, var2004=$i1, var1404=jdk.nashorn.internal.runtime.ScriptObject, var736=$r4, var2145=jdk.nashorn.internal.runtime.ECMAException, var2453=java.lang.Object, var252=$r5}
; {jdk.nashorn.internal.objects.Global=var1748, r2=var2543, jdk.nashorn.internal.runtime.ParserException=var1628, r0=var3364, jdk.nashorn.internal.runtime.JSErrorType=var33, r1=var92, jdk.nashorn.internal.runtime.ECMAErrors=var130, $z0=var2619, java.lang.Throwable=var1340, $r20=var3908, jdk.nashorn.internal.runtime.ECMAErrors$1=var3804, $r3=var1000, java.lang.Enum=var3340, $i0=var1485, $i1=var2004, jdk.nashorn.internal.runtime.ScriptObject=var1404, $r4=var736, jdk.nashorn.internal.runtime.ECMAException=var2145, java.lang.Object=var2453, $r5=var252}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);	$r5 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r4, r0);	return $r5
;block_num 3