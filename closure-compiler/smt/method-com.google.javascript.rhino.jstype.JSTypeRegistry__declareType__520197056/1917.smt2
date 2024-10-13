(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3569 0)
(declare-sort var2966 0)
(declare-sort var845 0)
(declare-sort var3889 0)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2800_checkState/1431124798 (Bool) void)
(declare-fun var3569_getLookupScope/1292221576 (var2966 String) var2966)
(declare-fun getTypeForScopeInternal/-1769158582 (var3569 var2966 String) var3889)
(declare-fun register/-751879681 (var3569 var2966 var3889 String) void)
(declare-const null-var3569 var3569)
(declare-const null-var2966 var2966)
(declare-const null-String String)
(declare-const null-var3889 var3889)
(declare-const var1849 var3569) ; Statement: r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var1849 null-var3569)))
(declare-const var3030 var2966) ; Statement: r2 := @parameter0: com.google.javascript.rhino.StaticScope 
(assert (not (= var3030 null-var2966)))
(declare-const var3884 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3884 null-String)))
(declare-const var2290 var3889) ; Statement: r5 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var2290 null-var3889)))
(assert true)
(define-const var567 Bool (isEmpty/-1285796103 var3884)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var567 1 0) 0))) ; Cond: $z0 != 0 
(define-const var568 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2800_checkState/1431124798 var568)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var568!1 Bool)
(define-const var3631 var2966 (var3569_getLookupScope/1292221576 var3030 var3884)) ; Statement: $r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0) 
(assert true)
(define-const var860 var3889 (getTypeForScopeInternal/-1769158582 var1849 var3631 var3884)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0) 
 ; Statement: if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 
(assert (= var860 null-var3889)) ; Cond: $r4 == null 
(assert true)
;(assert (register/-751879681 var1849 var3030 var2290 var3884)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0) 

(declare-const var1849!1 var3569)
(declare-const var3030!1 var2966)
(declare-const var2290!1 var3889)
(declare-const var3884!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2800_checkState/1431124798=([boolean], void), var3569_getLookupScope/1292221576=([com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.StaticScope), getTypeForScopeInternal/-1769158582=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType), register/-751879681=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, com.google.javascript.rhino.jstype.JSType, java.lang.String], void)}
; {var3569=com.google.javascript.rhino.jstype.JSTypeRegistry, var1849=r1, var2966=com.google.javascript.rhino.StaticScope, var3030=r2, var3884=r0, var845=null_type, var3889=com.google.javascript.rhino.jstype.JSType, var2290=r5, var567=$z0, var568=$z1, var2800=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3631=$r3, var860=$r4}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var3569, r1=var1849, com.google.javascript.rhino.StaticScope=var2966, r2=var3030, r0=var3884, null_type=var845, com.google.javascript.rhino.jstype.JSType=var3889, r5=var2290, $z0=var567, $z1=var568, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2800, $r3=var3631, $r4=var860}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r2 := @parameter0: com.google.javascript.rhino.StaticScope;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: com.google.javascript.rhino.jstype.JSType;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.StaticScope getLookupScope(com.google.javascript.rhino.StaticScope,java.lang.String)>(r2, r0);	$r4 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getTypeForScopeInternal(com.google.javascript.rhino.StaticScope,java.lang.String)>($r3, r0);	if $r4 == null goto virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	virtualinvoke r1.<com.google.javascript.rhino.jstype.JSTypeRegistry: void register(com.google.javascript.rhino.StaticScope,com.google.javascript.rhino.jstype.JSType,java.lang.String)>(r2, r5, r0);	return 1
;block_num 4