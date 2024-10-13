(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3269 0)
(declare-sort var891 0)
(declare-sort var3607 0)
(declare-sort var2538 0)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var485_checkState/1431124798 (Bool) void)
(declare-fun var3269_getLookupScope/1292221576 (var891 String) var891)
(declare-fun getTypeForScopeInternal/-1769158582 (var3269 var891 String) var2538)
(declare-fun register/-751879681 (var3269 var891 var2538 String) void)
(declare-const null-var3269 var3269)
(declare-const null-var891 var891)
(declare-const null-String String)
(declare-const null-var2538 var2538)
(declare-const var265 var3269) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var265 null-var3269)))
(declare-const var822 var891) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var822 null-var891)))
(declare-const var1229 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1229 null-String)))
(declare-const var3669 var2538) ; Statement: r5 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var3669 null-var2538)))
(assert true)
(define-const var1213 Bool (isEmpty/-1285796103 var1229)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1213 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3610 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var485_checkState/1431124798 var3610)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3610!1 Bool)
(define-const var899 var891 (var3269_getLookupScope/1292221576 var822 var1229)) ; Statement: $r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
(assert true)
(define-const var2160 var2538 (getTypeForScopeInternal/-1769158582 var265 var899 var1229)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0) 
 ; Statement: if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 
(assert (= var2160 null-var2538)) ; Cond: $r4 == null 
(assert true)
;(assert (register/-751879681 var265 var822 var3669 var1229)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 

(declare-const var265!1 var3269)
(declare-const var822!1 var891)
(declare-const var3669!1 var2538)
(declare-const var1229!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var485_checkState/1431124798=([boolean], void), var3269_getLookupScope/1292221576=([com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.StaticScope), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType), register/-751879681=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, com.google.javascript.rhino.jstype.JSType, java.lang.String], void)}
; {var3269=com.google.javascript.rhino.jstype.JSTypeRegistry, var265=r1, var891=com.google.javascript.rhino.StaticScope, var822=r2, var1229=r0, var3607=null_type, var2538=com.google.javascript.rhino.jstype.JSType, var3669=r5, var1213=$z0, var3610=$z1, var485=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var899=$r3, var2160=$r4}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var3269, r1=var265, com.google.javascript.rhino.StaticScope=var891, r2=var822, r0=var1229, null_type=var3607, com.google.javascript.rhino.jstype.JSType=var2538, r5=var3669, $z0=var1213, $z1=var3610, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var485, $r3=var899, $r4=var2160}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	$r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0);	if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	return 1
;block_num 4