(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var3598) Bool)
(declare-fun getString/-897720134 (var3598) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3598 var3598)
(declare-const var3090 var3598) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3090 null-var3598)))
(assert true)
(define-const var253 Bool (isName/-1249361959 var3090)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (not (= (ite var253 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2945 String (getString/-897720134 var3090)) ; Statement: r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2755 Bool (isEmpty/-1285796103 var2945)) ; Statement: $z3 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r7 = r6 
(assert (= (ite var2755 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3564 String var2945) ; Statement: $r7 = r6 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3598=com.google.javascript.rhino.Node, var3090=r0, var253=$z0, var2945=r6, var2755=$z3, var3564=$r7}
; {com.google.javascript.rhino.Node=var3598, r0=var3090, $z0=var253, r6=var2945, $z3=var2755, $r7=var3564}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r7 = r6;	$r7 = r6;	return $r7
;block_num 4