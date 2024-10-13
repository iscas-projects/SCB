(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1692 0)
(declare-sort var418 0)
(declare-sort var848 0)
(declare-sort var3854 0)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3055_checkState/1431124798 (Bool) void)
(declare-fun getTypeForScopeInternal/-1769158582 (var1692 var418 String) var3854)
(declare-const null-var1692 var1692)
(declare-const null-var418 var418)
(declare-const null-String String)
(declare-const null-var3854 var3854)
(declare-const var2494 var1692) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var2494 null-var1692)))
(declare-const var1611 var418) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var1611 null-var418)))
(declare-const var192 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var192 null-String)))
(declare-const var727 var3854) ; Statement: r4 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var727 null-var3854)))
(assert true)
(define-const var1301 Bool (isEmpty/-1285796103 var192)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1301 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1037 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3055_checkState/1431124798 var1037)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1037!1 Bool)
(assert true)
(define-const var466 var3854 (getTypeForScopeInternal/-1769158582 var2494 var1611 var192)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
 ; Statement: if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 
(assert (not (= var466 null-var3854))) ; Negate: Cond: $r3 == null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3055_checkState/1431124798=([boolean], void), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var1692=com.google.javascript.rhino.jstype.JSTypeRegistry, var2494=r1, var418=com.google.javascript.rhino.StaticScope, var1611=r2, var192=r0, var848=null_type, var3854=com.google.javascript.rhino.jstype.JSType, var727=r4, var1301=$z0, var1037=$z1, var3055=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var466=$r3}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1692, r1=var2494, com.google.javascript.rhino.StaticScope=var418, r2=var1611, r0=var192, null_type=var848, com.google.javascript.rhino.jstype.JSType=var3854, r4=var727, $z0=var1301, $z1=var1037, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3055, $r3=var466}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	return 0
;block_num 4