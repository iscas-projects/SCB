(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort var3473 0)
(declare-sort var1097 0)
(declare-sort var1130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateFeature/1625620487 (var2871 var1097 var3473) void)
(declare-fun validateNodeType/585623153 (var2871 var1130 var3473) void)
(declare-fun validateProperties/437061588 (var2871 var3473) void)
(declare-fun validateChildCount/1651139508 (var2871 var3473) void)
(declare-fun validateObjectLiteralKeyName/1228798573 (var2871 var3473) void)
(declare-fun getFirstChild/2090828207 (var3473) var3473)
(declare-fun validateFunctionExpression/802453079 (var2871 var3473) void)
(declare-fun getString/-897720134 (var3473) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getSecondChild/883015415 (var3473) var3473)
(declare-fun hasChildren/685666611 (var3473) Bool)
(declare-const null-var2871 var2871)
(declare-const null-var3473 var3473)
(declare-const var1097-GETTER var1097)
(declare-const var1130-GETTER_DEF var1130)
(declare-const var2579 var2871) ; Statement: r0 := @this: com.google.javascript.jscomp.AstValidator 
(assert (not (= var2579 null-var2871)))
(declare-const var3511 var3473) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3511 null-var3473)))
(define-const var1359 var1097 var1097-GETTER) ; Statement: $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature GETTER> 
(assert true)
;(assert (validateFeature/1625620487 var2579 var1359 var3511)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1) 

(declare-const var2579!1 var2871)
(declare-const var1359!1 var1097)
(declare-const var3511!1 var3473)
(define-const var3160 var1130 var1130-GETTER_DEF) ; Statement: $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GETTER_DEF> 
(assert true)
;(assert (validateNodeType/585623153 var2579!1 var3160 var3511!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1) 

(declare-const var2579!2 var2871)
(declare-const var3160!1 var1130)
(declare-const var3511!2 var3473)
(assert true)
;(assert (validateProperties/437061588 var2579!2 var3511!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1) 

(declare-const var2579!3 var2871)
(declare-const var3511!3 var3473)
(assert true)
;(assert (validateChildCount/1651139508 var2579!3 var3511!3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1) 

(declare-const var2579!4 var2871)
(declare-const var3511!4 var3473)
(assert true)
;(assert (validateObjectLiteralKeyName/1228798573 var2579!4 var3511!4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateObjectLiteralKeyName(com.google.javascript.rhino.Node)>(r1) 

(declare-const var2579!5 var2871)
(declare-const var3511!5 var3473)
(assert true)
(define-const var794 var3473 (getFirstChild/2090828207 var3511!5)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
;(assert (validateFunctionExpression/802453079 var2579!5 var794)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4) 

(declare-const var2579!6 var2871)
(declare-const var794!1 var3473)
(assert true)
(define-const var719 var3473 (getFirstChild/2090828207 var794!1)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2223 String (getString/-897720134 var719)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var269 Bool (isEmpty/-1285796103 var2223)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert (not (= (ite var269 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3939 var3473 (getSecondChild/883015415 var794!1)) ; Statement: $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert true)
(define-const var92 Bool (hasChildren/685666611 var3939)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasChildren()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var92 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validateFeature/1625620487=([com.google.javascript.jscomp.AstValidator, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, com.google.javascript.rhino.Node], void), validateNodeType/585623153=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Token, com.google.javascript.rhino.Node], void), validateProperties/437061588=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateChildCount/1651139508=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateObjectLiteralKeyName/1228798573=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), validateFunctionExpression/802453079=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getSecondChild/883015415=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), hasChildren/685666611=([com.google.javascript.rhino.Node], boolean)}
; {var2871=com.google.javascript.jscomp.AstValidator, var2579=r0, var3473=com.google.javascript.rhino.Node, var3511=r1, var1097=com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, var1359=$r2, var1130=com.google.javascript.rhino.Token, var3160=$r3, var794=r4, var719=$r5, var2223=$r6, var269=$z0, var3939=$r7, var92=$z1}
; {com.google.javascript.jscomp.AstValidator=var2871, r0=var2579, com.google.javascript.rhino.Node=var3473, r1=var3511, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature=var1097, $r2=var1359, com.google.javascript.rhino.Token=var1130, $r3=var3160, r4=var794, $r5=var719, $r6=var2223, $z0=var269, $r7=var3939, $z1=var92}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AstValidator;	r1 := @parameter0: com.google.javascript.rhino.Node;	$r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature GETTER>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1);	$r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GETTER_DEF>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateObjectLiteralKeyName(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4);	$r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasChildren()>();	if $z1 == 0 goto return;	return
;block_num 3