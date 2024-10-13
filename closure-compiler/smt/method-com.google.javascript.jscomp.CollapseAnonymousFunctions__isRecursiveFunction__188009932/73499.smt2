(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort var75 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var75) var75)
(declare-fun getString/-897720134 (var75) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3124 var3124)
(declare-const null-var75 var75)
(declare-const var3054 var3124) ; Statement: r5 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions 
(assert (not (= var3054 null-var3124)))
(declare-const var3994 var75) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3994 null-var75)))
(assert true)
(define-const var2008 var75 (getFirstChild/2090828207 var3994)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2540 String (getString/-897720134 var2008)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var443 Bool (isEmpty/-1285796103 var2540)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (not (= (ite var443 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3124=com.google.javascript.jscomp.CollapseAnonymousFunctions, var3054=r5, var75=com.google.javascript.rhino.Node, var3994=r0, var2008=r1, var2540=$r2, var443=$z0}
; {com.google.javascript.jscomp.CollapseAnonymousFunctions=var3124, r5=var3054, com.google.javascript.rhino.Node=var75, r0=var3994, r1=var2008, $r2=var2540, $z0=var443}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	return 0
;block_num 2