(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/860944727 (var3437) String)
(declare-fun resultEqualsValue/860944727 (var3437) Bool)
(declare-const null-var3437 var3437)
(declare-const null-var2163 var2163)
(declare-const var693 var3437) ; Statement: r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor 
(assert (not (= var693 null-var3437)))
(define-const var2593 String (value/860944727 var693)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value> 
(assert true)
(define-const var2786 Bool (= var2593 "object")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("object") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var2786 1 0) 0))) ; Cond: $z0 != 0 
(define-const var615 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>] 
(assert true) ; Non Conditional
(define-const var1402 Bool (resultEqualsValue/860944727 var693)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue> 
 ; Statement: if $z3 != $z1 goto $r5 = null 
(assert (not (= var615 var1402))) ; Cond: $z3 != $z1 
(define-const var1908 var2163 null-var2163) ; Statement: $r5 = null 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {value/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], java.lang.String), resultEqualsValue/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], boolean)}
; {var3437=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor, var693=r0, var2593=$r1, var2786=$z0, var615=$z3, var1402=$z1, var2163=com.google.javascript.rhino.jstype.JSType, var1908=$r5}
; {com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor=var3437, r0=var693, $r1=var2593, $z0=var2786, $z3=var615, $z1=var1402, com.google.javascript.rhino.jstype.JSType=var2163, $r5=var1908}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor;	$r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("object");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>];	$z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>;	if $z3 != $z1 goto $r5 = null;	$r5 = null;	return $r5
;block_num 5