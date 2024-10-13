(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2674 0)
(declare-sort var2599 0)
(declare-sort var541 0)
(declare-sort var770 0)
(declare-sort var2538 0)
(declare-sort var3714 0)
(declare-sort var1288 0)
(declare-sort var1019 0)
(declare-sort var3324 0)
(declare-sort var461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var2599) var541)
(declare-fun getMessage/849299655 (var2538) String)
(declare-fun cast-from-var2599-to-var2538 (var2599) var2538)
(declare-fun ordinal/-291641772 (var1288) Int)
(declare-fun cast-from-var541-to-var1288 (var541) var1288)
(declare-fun newError/-371764109 (var2674 String) var1019)
(declare-fun var770_error/1194267908 (var461 var2538) var3324)
(declare-fun cast-from-var1019-to-var461 (var1019) var461)
(declare-const null-var2674 var2674)
(declare-const null-var2599 var2599)
(declare-const var770-$assertionsDisabled Bool)
(declare-const var3714-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var3582 var2674) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var3582 null-var2674)))
(declare-const var3594 var2599) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var3594 null-var2599)))
(assert true)
(define-const var3107 var541 (getErrorType/-890517346 var3594)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var3897 Bool var770-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var3897 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2616 String (getMessage/849299655 (cast-from-var2599-to-var2538 var3594))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var3067 (Array Int Int) var3714-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var3202 Int (ordinal/-291641772 (cast-from-var541-to-var1288 var3107))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var2759 Int (select var3067 var3202)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var2759 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(assert true)
(define-const var229 var1019 (newError/-371764109 var3582 var2616)) ; Statement: $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20) 
(define-const var2622 var3324 (var770_error/1194267908 (cast-from-var1019-to-var461 var229) (cast-from-var2599-to-var2538 var3594))) ; Statement: $r17 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r16, r0) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2599-to-var2538=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var541-to-var1288=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newError/-371764109=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var770_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1019-to-var461=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var2674=jdk.nashorn.internal.objects.Global, var3582=r2, var2599=jdk.nashorn.internal.runtime.ParserException, var3594=r0, var541=jdk.nashorn.internal.runtime.JSErrorType, var3107=r1, var770=jdk.nashorn.internal.runtime.ECMAErrors, var3897=$z0, var2538=java.lang.Throwable, var2616=$r20, var3714=jdk.nashorn.internal.runtime.ECMAErrors$1, var3067=$r3, var1288=java.lang.Enum, var3202=$i0, var2759=$i1, var1019=jdk.nashorn.internal.runtime.ScriptObject, var229=$r16, var3324=jdk.nashorn.internal.runtime.ECMAException, var461=java.lang.Object, var2622=$r17}
; {jdk.nashorn.internal.objects.Global=var2674, r2=var3582, jdk.nashorn.internal.runtime.ParserException=var2599, r0=var3594, jdk.nashorn.internal.runtime.JSErrorType=var541, r1=var3107, jdk.nashorn.internal.runtime.ECMAErrors=var770, $z0=var3897, java.lang.Throwable=var2538, $r20=var2616, jdk.nashorn.internal.runtime.ECMAErrors$1=var3714, $r3=var3067, java.lang.Enum=var1288, $i0=var3202, $i1=var2759, jdk.nashorn.internal.runtime.ScriptObject=var1019, $r16=var229, jdk.nashorn.internal.runtime.ECMAException=var3324, java.lang.Object=var461, $r17=var2622}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);	$r17 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r16, r0);	return $r17
;block_num 3