(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var1948 0)
(declare-sort var3505 0)
(declare-sort var2502 0)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var656_checkState/1431124798 (Bool) void)
(declare-fun var2490_getLookupScope/1292221576 (var1948 String) var1948)
(declare-fun getTypeForScopeInternal/-1769158582 (var2490 var1948 String) var2502)
(declare-const null-var2490 var2490)
(declare-const null-var1948 var1948)
(declare-const null-String String)
(declare-const null-var2502 var2502)
(declare-const var3585 var2490) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var3585 null-var2490)))
(declare-const var3641 var1948) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var3641 null-var1948)))
(declare-const var2639 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2639 null-String)))
(declare-const var3763 var2502) ; Statement: r5 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var3763 null-var2502)))
(assert true)
(define-const var2248 Bool (isEmpty/-1285796103 var2639)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2248 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2527 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var656_checkState/1431124798 var2527)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2527!1 Bool)
(define-const var2396 var1948 (var2490_getLookupScope/1292221576 var3641 var2639)) ; Statement: $r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
(assert true)
(define-const var28 var2502 (getTypeForScopeInternal/-1769158582 var3585 var2396 var2639)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0) 
 ; Statement: if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 
(assert (not (= var28 null-var2502))) ; Negate: Cond: $r4 == null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var656_checkState/1431124798=([boolean], void), var2490_getLookupScope/1292221576=([com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.StaticScope), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var2490=com.google.javascript.rhino.jstype.JSTypeRegistry, var3585=r1, var1948=com.google.javascript.rhino.StaticScope, var3641=r2, var2639=r0, var3505=null_type, var2502=com.google.javascript.rhino.jstype.JSType, var3763=r5, var2248=$z0, var2527=$z1, var656=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2396=$r3, var28=$r4}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var2490, r1=var3585, com.google.javascript.rhino.StaticScope=var1948, r2=var3641, r0=var2639, null_type=var3505, com.google.javascript.rhino.jstype.JSType=var2502, r5=var3763, $z0=var2248, $z1=var2527, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var656, $r3=var2396, $r4=var28}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	$r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0);	if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	return 0
;block_num 4