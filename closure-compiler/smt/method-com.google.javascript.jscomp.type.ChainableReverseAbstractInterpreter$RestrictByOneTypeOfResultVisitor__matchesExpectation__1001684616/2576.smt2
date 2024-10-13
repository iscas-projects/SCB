(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/860944727 (var2396) String)
(declare-fun resultEqualsValue/860944727 (var2396) Bool)
(declare-const null-var2396 var2396)
(declare-const null-String String)
(declare-const var3978 var2396) ; Statement: r1 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor 
(assert (not (= var3978 null-var2396)))
(declare-const var1059 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1059 null-String)))
(define-const var2421 String (value/860944727 var3978)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value> 
(assert true)
(define-const var3081 Bool (= var1059 var2421)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(define-const var2998 Bool (resultEqualsValue/860944727 var3978)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue> 
 ; Statement: if $z1 != $z0 goto $z2 = 0 
(assert (not (= var3081 var2998))) ; Cond: $z1 != $z0 
(define-const var2851 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], java.lang.String), resultEqualsValue/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], boolean)}
; {var2396=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor, var3978=r1, var1059=r0, var1049=null_type, var2421=$r2, var3081=$z1, var2998=$z0, var2851=$z2}
; {com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor=var2396, r1=var3978, r0=var1059, null_type=var1049, $r2=var2421, $z1=var3081, $z0=var2998, $z2=var2851}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor;	r0 := @parameter0: java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$z0 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>;	if $z1 != $z0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3