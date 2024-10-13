(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
(declare-sort var3340 0)
(declare-sort var3723 0)
(declare-sort var3288 0)
(declare-sort var660 0)
(declare-sort var3122 0)
(declare-sort var556 0)
(declare-sort var2374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3288_checkArgument/1735511034 (Bool) void)
(declare-fun isGlobal/-1537840511 (var660) Bool)
(declare-fun cast-from-var807-to-var660 (var807) var660)
(declare-fun var3288_checkState/1095365836 (Bool String var3122) void)
(declare-fun cast-from-var807-to-var3122 (var807) var3122)
(declare-fun getOwnSlot/1483543251 (var660 String) var556)
(declare-fun cast-from-var556-to-var2374 (var556) var2374)
(declare-fun isImplicitGoogNamespace/-63558893 (var556) Bool)
(declare-fun cast-from-var2374-to-var556 (var2374) var556)
(declare-const null-var807 var807)
(declare-const null-String String)
(declare-const null-var3723 var3723)
(declare-const null-var2374 var2374)
(declare-const var2273 var807) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var2273 null-var807)))
(declare-const var3509 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3509 null-String)))
(declare-const var957 var3723) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var957 null-var3723)))
(assert true)
(define-const var2258 Bool (isEmpty/-1285796103 var3509)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var2258 1 0) 0))) ; Cond: $z0 != 0 
(define-const var892 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var3288_checkArgument/1735511034 var892)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var892!1 Bool)
(assert true)
(define-const var2504 Bool (isGlobal/-1537840511 (cast-from-var807-to-var660 var2273))) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>() 
;(assert (var3288_checkState/1095365836 var2504 "Cannot declare implicit goog namespace in local scope %s" (cast-from-var807-to-var3122 var2273))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1) 

(declare-const var2504!1 Bool)
(declare-const var1346 String)
(declare-const var2273!1 var807)
(assert true)
(define-const var949 var556 (getOwnSlot/1483543251 (cast-from-var807-to-var660 var2273!1) var3509)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
(define-const var3522 var2374 (cast-from-var556-to-var2374 var949)) ; Statement: $r4 = (com.google.javascript.jscomp.Var) $r2 
(define-const var1819 var2374 var3522) ; Statement: r5 = $r4 
 ; Statement: if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
(assert (not (= var3522 null-var2374))) ; Cond: $r4 != null 
(assert true)
(define-const var2557 Bool (isImplicitGoogNamespace/-63558893 (cast-from-var2374-to-var556 var3522))) ; Statement: $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
 ; Statement: if $z2 == 0 goto return r5 
(assert (= (ite var2557 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3288_checkArgument/1735511034=([boolean], void), isGlobal/-1537840511=([com.google.javascript.jscomp.AbstractScope], boolean), cast-from-var807-to-var660=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var3288_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var807-to-var3122=([com.google.javascript.jscomp.Scope], java.lang.Object), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var556-to-var2374=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), isImplicitGoogNamespace/-63558893=([com.google.javascript.jscomp.AbstractVar], boolean), cast-from-var2374-to-var556=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var807=com.google.javascript.jscomp.Scope, var2273=r1, var3509=r0, var3340=null_type, var3723=com.google.javascript.rhino.Node, var957=r3, var2258=$z0, var892=$z3, var3288=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var660=com.google.javascript.jscomp.AbstractScope, var2504=$z1, var3122=java.lang.Object, var1346="Cannot declare implicit goog namespace in local scope %s", var556=com.google.javascript.jscomp.AbstractVar, var949=$r2, var2374=com.google.javascript.jscomp.Var, var3522=$r4, var1819=r5, var2557=$z2}
; {com.google.javascript.jscomp.Scope=var807, r1=var2273, r0=var3509, null_type=var3340, com.google.javascript.rhino.Node=var3723, r3=var957, $z0=var2258, $z3=var892, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3288, com.google.javascript.jscomp.AbstractScope=var660, $z1=var2504, java.lang.Object=var3122, "Cannot declare implicit goog namespace in local scope %s"=var1346, com.google.javascript.jscomp.AbstractVar=var556, $r2=var949, com.google.javascript.jscomp.Var=var2374, $r4=var3522, r5=var1819, $z2=var2557}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	$r4 = (com.google.javascript.jscomp.Var) $r2;	r5 = $r4;	if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	$z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	if $z2 == 0 goto return r5;	return r5
;block_num 5