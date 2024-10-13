(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var312 0)
(declare-sort var445 0)
(declare-sort var3253 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/860944727 (var312) String)
(declare-fun resultEqualsValue/860944727 (var312) Bool)
(declare-fun this$0/860944727 (var312) var445)
(declare-fun getNativeType/1172335613 (var445 var3253) var869)
(declare-const null-var312 var312)
(declare-const var3253-NO_OBJECT_TYPE var3253)
(declare-const var207 var312) ; Statement: r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor 
(assert (not (= var207 null-var312)))
(define-const var1255 String (value/860944727 var207)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value> 
(assert true)
(define-const var3884 Bool (= var1255 "object")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("object") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3884 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1161 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>] 
(assert true) ; Non Conditional
(define-const var3909 Bool (resultEqualsValue/860944727 var207)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue> 
 ; Statement: if $z3 != $z1 goto $r5 = null 
(assert (not (not (= var1161 var3909)))) ; Negate: Cond: $z3 != $z1  
(define-const var412 var445 (this$0/860944727 var207)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter this$0> 
(define-const var3473 var3253 var3253-NO_OBJECT_TYPE) ; Statement: $r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NO_OBJECT_TYPE> 
(assert true)
(define-const var3478 var869 (getNativeType/1172335613 var412 var3473)) ; Statement: $r5 = virtualinvoke $r3.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r2) 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {value/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], java.lang.String), resultEqualsValue/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], boolean), this$0/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter), getNativeType/1172335613=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType)}
; {var312=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor, var207=r0, var1255=$r1, var3884=$z0, var1161=$z3, var3909=$z1, var445=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter, var412=$r3, var3253=com.google.javascript.rhino.jstype.JSTypeNative, var3473=$r2, var869=com.google.javascript.rhino.jstype.JSType, var3478=$r5}
; {com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor=var312, r0=var207, $r1=var1255, $z0=var3884, $z3=var1161, $z1=var3909, com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter=var445, $r3=var412, com.google.javascript.rhino.jstype.JSTypeNative=var3253, $r2=var3473, com.google.javascript.rhino.jstype.JSType=var869, $r5=var3478}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor;	$r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("object");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= $z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>];	$z1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>;	if $z3 != $z1 goto $r5 = null;	$r3 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter this$0>;	$r2 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NO_OBJECT_TYPE>;	$r5 = virtualinvoke $r3.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r2);	goto [?= return $r5];	return $r5
;block_num 5