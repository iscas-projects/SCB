(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort var3728 0)
(declare-sort var2073 0)
(declare-sort var365 0)
(declare-sort var3239 0)
(declare-sort var1702 0)
(declare-sort var1842 0)
(declare-sort var1384 0)
(declare-sort var222 0)
(declare-sort var1202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var3728) var2073)
(declare-fun getMessage/849299655 (var3239) String)
(declare-fun cast-from-var3728-to-var3239 (var3728) var3239)
(declare-fun ordinal/-291641772 (var1842) Int)
(declare-fun cast-from-var2073-to-var1842 (var2073) var1842)
(declare-fun newTypeError/1878676813 (var709 String) var1384)
(declare-fun var365_error/1194267908 (var1202 var3239) var222)
(declare-fun cast-from-var1384-to-var1202 (var1384) var1202)
(declare-const null-var709 var709)
(declare-const null-var3728 var3728)
(declare-const var365-$assertionsDisabled Bool)
(declare-const var1702-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var317 var709) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var317 null-var709)))
(declare-const var3612 var3728) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3612 null-var3728)))
(assert true)
(define-const var973 var2073 (getErrorType/-890517346 var3612)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var3722 Bool var365-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var3722 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1366 String (getMessage/849299655 (cast-from-var3728-to-var3239 var3612))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var1200 (Array Int Int) var1702-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var424 Int (ordinal/-291641772 (cast-from-var2073-to-var1842 var973))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var2710 Int (select var1200 var424)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var2710 6) (and (not (= var2710 5)) (and (not (= var2710 4)) (and (not (= var2710 3)) (and (not (= var2710 2)) (and (not (= var2710 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var3114 var1384 (newTypeError/1878676813 var317 var1366)) ; Statement: $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20) 
(define-const var3295 var222 (var365_error/1194267908 (cast-from-var1384-to-var1202 var3114) (cast-from-var3728-to-var3239 var3612))) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r6, r0) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3728-to-var3239=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2073-to-var1842=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newTypeError/1878676813=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var365_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1384-to-var1202=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var709=jdk.nashorn.internal.objects.Global, var317=r2, var3728=jdk.nashorn.internal.runtime.ParserException, var3612=r0, var2073=jdk.nashorn.internal.runtime.JSErrorType, var973=r1, var365=jdk.nashorn.internal.runtime.ECMAErrors, var3722=$z0, var3239=java.lang.Throwable, var1366=$r20, var1702=jdk.nashorn.internal.runtime.ECMAErrors$1, var1200=$r3, var1842=java.lang.Enum, var424=$i0, var2710=$i1, var1384=jdk.nashorn.internal.runtime.ScriptObject, var3114=$r6, var222=jdk.nashorn.internal.runtime.ECMAException, var1202=java.lang.Object, var3295=$r7}
; {jdk.nashorn.internal.objects.Global=var709, r2=var317, jdk.nashorn.internal.runtime.ParserException=var3728, r0=var3612, jdk.nashorn.internal.runtime.JSErrorType=var2073, r1=var973, jdk.nashorn.internal.runtime.ECMAErrors=var365, $z0=var3722, java.lang.Throwable=var3239, $r20=var1366, jdk.nashorn.internal.runtime.ECMAErrors$1=var1702, $r3=var1200, java.lang.Enum=var1842, $i0=var424, $i1=var2710, jdk.nashorn.internal.runtime.ScriptObject=var1384, $r6=var3114, jdk.nashorn.internal.runtime.ECMAException=var222, java.lang.Object=var1202, $r7=var3295}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r6, r0);	return $r7
;block_num 3