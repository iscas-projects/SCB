(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var553 0)
(declare-sort var3847 0)
(declare-sort var3693 0)
(declare-sort var1043 0)
(declare-sort var1878 0)
(declare-sort var3668 0)
(declare-sort var332 0)
(declare-sort var1298 0)
(declare-sort var1917 0)
(declare-sort var2221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorType/-890517346 (var3847) var3693)
(declare-fun getMessage/849299655 (var1878) String)
(declare-fun cast-from-var3847-to-var1878 (var3847) var1878)
(declare-fun ordinal/-291641772 (var332) Int)
(declare-fun cast-from-var3693-to-var332 (var3693) var332)
(declare-fun newSyntaxError/1949437110 (var553 String) var1298)
(declare-fun var1043_error/1194267908 (var2221 var1878) var1917)
(declare-fun cast-from-var1298-to-var2221 (var1298) var2221)
(declare-const null-var553 var553)
(declare-const null-var3847 var3847)
(declare-const var1043-$assertionsDisabled Bool)
(declare-const var3668-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType (Array Int Int))
(declare-const var637 var553) ; Statement: r2 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var637 null-var553)))
(declare-const var1150 var3847) ; Statement: r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException 
(assert (not (= var1150 null-var3847)))
(assert true)
(define-const var2522 var3693 (getErrorType/-890517346 var1150)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>() 
(define-const var3871 Bool var1043-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(assert (not (= (ite var3871 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1598 String (getMessage/849299655 (cast-from-var3847-to-var1878 var1150))) ; Statement: $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>() 
(define-const var396 (Array Int Int) var3668-$SwitchMap$jdk$nashorn$internal$runtime$JSErrorType) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType> 
(assert true)
(define-const var2997 Int (ordinal/-291641772 (cast-from-var3693-to-var332 var2522))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>() 
(define-const var3182 Int (select var396 var2997)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; } 
(assert (and (= var3182 5) (and (not (= var3182 4)) (and (not (= var3182 3)) (and (not (= var3182 2)) (and (not (= var3182 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(assert true)
(define-const var3754 var1298 (newSyntaxError/1949437110 var637 var1598)) ; Statement: $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20) 
(define-const var2909 var1917 (var1043_error/1194267908 (cast-from-var1298-to-var2221 var3754) (cast-from-var3847-to-var1878 var1150))) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r8, r0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorType/-890517346=([jdk.nashorn.internal.runtime.ParserException], jdk.nashorn.internal.runtime.JSErrorType), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3847-to-var1878=([jdk.nashorn.internal.runtime.ParserException], java.lang.Throwable), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3693-to-var332=([jdk.nashorn.internal.runtime.JSErrorType], java.lang.Enum), newSyntaxError/1949437110=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var1043_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1298-to-var2221=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var553=jdk.nashorn.internal.objects.Global, var637=r2, var3847=jdk.nashorn.internal.runtime.ParserException, var1150=r0, var3693=jdk.nashorn.internal.runtime.JSErrorType, var2522=r1, var1043=jdk.nashorn.internal.runtime.ECMAErrors, var3871=$z0, var1878=java.lang.Throwable, var1598=$r20, var3668=jdk.nashorn.internal.runtime.ECMAErrors$1, var396=$r3, var332=java.lang.Enum, var2997=$i0, var3182=$i1, var1298=jdk.nashorn.internal.runtime.ScriptObject, var3754=$r8, var1917=jdk.nashorn.internal.runtime.ECMAException, var2221=java.lang.Object, var2909=$r9}
; {jdk.nashorn.internal.objects.Global=var553, r2=var637, jdk.nashorn.internal.runtime.ParserException=var3847, r0=var1150, jdk.nashorn.internal.runtime.JSErrorType=var3693, r1=var2522, jdk.nashorn.internal.runtime.ECMAErrors=var1043, $z0=var3871, java.lang.Throwable=var1878, $r20=var1598, jdk.nashorn.internal.runtime.ECMAErrors$1=var3668, $r3=var396, java.lang.Enum=var332, $i0=var2997, $i1=var3182, jdk.nashorn.internal.runtime.ScriptObject=var1298, $r8=var3754, jdk.nashorn.internal.runtime.ECMAException=var1917, java.lang.Object=var2221, $r9=var2909}
;seq 
;cnt {}
;stmts r2 := @parameter0: jdk.nashorn.internal.objects.Global;	r0 := @parameter1: jdk.nashorn.internal.runtime.ParserException;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: jdk.nashorn.internal.runtime.JSErrorType getErrorType()>();	$z0 = <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>;	if $z0 != 0 goto $r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r20 = virtualinvoke r0.<jdk.nashorn.internal.runtime.ParserException: java.lang.String getMessage()>();	$r3 = <jdk.nashorn.internal.runtime.ECMAErrors$1: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSErrorType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSErrorType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r16 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newError(java.lang.String)>($r20);     case 2: goto $r14 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEvalError(java.lang.String)>($r20);     case 3: goto $r12 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>($r20);     case 4: goto $r10 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>($r20);     case 5: goto $r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);     case 6: goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>($r20);     case 7: goto $r4 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>($r20);     default: goto $r18 = new java.lang.AssertionError; };	$r8 = virtualinvoke r2.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>($r20);	$r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r8, r0);	return $r9
;block_num 3