(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var2405 0)
(declare-sort var771 0)
(declare-sort var682 0)
(declare-sort var3425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3425_checkState/1431124798 (Bool) void)
(declare-fun getTypeForScopeInternal/-1769158582 (var2071 var2405 String) var682)
(declare-fun registerForScope/956842676 (var2071 var2405 var682 String) void)
(declare-const null-var2071 var2071)
(declare-const null-var2405 var2405)
(declare-const null-String String)
(declare-const null-var682 var682)
(declare-const var2681 var2071) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var2681 null-var2071)))
(declare-const var1517 var2405) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var1517 null-var2405)))
(declare-const var574 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var574 null-String)))
(declare-const var3055 var682) ; Statement: r4 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var3055 null-var682)))
(assert true)
(define-const var3763 Bool (isEmpty/-1285796103 var574)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3763 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3522 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3425_checkState/1431124798 var3522)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3522!1 Bool)
(assert true)
(define-const var1309 var682 (getTypeForScopeInternal/-1769158582 var2681 var1517 var574)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
 ; Statement: if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 
(assert (= var1309 null-var682)) ; Cond: $r3 == null 
(assert true)
;(assert (registerForScope/956842676 var2681 var1517 var3055 var574)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0) 

(declare-const var2681!1 var2071)
(declare-const var1517!1 var2405)
(declare-const var3055!1 var682)
(declare-const var574!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3425_checkState/1431124798=([boolean], void), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType), registerForScope/956842676=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, com.google.javascript.rhino.jstype.JSType, java.lang.String], void)}
; {var2071=com.google.javascript.rhino.jstype.JSTypeRegistry, var2681=r1, var2405=com.google.javascript.rhino.StaticScope, var1517=r2, var574=r0, var771=null_type, var682=com.google.javascript.rhino.jstype.JSType, var3055=r4, var3763=$z0, var3522=$z1, var3425=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1309=$r3}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var2071, r1=var2681, com.google.javascript.rhino.StaticScope=var2405, r2=var1517, r0=var574, null_type=var771, com.google.javascript.rhino.jstype.JSType=var682, r4=var3055, $z0=var3763, $z1=var3522, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3425, $r3=var1309}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	if $r3 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void registerForScope(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r4, r0);	return 1
;block_num 4