(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var823 0)
(declare-sort var2060 0)
(declare-sort var860 0)
(declare-sort var1534 0)
(declare-sort var2014 0)
(declare-sort var2266 0)
(declare-sort var554 0)
(declare-sort var3208 0)
(declare-sort var2509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var2060) var860)
(declare-fun getMessage/849299655 (var2014) String)
(declare-fun cast-from-var2060-to-var2014 (var2060) var2014)
(declare-fun ordinal/-291641772 (var554) Int)
(declare-fun cast-from-var860-to-var554 (var860) var554)
(declare-fun var3208-init () var3208)
(declare-fun <init>/582965326 (var3208 var2509) void)
(declare-fun cast-from-String-to-var2509 (String) var2509)
(declare-const null-var823 var823)
(declare-const null-var2060 var2060)
(declare-const var1534-$assertionsDisabled Bool)
(declare-const var2266-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var1438 var823) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var1438 null-var823)))
(declare-const var2584 var2060) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var2584 null-var2060)))
(assert true)
(define-const var613 var860 (getErrorType/-890517346 var2584)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var89 Bool var1534-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var89 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2697 String (getMessage/849299655 (cast-from-var2060-to-var2014 var2584))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var1977 (Array Int Int) var2266-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var1234 Int (ordinal/-291641772 (cast-from-var860-to-var554 var613))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var3381 Int (select var1977 var1234)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (not (= var3381 7)) (and (not (= var3381 6)) (and (not (= var3381 5)) (and (not (= var3381 4)) (and (not (= var3381 3)) (and (not (= var3381 2)) (and (not (= var3381 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var2999 var3208 var3208-init) ; Statement: $r18 = new java.lang.AssertionError 
(assert true)
(define-const var1476 String (getMessage/849299655 (cast-from-var2060-to-var2014 var2584))) ; Statement: $r19 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert true)
;(assert (<init>/582965326 var2999 (cast-from-String-to-var2509 var1476))) ; Statement: specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19) 

(declare-const var2999!1 var3208)
(declare-const var1476!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2060-to-var2014=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var860-to-var554=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), var3208-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2509=([java.lang.String], java.lang.Object)}
; {var823=jdk.nashorn.internal.objects.Global, var1438=r2, var2060=jdk.nashorn.internal.runtime.ParserException, var2584=r0, var860=jdk.nashorn.internal.runtime.JSErrorType, var613=r1, var1534=jdk.nashorn.internal.runtime.ECMAErrors, var89=$z0, var2014=java.lang.Throwable, var2697=$r20, var2266=jdk.nashorn.internal.runtime.ECMAErrors$1, var1977=$r3, var554=java.lang.Enum, var1234=$i0, var3381=$i1, var3208=java.lang.AssertionError, var2999=$r18, var1476=$r19, var2509=java.lang.Object}
; {jdk.nashorn.internal.objects.Global=var823, r2=var1438, jdk.nashorn.internal.runtime.ParserException=var2060, r0=var2584, jdk.nashorn.internal.runtime.JSErrorType=var860, r1=var613, jdk.nashorn.internal.runtime.ECMAErrors=var1534, $z0=var89, java.lang.Throwable=var2014, $r20=var2697, jdk.nashorn.internal.runtime.ECMAErrors$1=var2266, $r3=var1977, java.lang.Enum=var554, $i0=var1234, $i1=var3381, java.lang.AssertionError=var3208, $r18=var2999, $r19=var1476, java.lang.Object=var2509}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r18 = new java.lang.AssertionError;	$r19 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19);	throw $r18
;block_num 3