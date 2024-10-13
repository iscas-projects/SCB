(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3800 0)
(declare-sort var3631 0)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var3499) var3499)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3800 var3800)
(declare-const null-var3631 var3631)
(declare-const null-var3499 var3499)
(declare-const var3753 var3800) ; Statement: r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule 
(assert (not (= var3753 null-var3800)))
(declare-const var3116 var3631) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3116 null-var3631)))
(declare-const var3277 var3499) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3277 null-var3499)))
(define-const var3804 var3499 null-var3499) ; Statement: r21 = null 
(define-const var740 String "") ; Statement: r22 = "" 
(assert true)
(define-const var3889 var3499 (getParent/-1802087535 var3277)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
 ; Statement: if r1 == null goto $z7 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>() 
(assert (= var3889 null-var3499)) ; Cond: r1 == null 
(assert true)
(define-const var2645 Bool (isEmpty/-1285796103 var740)) ; Statement: $z7 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z7 == 0 goto (branch) 
(assert (= (ite var2645 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: if r21 != null goto $z0 = virtualinvoke r21.<com.google.javascript.rhino.Node: boolean isCall()>() 
(assert (not (not (= var3804 null-var3499)))) ; Negate: Cond: r21 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3800=com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule, var3753=r2, var3631=com.google.javascript.jscomp.NodeTraversal, var3116=r5, var3499=com.google.javascript.rhino.Node, var3277=r0, var3804=r21, var740=r22, var3889=r1, var2645=$z7}
; {com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule=var3800, r2=var3753, com.google.javascript.jscomp.NodeTraversal=var3631, r5=var3116, com.google.javascript.rhino.Node=var3499, r0=var3277, r21=var3804, r22=var740, r1=var3889, $z7=var2645}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule;	r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r21 = null;	r22 = "";	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	if r1 == null goto $z7 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>();	$z7 = virtualinvoke r22.<java.lang.String: boolean isEmpty()>();	if $z7 == 0 goto (branch);	if r21 != null goto $z0 = virtualinvoke r21.<com.google.javascript.rhino.Node: boolean isCall()>();	return null
;block_num 4