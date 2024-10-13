(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3654 0)
(declare-sort var1777 0)
(declare-sort var1241 0)
(declare-sort var2608 0)
(declare-sort var3052 0)
(declare-sort var3485 0)
(declare-sort var1905 0)
(declare-sort var100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2608_checkArgument/1735511034 (Bool) void)
(declare-fun isGlobal/-1537840511 (var3052) Bool)
(declare-fun cast-from-var3654-to-var3052 (var3654) var3052)
(declare-fun var2608_checkState/1095365836 (Bool String var3485) void)
(declare-fun cast-from-var3654-to-var3485 (var3654) var3485)
(declare-fun getOwnSlot/1483543251 (var3052 String) var1905)
(declare-fun cast-from-var1905-to-var100 (var1905) var100)
(declare-fun var100_createImplicitGoogNamespace/-662756656 (String var3654 var1241) var100)
(declare-fun declareInternal/-131085874 (var3052 String var1905) void)
(declare-fun cast-from-var100-to-var1905 (var100) var1905)
(declare-const null-var3654 var3654)
(declare-const null-String String)
(declare-const null-var1241 var1241)
(declare-const null-var100 var100)
(declare-const var2702 var3654) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var2702 null-var3654)))
(declare-const var2591 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2591 null-String)))
(declare-const var345 var1241) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var345 null-var1241)))
(assert true)
(define-const var3497 Bool (isEmpty/-1285796103 var2591)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var3497 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2904 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var2608_checkArgument/1735511034 var2904)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var2904!1 Bool)
(assert true)
(define-const var545 Bool (isGlobal/-1537840511 (cast-from-var3654-to-var3052 var2702))) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>() 
;(assert (var2608_checkState/1095365836 var545 "Cannot declare implicit goog namespace in local scope %s" (cast-from-var3654-to-var3485 var2702))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1) 

(declare-const var545!1 Bool)
(declare-const var1572 String)
(declare-const var2702!1 var3654)
(assert true)
(define-const var2165 var1905 (getOwnSlot/1483543251 (cast-from-var3654-to-var3052 var2702!1) var2591)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
(define-const var644 var100 (cast-from-var1905-to-var100 var2165)) ; Statement: $r4 = (com.google.javascript.jscomp.Var) $r2 
(define-const var3390 var100 var644) ; Statement: r5 = $r4 
 ; Statement: if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
(assert (not (not (= var644 null-var100)))) ; Negate: Cond: $r4 != null  
(define-const var3390!1 var100 (var100_createImplicitGoogNamespace/-662756656 var2591 var2702!1 var345)) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.Var: com.google.javascript.jscomp.Var createImplicitGoogNamespace(java.lang.String,com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node)>(r0, r1, r3) 
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var3654-to-var3052 var2702!1) var2591 (cast-from-var100-to-var1905 var3390!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, r5) 

(declare-const var2702!2 var3654)
(declare-const var2591!1 String)
(declare-const var3390!2 var100)
 ; Statement: goto [?= return r5] 
(assert true) ; Non Conditional
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2608_checkArgument/1735511034=([boolean], void), isGlobal/-1537840511=([com.google.javascript.jscomp.AbstractScope], boolean), cast-from-var3654-to-var3052=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var2608_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var3654-to-var3485=([com.google.javascript.jscomp.Scope], java.lang.Object), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var1905-to-var100=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), var100_createImplicitGoogNamespace/-662756656=([java.lang.String, com.google.javascript.jscomp.Scope, com.google.javascript.rhino.Node], com.google.javascript.jscomp.Var), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var100-to-var1905=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var3654=com.google.javascript.jscomp.Scope, var2702=r1, var2591=r0, var1777=null_type, var1241=com.google.javascript.rhino.Node, var345=r3, var3497=$z0, var2904=$z3, var2608=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3052=com.google.javascript.jscomp.AbstractScope, var545=$z1, var3485=java.lang.Object, var1572="Cannot declare implicit goog namespace in local scope %s", var1905=com.google.javascript.jscomp.AbstractVar, var2165=$r2, var100=com.google.javascript.jscomp.Var, var644=$r4, var3390=r5}
; {com.google.javascript.jscomp.Scope=var3654, r1=var2702, r0=var2591, null_type=var1777, com.google.javascript.rhino.Node=var1241, r3=var345, $z0=var3497, $z3=var2904, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2608, com.google.javascript.jscomp.AbstractScope=var3052, $z1=var545, java.lang.Object=var3485, "Cannot declare implicit goog namespace in local scope %s"=var1572, com.google.javascript.jscomp.AbstractVar=var1905, $r2=var2165, com.google.javascript.jscomp.Var=var100, $r4=var644, r5=var3390}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	$r4 = (com.google.javascript.jscomp.Var) $r2;	r5 = $r4;	if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	r5 = staticinvoke <com.google.javascript.jscomp.Var: com.google.javascript.jscomp.Var createImplicitGoogNamespace(java.lang.String,com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node)>(r0, r1, r3);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, r5);	goto [?= return r5];	return r5
;block_num 5