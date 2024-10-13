(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var565 0)
(declare-sort var1606 0)
(declare-sort var916 0)
(declare-sort var1278 0)
(declare-sort var2611 0)
(declare-sort var755 0)
(declare-sort var2569 0)
(declare-sort var1926 0)
(declare-sort var2602 0)
(declare-sort var3880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var1606) var916)
(declare-fun getMessage/849299655 (var2611) String)
(declare-fun cast-from-var1606-to-var2611 (var1606) var2611)
(declare-fun ordinal/-291641772 (var2569) Int)
(declare-fun cast-from-var916-to-var2569 (var916) var2569)
(declare-fun newReferenceError/-1980522228 (var565 String) var1926)
(declare-fun var1278_error/1194267908 (var3880 var2611) var2602)
(declare-fun cast-from-var1926-to-var3880 (var1926) var3880)
(declare-const null-var565 var565)
(declare-const null-var1606 var1606)
(declare-const var1278-$assertionsDisabled Bool)
(declare-const var755-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var557 var565) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var557 null-var565)))
(declare-const var3412 var1606) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3412 null-var1606)))
(assert true)
(define-const var1561 var916 (getErrorType/-890517346 var3412)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var1735 Bool var1278-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var1735 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3534 String (getMessage/849299655 (cast-from-var1606-to-var2611 var3412))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var1136 (Array Int Int) var755-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var255 Int (ordinal/-291641772 (cast-from-var916-to-var2569 var1561))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var3769 Int (select var1136 var255)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var3769 4) (and (not (= var3769 3)) (and (not (= var3769 2)) (and (not (= var3769 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(assert true)
(define-const var712 var1926 (newReferenceError/-1980522228 var557 var3534)) ; Statement: $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20) 
(define-const var1692 var2602 (var1278_error/1194267908 (cast-from-var1926-to-var3880 var712) (cast-from-var1606-to-var2611 var3412))) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r10, r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1606-to-var2611=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var916-to-var2569=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newReferenceError/-1980522228=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var1278_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1926-to-var3880=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var565=jdk.nashorn.internal.objects.Global, var557=r2, var1606=jdk.nashorn.internal.runtime.ParserException, var3412=r0, var916=jdk.nashorn.internal.runtime.JSErrorType, var1561=r1, var1278=jdk.nashorn.internal.runtime.ECMAErrors, var1735=$z0, var2611=java.lang.Throwable, var3534=$r20, var755=jdk.nashorn.internal.runtime.ECMAErrors$1, var1136=$r3, var2569=java.lang.Enum, var255=$i0, var3769=$i1, var1926=jdk.nashorn.internal.runtime.ScriptObject, var712=$r10, var2602=jdk.nashorn.internal.runtime.ECMAException, var3880=java.lang.Object, var1692=$r11}
; {jdk.nashorn.internal.objects.Global=var565, r2=var557, jdk.nashorn.internal.runtime.ParserException=var1606, r0=var3412, jdk.nashorn.internal.runtime.JSErrorType=var916, r1=var1561, jdk.nashorn.internal.runtime.ECMAErrors=var1278, $z0=var1735, java.lang.Throwable=var2611, $r20=var3534, jdk.nashorn.internal.runtime.ECMAErrors$1=var755, $r3=var1136, java.lang.Enum=var2569, $i0=var255, $i1=var3769, jdk.nashorn.internal.runtime.ScriptObject=var1926, $r10=var712, jdk.nashorn.internal.runtime.ECMAException=var2602, java.lang.Object=var3880, $r11=var1692}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);	$r11 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r10, r0);	return $r11
;block_num 3