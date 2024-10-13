(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var684 0)
(declare-sort var2392 0)
(declare-sort var2771 0)
(declare-sort var575 0)
(declare-sort var549 0)
(declare-sort var2891 0)
(declare-sort var874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2771_checkArgument/1735511034 (Bool) void)
(declare-fun isGlobal/-1537840511 (var575) Bool)
(declare-fun cast-from-var3868-to-var575 (var3868) var575)
(declare-fun var2771_checkState/1095365836 (Bool String var549) void)
(declare-fun cast-from-var3868-to-var549 (var3868) var549)
(declare-fun getOwnSlot/1483543251 (var575 String) var2891)
(declare-fun cast-from-var2891-to-var874 (var2891) var874)
(declare-fun var874_createImplicitGoogNamespace/-662756656 (String var3868 var2392) var874)
(declare-fun declareInternal/-131085874 (var575 String var2891) void)
(declare-fun cast-from-var874-to-var2891 (var874) var2891)
(declare-const null-var3868 var3868)
(declare-const null-String String)
(declare-const null-var2392 var2392)
(declare-const null-var874 var874)
(declare-const var3882 var3868) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var3882 null-var3868)))
(declare-const var731 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var731 null-String)))
(declare-const var2167 var2392) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2167 null-var2392)))
(assert true)
(define-const var1785 Bool (isEmpty/-1285796103 var731)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (not (= (ite var1785 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2722 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var2771_checkArgument/1735511034 var2722)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var2722!1 Bool)
(assert true)
(define-const var2612 Bool (isGlobal/-1537840511 (cast-from-var3868-to-var575 var3882))) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>() 
;(assert (var2771_checkState/1095365836 var2612 "Cannot declare implicit goog namespace in local scope %s" (cast-from-var3868-to-var549 var3882))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1) 

(declare-const var2612!1 Bool)
(declare-const var2188 String)
(declare-const var3882!1 var3868)
(assert true)
(define-const var1491 var2891 (getOwnSlot/1483543251 (cast-from-var3868-to-var575 var3882!1) var731)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
(define-const var2501 var874 (cast-from-var2891-to-var874 var1491)) ; Statement: $r4 = (com.google.javascript.jscomp.Var) $r2 
(define-const var2904 var874 var2501) ; Statement: r5 = $r4 
 ; Statement: if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
(assert (not (not (= var2501 null-var874)))) ; Negate: Cond: $r4 != null  
(define-const var2904!1 var874 (var874_createImplicitGoogNamespace/-662756656 var731 var3882!1 var2167)) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.Var: com.google.javascript.jscomp.Var createImplicitGoogNamespace(java.lang.String,com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node)>(r0, r1, r3) 
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var3868-to-var575 var3882!1) var731 (cast-from-var874-to-var2891 var2904!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, r5) 

(declare-const var3882!2 var3868)
(declare-const var731!1 String)
(declare-const var2904!2 var874)
 ; Statement: goto [?= return r5] 
(assert true) ; Non Conditional
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2771_checkArgument/1735511034=([boolean], void), isGlobal/-1537840511=([com.google.javascript.jscomp.AbstractScope], boolean), cast-from-var3868-to-var575=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var2771_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var3868-to-var549=([com.google.javascript.jscomp.Scope], java.lang.Object), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var2891-to-var874=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), var874_createImplicitGoogNamespace/-662756656=([java.lang.String, com.google.javascript.jscomp.Scope, com.google.javascript.rhino.Node], com.google.javascript.jscomp.Var), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var874-to-var2891=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var3868=com.google.javascript.jscomp.Scope, var3882=r1, var731=r0, var684=null_type, var2392=com.google.javascript.rhino.Node, var2167=r3, var1785=$z0, var2722=$z3, var2771=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var575=com.google.javascript.jscomp.AbstractScope, var2612=$z1, var549=java.lang.Object, var2188="Cannot declare implicit goog namespace in local scope %s", var2891=com.google.javascript.jscomp.AbstractVar, var1491=$r2, var874=com.google.javascript.jscomp.Var, var2501=$r4, var2904=r5}
; {com.google.javascript.jscomp.Scope=var3868, r1=var3882, r0=var731, null_type=var684, com.google.javascript.rhino.Node=var2392, r3=var2167, $z0=var1785, $z3=var2722, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2771, com.google.javascript.jscomp.AbstractScope=var575, $z1=var2612, java.lang.Object=var549, "Cannot declare implicit goog namespace in local scope %s"=var2188, com.google.javascript.jscomp.AbstractVar=var2891, $r2=var1491, com.google.javascript.jscomp.Var=var874, $r4=var2501, r5=var2904}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	$r4 = (com.google.javascript.jscomp.Var) $r2;	r5 = $r4;	if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	r5 = staticinvoke <com.google.javascript.jscomp.Var: com.google.javascript.jscomp.Var createImplicitGoogNamespace(java.lang.String,com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node)>(r0, r1, r3);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, r5);	goto [?= return r5];	return r5
;block_num 5