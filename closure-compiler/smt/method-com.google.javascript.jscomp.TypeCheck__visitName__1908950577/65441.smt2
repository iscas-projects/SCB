(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var277 0)
(declare-sort var2502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var2502) var2502)
(declare-fun isFunction/-1932469268 (var2502) Bool)
(declare-fun getString/-897720134 (var2502) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var98 var98)
(declare-const null-var277 var277)
(declare-const null-var2502 var2502)
(declare-const var1473 var98) ; Statement: r3 := @this: com.google.javascript.jscomp.TypeCheck 
(assert (not (= var1473 null-var98)))
(declare-const var2611 var277) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var2611 null-var277)))
(declare-const var1650 var2502) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1650 null-var2502)))
(declare-const var1043 var2502) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var1043 null-var2502)))
(assert true)
(define-const var3701 var2502 (getParent/-1802087535 var1650)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert true)
(define-const var3698 Bool (isFunction/-1932469268 var3701)) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z0 == 0 goto $z9 = 0 
(assert (= (ite var3698 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2566 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var517 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var31 Bool var517) ; Statement: z1 = $z8 
 ; Statement: if $z9 == 0 goto z6 = 1 
(assert (not (= (ite var2566 1 0) 0))) ; Negate: Cond: $z9 == 0  
(assert true)
(define-const var3770 String (getString/-897720134 var1650)) ; Statement: $r14 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2380 Bool (isEmpty/-1285796103 var3770)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto z6 = 1 
(assert (not (= (ite var2380 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var98=com.google.javascript.jscomp.TypeCheck, var1473=r3, var277=com.google.javascript.jscomp.NodeTraversal, var2611=r5, var2502=com.google.javascript.rhino.Node, var1650=r0, var1043=r2, var3701=$r1, var3698=$z0, var2566=$z9, var517=$z8, var31=z1, var3770=$r14, var2380=$z3}
; {com.google.javascript.jscomp.TypeCheck=var98, r3=var1473, com.google.javascript.jscomp.NodeTraversal=var277, r5=var2611, com.google.javascript.rhino.Node=var2502, r0=var1650, r2=var1043, $r1=var3701, $z0=var3698, $z9=var2566, $z8=var517, z1=var31, $r14=var3770, $z3=var2380}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.TypeCheck;	r5 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$z0 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z0 == 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z1 = $z8;	if $z9 == 0 goto z6 = 1;	$r14 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke $r14.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto z6 = 1;	return 0
;block_num 5