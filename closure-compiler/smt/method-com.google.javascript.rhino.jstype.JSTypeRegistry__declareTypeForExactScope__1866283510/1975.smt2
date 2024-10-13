(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3772 0)
(declare-sort var2078 0)
(declare-sort var452 0)
(declare-sort var1593 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var386_checkState/1431124798 (Bool) void)
(declare-fun getTypeForScopeInternal/-1769158582 (var3772 var2078 String) var1593)
(declare-const null-var3772 var3772)
(declare-const null-var2078 var2078)
(declare-const null-String String)
(declare-const null-var1593 var1593)
(declare-const var410 var3772) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var410 null-var3772)))
(declare-const var2119 var2078) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var2119 null-var2078)))
(declare-const var2019 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2019 null-String)))
(declare-const var2074 var1593) ; Statement: r4 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var2074 null-var1593)))
(assert true)
(define-const var2665 Bool (isEmpty/-1285796103 var2019)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2665 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3867 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var386_checkState/1431124798 var3867)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3867!1 Bool)
(assert true)
(define-const var55 var1593 (getTypeForScopeInternal/-1769158582 var410 var2119 var2019)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
 ; Statement: if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 
(assert (not (= var55 null-var1593))) ; Negate: Cond: $r3 == null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var386_checkState/1431124798=([boolean], void), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var3772=com.google.javascript.rhino.jstype.JSTypeRegistry, var410=r1, var2078=com.google.javascript.rhino.StaticScope, var2119=r2, var2019=r0, var452=null_type, var1593=com.google.javascript.rhino.jstype.JSType, var2074=r4, var2665=$z0, var3867=$z1, var386=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var55=$r3}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var3772, r1=var410, com.google.javascript.rhino.StaticScope=var2078, r2=var2119, r0=var2019, null_type=var452, com.google.javascript.rhino.jstype.JSType=var1593, r4=var2074, $z0=var2665, $z1=var3867, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var386, $r3=var55}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	return 0
;block_num 4