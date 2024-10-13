(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3904 0)
(declare-sort var299 0)
(declare-sort var3561 0)
(declare-sort var3421 0)
(declare-sort var2223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/860944727 (var3904) String)
(declare-fun this$0/860944727 (var3904) var3561)
(declare-fun getNativeType/1172335613 (var3561 var3421) var2223)
(declare-fun resultEqualsValue/860944727 (var3904) Bool)
(declare-fun getGreatestSubtype/-462244867 (var2223 var2223) var2223)
(declare-fun cast-from-var299-to-var2223 (var299) var2223)
(declare-const null-var3904 var3904)
(declare-const null-var299 var299)
(declare-const var3421-FUNCTION_TYPE var3421)
(declare-const var3652 var3904) ; Statement: r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor 
(assert (not (= var3652 null-var3904)))
(declare-const var774 var299) ; Statement: r2 := @parameter0: com.google.javascript.rhino.jstype.ObjectType 
(assert (not (= var774 null-var299)))
(define-const var3435 String (value/860944727 var3652)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value> 
(assert true)
(define-const var1498 Bool (= var3435 "function")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("function") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean matchesExpectation(java.lang.String)>("object") 
(assert (not (= (ite var1498 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1476 var3561 (this$0/860944727 var3652)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter this$0> 
(define-const var39 var3421 var3421-FUNCTION_TYPE) ; Statement: $r3 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative FUNCTION_TYPE> 
(assert true)
(define-const var93 var2223 (getNativeType/1172335613 var1476 var39)) ; Statement: r5 = virtualinvoke $r4.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r3) 
(define-const var1187 Bool (resultEqualsValue/860944727 var3652)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue> 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.rhino.jstype.ObjectType: boolean isSubtypeOf(com.google.javascript.rhino.jstype.JSType)>(r5) 
(assert (not (= (ite var1187 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var654 var2223 (getGreatestSubtype/-462244867 var93 (cast-from-var299-to-var2223 var774))) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.rhino.jstype.JSType: com.google.javascript.rhino.jstype.JSType getGreatestSubtype(com.google.javascript.rhino.jstype.JSType)>(r2) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {value/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], java.lang.String), this$0/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter), getNativeType/1172335613=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType), resultEqualsValue/860944727=([com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor], boolean), getGreatestSubtype/-462244867=([com.google.javascript.rhino.jstype.JSType, com.google.javascript.rhino.jstype.JSType], com.google.javascript.rhino.jstype.JSType), cast-from-var299-to-var2223=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType)}
; {var3904=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor, var3652=r0, var299=com.google.javascript.rhino.jstype.ObjectType, var774=r2, var3435=$r1, var1498=$z0, var3561=com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter, var1476=$r4, var3421=com.google.javascript.rhino.jstype.JSTypeNative, var39=$r3, var2223=com.google.javascript.rhino.jstype.JSType, var93=r5, var1187=$z2, var654=$r6}
; {com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor=var3904, r0=var3652, com.google.javascript.rhino.jstype.ObjectType=var299, r2=var774, $r1=var3435, $z0=var1498, com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter=var3561, $r4=var1476, com.google.javascript.rhino.jstype.JSTypeNative=var3421, $r3=var39, com.google.javascript.rhino.jstype.JSType=var2223, r5=var93, $z2=var1187, $r6=var654}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor;	r2 := @parameter0: com.google.javascript.rhino.jstype.ObjectType;	$r1 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: java.lang.String value>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("function");	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean matchesExpectation(java.lang.String)>("object");	$r4 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter this$0>;	$r3 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative FUNCTION_TYPE>;	r5 = virtualinvoke $r4.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r3);	$z2 = r0.<com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter$RestrictByOneTypeOfResultVisitor: boolean resultEqualsValue>;	if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.rhino.jstype.ObjectType: boolean isSubtypeOf(com.google.javascript.rhino.jstype.JSType)>(r5);	$r6 = virtualinvoke r5.<com.google.javascript.rhino.jstype.JSType: com.google.javascript.rhino.jstype.JSType getGreatestSubtype(com.google.javascript.rhino.jstype.JSType)>(r2);	return $r6
;block_num 3