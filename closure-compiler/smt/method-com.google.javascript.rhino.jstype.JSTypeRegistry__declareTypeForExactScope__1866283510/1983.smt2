(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2150 0)
(declare-sort var1462 0)
(declare-sort var730 0)
(declare-sort var1077 0)
(declare-sort var2731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2731_checkState/1431124798 (Bool) void)
(declare-fun getTypeForScopeInternal/-1769158582 (var2150 var1462 String) var1077)
(declare-fun registerForScope/956842676 (var2150 var1462 var1077 String) void)
(declare-const null-var2150 var2150)
(declare-const null-var1462 var1462)
(declare-const null-String String)
(declare-const null-var1077 var1077)
(declare-const var508 var2150) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var508 null-var2150)))
(declare-const var1305 var1462) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var1305 null-var1462)))
(declare-const var1744 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1744 null-String)))
(declare-const var2507 var1077) ; Statement: r4 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var2507 null-var1077)))
(assert true)
(define-const var2955 Bool (isEmpty/-1285796103 var1744)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2955 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3309 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2731_checkState/1431124798 var3309)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3309!1 Bool)
(assert true)
(define-const var438 var1077 (getTypeForScopeInternal/-1769158582 var508 var1305 var1744)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
 ; Statement: if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 
(assert (= var438 null-var1077)) ; Cond: $r3 == null 
(assert true)
;(assert (registerForScope/956842676 var508 var1305 var2507 var1744)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 

(declare-const var508!1 var2150)
(declare-const var1305!1 var1462)
(declare-const var2507!1 var1077)
(declare-const var1744!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2731_checkState/1431124798=([boolean], void), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType), registerForScope/956842676=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, com.google.javascript.rhino.jstype.JSType, java.lang.String], void)}
; {var2150=com.google.javascript.rhino.jstype.JSTypeRegistry, var508=r1, var1462=com.google.javascript.rhino.StaticScope, var1305=r2, var1744=r0, var730=null_type, var1077=com.google.javascript.rhino.jstype.JSType, var2507=r4, var2955=$z0, var3309=$z1, var2731=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var438=$r3}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var2150, r1=var508, com.google.javascript.rhino.StaticScope=var1462, r2=var1305, r0=var1744, null_type=var730, com.google.javascript.rhino.jstype.JSType=var1077, r4=var2507, $z0=var2955, $z1=var3309, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2731, $r3=var438}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	return 1
;block_num 4