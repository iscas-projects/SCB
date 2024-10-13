(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var3662 0)
(declare-sort var2082 0)
(declare-sort var2982 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1857_checkState/1431124798 (Bool) void)
(declare-fun var2365_getLookupScope/1292221576 (var3662 String) var3662)
(declare-fun getTypeForScopeInternal/-1769158582 (var2365 var3662 String) var2982)
(declare-const null-var2365 var2365)
(declare-const null-var3662 var3662)
(declare-const null-String String)
(declare-const null-var2982 var2982)
(declare-const var2266 var2365) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var2266 null-var2365)))
(declare-const var1804 var3662) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var1804 null-var3662)))
(declare-const var2428 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2428 null-String)))
(declare-const var1949 var2982) ; Statement: r5 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var1949 null-var2982)))
(assert true)
(define-const var3159 Bool (isEmpty/-1285796103 var2428)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3159 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1031 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1857_checkState/1431124798 var1031)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1031!1 Bool)
(define-const var837 var3662 (var2365_getLookupScope/1292221576 var1804 var2428)) ; Statement: $r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
(assert true)
(define-const var3523 var2982 (getTypeForScopeInternal/-1769158582 var2266 var837 var2428)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0) 
 ; Statement: if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 
(assert (not (= var3523 null-var2982))) ; Negate: Cond: $r4 == null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var1857_checkState/1431124798=([boolean], void), var2365_getLookupScope/1292221576=([com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.StaticScope), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var2365=com.google.javascript.rhino.jstype.JSTypeRegistry, var2266=r1, var3662=com.google.javascript.rhino.StaticScope, var1804=r2, var2428=r0, var2082=null_type, var2982=com.google.javascript.rhino.jstype.JSType, var1949=r5, var3159=$z0, var1031=$z1, var1857=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var837=$r3, var3523=$r4}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var2365, r1=var2266, com.google.javascript.rhino.StaticScope=var3662, r2=var1804, r0=var2428, null_type=var2082, com.google.javascript.rhino.jstype.JSType=var2982, r5=var1949, $z0=var3159, $z1=var1031, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1857, $r3=var837, $r4=var3523}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	$r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0);	if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	return 0
;block_num 4