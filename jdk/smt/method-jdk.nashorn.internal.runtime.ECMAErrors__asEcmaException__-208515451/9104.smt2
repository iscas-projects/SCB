(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var2176 0)
(declare-sort var2079 0)
(declare-sort var1436 0)
(declare-sort var362 0)
(declare-sort var822 0)
(declare-sort var3420 0)
(declare-sort var956 0)
(declare-sort var2548 0)
(declare-sort var1242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var2176) var2079)
(declare-fun getMessage/849299655 (var362) String)
(declare-fun cast-from-var2176-to-var362 (var2176) var362)
(declare-fun ordinal/-291641772 (var3420) Int)
(declare-fun cast-from-var2079-to-var3420 (var2079) var3420)
(declare-fun newEvalError/694022319 (var1884 String) var956)
(declare-fun var1436_error/1194267908 (var1242 var362) var2548)
(declare-fun cast-from-var956-to-var1242 (var956) var1242)
(declare-const null-var1884 var1884)
(declare-const null-var2176 var2176)
(declare-const var1436-$assertionsDisabled Bool)
(declare-const var822-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var2026 var1884) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var2026 null-var1884)))
(declare-const var3065 var2176) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3065 null-var2176)))
(assert true)
(define-const var3370 var2079 (getErrorType/-890517346 var3065)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var190 Bool var1436-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var190 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2011 String (getMessage/849299655 (cast-from-var2176-to-var362 var3065))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var1946 (Array Int Int) var822-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var1162 Int (ordinal/-291641772 (cast-from-var2079-to-var3420 var3370))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var1164 Int (select var1946 var1162)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var1164 2) (and (not (= var1164 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(assert true)
(define-const var347 var956 (newEvalError/694022319 var2026 var2011)) ; Statement: $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20) 
(define-const var3823 var2548 (var1436_error/1194267908 (cast-from-var956-to-var1242 var347) (cast-from-var2176-to-var362 var3065))) ; Statement: $r15 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r14, r0) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2176-to-var362=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2079-to-var3420=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newEvalError/694022319=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var1436_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var956-to-var1242=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var1884=jdk.nashorn.internal.objects.Global, var2026=r2, var2176=jdk.nashorn.internal.runtime.ParserException, var3065=r0, var2079=jdk.nashorn.internal.runtime.JSErrorType, var3370=r1, var1436=jdk.nashorn.internal.runtime.ECMAErrors, var190=$z0, var362=java.lang.Throwable, var2011=$r20, var822=jdk.nashorn.internal.runtime.ECMAErrors$1, var1946=$r3, var3420=java.lang.Enum, var1162=$i0, var1164=$i1, var956=jdk.nashorn.internal.runtime.ScriptObject, var347=$r14, var2548=jdk.nashorn.internal.runtime.ECMAException, var1242=java.lang.Object, var3823=$r15}
; {jdk.nashorn.internal.objects.Global=var1884, r2=var2026, jdk.nashorn.internal.runtime.ParserException=var2176, r0=var3065, jdk.nashorn.internal.runtime.JSErrorType=var2079, r1=var3370, jdk.nashorn.internal.runtime.ECMAErrors=var1436, $z0=var190, java.lang.Throwable=var362, $r20=var2011, jdk.nashorn.internal.runtime.ECMAErrors$1=var822, $r3=var1946, java.lang.Enum=var3420, $i0=var1162, $i1=var1164, jdk.nashorn.internal.runtime.ScriptObject=var956, $r14=var347, jdk.nashorn.internal.runtime.ECMAException=var2548, java.lang.Object=var1242, $r15=var3823}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);	$r15 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r14, r0);	return $r15
;block_num 3