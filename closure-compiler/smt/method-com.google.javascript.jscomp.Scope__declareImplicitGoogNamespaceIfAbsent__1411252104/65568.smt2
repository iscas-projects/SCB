(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3815 0)
(declare-sort var583 0)
(declare-sort var3481 0)
(declare-sort var22 0)
(declare-sort var3315 0)
(declare-sort var2027 0)
(declare-sort var2731 0)
(declare-sort var1720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var22_checkArgument/1735511034 (Bool) void)
(declare-fun isGlobal/-1537840511 (var3315) Bool)
(declare-fun cast-from-var3815-to-var3315 (var3815) var3315)
(declare-fun var22_checkState/1095365836 (Bool String var2027) void)
(declare-fun cast-from-var3815-to-var2027 (var3815) var2027)
(declare-fun getOwnSlot/1483543251 (var3315 String) var2731)
(declare-fun cast-from-var2731-to-var1720 (var2731) var1720)
(declare-fun isImplicitGoogNamespace/-63558893 (var2731) Bool)
(declare-fun cast-from-var1720-to-var2731 (var1720) var2731)
(declare-const null-var3815 var3815)
(declare-const null-String String)
(declare-const null-var3481 var3481)
(declare-const null-var1720 var1720)
(declare-const var2314 var3815) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var2314 null-var3815)))
(declare-const var354 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var354 null-String)))
(declare-const var3404 var3481) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3404 null-var3481)))
(assert true)
(define-const var3972 Bool (isEmpty/-1285796103 var354)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (not (= (ite var3972 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2464 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var22_checkArgument/1735511034 var2464)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var2464!1 Bool)
(assert true)
(define-const var48 Bool (isGlobal/-1537840511 (cast-from-var3815-to-var3315 var2314))) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>() 
;(assert (var22_checkState/1095365836 var48 "Cannot declare implicit goog namespace in local scope %s" (cast-from-var3815-to-var2027 var2314))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1) 

(declare-const var48!1 Bool)
(declare-const var1987 String)
(declare-const var2314!1 var3815)
(assert true)
(define-const var1623 var2731 (getOwnSlot/1483543251 (cast-from-var3815-to-var3315 var2314!1) var354)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
(define-const var1653 var1720 (cast-from-var2731-to-var1720 var1623)) ; Statement: $r4 = (com.google.javascript.jscomp.Var) $r2 
(define-const var3819 var1720 var1653) ; Statement: r5 = $r4 
 ; Statement: if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
(assert (not (= var1653 null-var1720))) ; Cond: $r4 != null 
(assert true)
(define-const var2493 Bool (isImplicitGoogNamespace/-63558893 (cast-from-var1720-to-var2731 var1653))) ; Statement: $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>() 
 ; Statement: if $z2 == 0 goto return r5 
(assert (= (ite var2493 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var22_checkArgument/1735511034=([boolean], void), isGlobal/-1537840511=([com.google.javascript.jscomp.AbstractScope], boolean), cast-from-var3815-to-var3315=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var22_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var3815-to-var2027=([com.google.javascript.jscomp.Scope], java.lang.Object), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var2731-to-var1720=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), isImplicitGoogNamespace/-63558893=([com.google.javascript.jscomp.AbstractVar], boolean), cast-from-var1720-to-var2731=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var3815=com.google.javascript.jscomp.Scope, var2314=r1, var354=r0, var583=null_type, var3481=com.google.javascript.rhino.Node, var3404=r3, var3972=$z0, var2464=$z3, var22=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3315=com.google.javascript.jscomp.AbstractScope, var48=$z1, var2027=java.lang.Object, var1987="Cannot declare implicit goog namespace in local scope %s", var2731=com.google.javascript.jscomp.AbstractVar, var1623=$r2, var1720=com.google.javascript.jscomp.Var, var1653=$r4, var3819=r5, var2493=$z2}
; {com.google.javascript.jscomp.Scope=var3815, r1=var2314, r0=var354, null_type=var583, com.google.javascript.rhino.Node=var3481, r3=var3404, $z0=var3972, $z3=var2464, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var22, com.google.javascript.jscomp.AbstractScope=var3315, $z1=var48, java.lang.Object=var2027, "Cannot declare implicit goog namespace in local scope %s"=var1987, com.google.javascript.jscomp.AbstractVar=var2731, $r2=var1623, com.google.javascript.jscomp.Var=var1720, $r4=var1653, r5=var3819, $z2=var2493}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: boolean isGlobal()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z1, "Cannot declare implicit goog namespace in local scope %s", r1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	$r4 = (com.google.javascript.jscomp.Var) $r2;	r5 = $r4;	if $r4 != null goto $z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	$z2 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: boolean isImplicitGoogNamespace()>();	if $z2 == 0 goto return r5;	return r5
;block_num 5