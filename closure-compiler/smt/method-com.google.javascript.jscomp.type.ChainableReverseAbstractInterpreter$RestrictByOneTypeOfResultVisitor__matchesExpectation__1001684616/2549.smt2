(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1101 0)
(declare-sort var1994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/860944727 (var1101) String)
(declare-fun resultEqualsValue/860944727 (var1101) Bool)
(declare-const null-var1101 var1101)
(declare-const null-String String)
(declare-const var2312 var1101) ; Statement: r1 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor 
(assert (not (= var2312 null-var1101)))
(declare-const var3045 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3045 null-String)))
(define-const var1140 String (value/860944727 var2312)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value> 
(assert true)
(define-const var2067 Bool (= var3045 var1140)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(define-const var921 Bool (resultEqualsValue/860944727 var2312)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue> 
 ; Statement: if $z1 != $z0 goto $z2 = 0 
(assert (not (not (= var2067 var921)))) ; Negate: Cond: $z1 != $z0  
(define-const var1190 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], java.lang.String), resultEqualsValue/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], boolean)}
; {var1101=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor, var2312=r1, var3045=r0, var1994=null_type, var1140=$r2, var2067=$z1, var921=$z0, var1190=$z2}
; {com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor=var1101, r1=var2312, r0=var3045, null_type=var1994, $r2=var1140, $z1=var2067, $z0=var921, $z2=var1190}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor;	r0 := @parameter0: java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value>;	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$z0 = r1.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>;	if $z1 != $z0 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3