(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3020 0)
(declare-sort var529 0)
(declare-sort var2380 0)
(declare-sort var3720 0)
(declare-sort var1471 0)
(declare-sort var1729 0)
(declare-sort var3487 0)
(declare-sort var2387 0)
(declare-sort var685 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var529) var2380)
(declare-fun getMessage/849299655 (var1471) String)
(declare-fun cast-from-var529-to-var1471 (var529) var1471)
(declare-fun ordinal/-291641772 (var3487) Int)
(declare-fun cast-from-var2380-to-var3487 (var2380) var3487)
(declare-fun newRangeError/-924381058 (var3020 String) var2387)
(declare-fun var3720_error/1194267908 (var755 var1471) var685)
(declare-fun cast-from-var2387-to-var755 (var2387) var755)
(declare-const null-var3020 var3020)
(declare-const null-var529 var529)
(declare-const var3720-$assertionsDisabled Bool)
(declare-const var1729-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var2599 var3020) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var2599 null-var3020)))
(declare-const var418 var529) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var418 null-var529)))
(assert true)
(define-const var2456 var2380 (getErrorType/-890517346 var418)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var2653 Bool var3720-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var2653 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3916 String (getMessage/849299655 (cast-from-var529-to-var1471 var418))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var963 (Array Int Int) var1729-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var1259 Int (ordinal/-291641772 (cast-from-var2380-to-var3487 var2456))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var2232 Int (select var963 var1259)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var2232 3) (and (not (= var2232 2)) (and (not (= var2232 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(assert true)
(define-const var1556 var2387 (newRangeError/-924381058 var2599 var3916)) ; Statement: $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20) 
(define-const var323 var685 (var3720_error/1194267908 (cast-from-var2387-to-var755 var1556) (cast-from-var529-to-var1471 var418))) ; Statement: $r13 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r12, r0) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var529-to-var1471=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2380-to-var3487=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newRangeError/-924381058=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var3720_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var2387-to-var755=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var3020=jdk.nashorn.internal.objects.Global, var2599=r2, var529=jdk.nashorn.internal.runtime.ParserException, var418=r0, var2380=jdk.nashorn.internal.runtime.JSErrorType, var2456=r1, var3720=jdk.nashorn.internal.runtime.ECMAErrors, var2653=$z0, var1471=java.lang.Throwable, var3916=$r20, var1729=jdk.nashorn.internal.runtime.ECMAErrors$1, var963=$r3, var3487=java.lang.Enum, var1259=$i0, var2232=$i1, var2387=jdk.nashorn.internal.runtime.ScriptObject, var1556=$r12, var685=jdk.nashorn.internal.runtime.ECMAException, var755=java.lang.Object, var323=$r13}
; {jdk.nashorn.internal.objects.Global=var3020, r2=var2599, jdk.nashorn.internal.runtime.ParserException=var529, r0=var418, jdk.nashorn.internal.runtime.JSErrorType=var2380, r1=var2456, jdk.nashorn.internal.runtime.ECMAErrors=var3720, $z0=var2653, java.lang.Throwable=var1471, $r20=var3916, jdk.nashorn.internal.runtime.ECMAErrors$1=var1729, $r3=var963, java.lang.Enum=var3487, $i0=var1259, $i1=var2232, jdk.nashorn.internal.runtime.ScriptObject=var2387, $r12=var1556, jdk.nashorn.internal.runtime.ECMAException=var685, java.lang.Object=var755, $r13=var323}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);	$r13 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r12, r0);	return $r13
;block_num 3