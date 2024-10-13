(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3668 0)
(declare-sort var3895 0)
(declare-sort var767 0)
(declare-sort var1952 0)
(declare-sort var3096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var767) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1952_isFunctionExpression/-417689451 (var767) Bool)
(declare-fun var3096_checkState/1431124798 (Bool) void)
(declare-const null-var3668 var3668)
(declare-const null-var3895 var3895)
(declare-const null-var767 var767)
(declare-const var2057 var3668) ; Statement: r8 := @this: com.google.javascript.jscomp.VarCheck 
(assert (not (= var2057 null-var3668)))
(declare-const var567 var3895) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var567 null-var3895)))
(declare-const var3823 var767) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3823 null-var767)))
(declare-const var2762 var767) ; Statement: r27 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2762 null-var767)))
(assert true)
(define-const var1087 String (getString/-897720134 var3823)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2050 Bool (isEmpty/-1285796103 var1087)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r2.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert (not (= (ite var2050 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2971 Bool (var1952_isFunctionExpression/-417689451 var2762)) ; Statement: $z13 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r27) 
 ; Statement: if $z13 != 0 goto $z15 = 1 
(assert (not (= (ite var2971 1 0) 0))) ; Cond: $z13 != 0 
(define-const var1965 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z15)] 
(assert true) ; Non Conditional
;(assert (var3096_checkState/1431124798 var1965)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z15) 

(declare-const var1965!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1952_isFunctionExpression/-417689451=([com.google.javascript.rhino.Node], boolean), var3096_checkState/1431124798=([boolean], void)}
; {var3668=com.google.javascript.jscomp.VarCheck, var2057=r8, var3895=com.google.javascript.jscomp.NodeTraversal, var567=r2, var767=com.google.javascript.rhino.Node, var3823=r0, var2762=r27, var1087=r1, var2050=$z0, var1952=com.google.javascript.jscomp.NodeUtil, var2971=$z13, var1965=$z15, var3096=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.VarCheck=var3668, r8=var2057, com.google.javascript.jscomp.NodeTraversal=var3895, r2=var567, com.google.javascript.rhino.Node=var767, r0=var3823, r27=var2762, r1=var1087, $z0=var2050, com.google.javascript.jscomp.NodeUtil=var1952, $z13=var2971, $z15=var1965, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3096}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.VarCheck;	r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r27 := @parameter2: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto r3 = virtualinvoke r2.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	$z13 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r27);	if $z13 != 0 goto $z15 = 1;	$z15 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z15)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z15);	return
;block_num 4