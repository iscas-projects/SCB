(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var65) Bool)
(declare-fun getString/-897720134 (var65) String)
(declare-const null-var65 var65)
(declare-const var3214 var65) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3214 null-var65)))
(assert true)
(define-const var1157 Bool (isName/-1249361959 var3214)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= (ite var1157 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1872 String (getString/-897720134 var3214)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var581 Bool (= var1872 "arguments")) ; Statement: $z3 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("arguments") 
 ; Statement: if $z3 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= (ite var581 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var65=com.google.javascript.rhino.Node, var3214=r0, var1157=$z0, var1872=$r1, var581=$z3}
; {com.google.javascript.rhino.Node=var65, r0=var3214, $z0=var1157, $r1=var1872, $z3=var581}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0);	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("arguments");	if $z3 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0);	return 1
;block_num 3