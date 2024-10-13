(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1351) Bool)
(declare-fun getString/-897720134 (var1351) String)
(declare-const null-var1351 var1351)
(declare-const var354 var1351) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var354 null-var1351)))
(assert true)
(define-const var851 Bool (isName/-1249361959 var354)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert (not (= (ite var851 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1587 String (getString/-897720134 var354)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3639 Bool (= var1587 "NaN")) ; Statement: $z3 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("NaN") 
 ; Statement: if $z3 != 0 goto $z5 = 1 
(assert (not (= (ite var3639 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1497 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1351=com.google.javascript.rhino.Node, var354=r0, var851=$z0, var1587=$r7, var3639=$z3, var1497=$z5}
; {com.google.javascript.rhino.Node=var1351, r0=var354, $z0=var851, $r7=var1587, $z3=var3639, $z5=var1497}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("NaN");	if $z3 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 4