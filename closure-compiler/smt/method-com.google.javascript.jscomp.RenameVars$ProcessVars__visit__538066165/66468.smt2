(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2327 0)
(declare-sort var87 0)
(declare-sort var1067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1067) Bool)
(declare-fun getString/-897720134 (var1067) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2327 var2327)
(declare-const null-var87 var87)
(declare-const null-var1067 var1067)
(declare-const var3574 var2327) ; Statement: r3 := @this: com.google.javascript.jscomp.RenameVars$ProcessVars 
(assert (not (= var3574 null-var2327)))
(declare-const var121 var87) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var121 null-var87)))
(declare-const var2065 var1067) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2065 null-var1067)))
(declare-const var2047 var1067) ; Statement: r1 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2047 null-var1067)))
(assert true)
(define-const var1742 Bool (isName/-1249361959 var2065)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 != 0 goto $r28 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= (ite var1742 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var390 String (getString/-897720134 var2065)) ; Statement: $r28 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var99 Bool (isEmpty/-1285796103 var390)) ; Statement: $z1 = virtualinvoke $r28.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isImportSpec()>() 
(assert (not (= (ite var99 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2327=com.google.javascript.jscomp.RenameVars$ProcessVars, var3574=r3, var87=com.google.javascript.jscomp.NodeTraversal, var121=r2, var1067=com.google.javascript.rhino.Node, var2065=r0, var2047=r1, var1742=$z0, var390=$r28, var99=$z1}
; {com.google.javascript.jscomp.RenameVars$ProcessVars=var2327, r3=var3574, com.google.javascript.jscomp.NodeTraversal=var87, r2=var121, com.google.javascript.rhino.Node=var1067, r0=var2065, r1=var2047, $z0=var1742, $r28=var390, $z1=var99}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.RenameVars$ProcessVars;	r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r1 := @parameter2: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 != 0 goto $r28 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r28 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r28.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isImportSpec()>();	return
;block_num 3