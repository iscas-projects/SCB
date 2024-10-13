(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var542 0)
(declare-sort var1497 0)
(declare-sort var376 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateFeature/1625620487 (var542 var376 var1497) void)
(declare-fun validateNodeType/585623153 (var542 var3406 var1497) void)
(declare-fun validateProperties/437061588 (var542 var1497) void)
(declare-fun validateChildCount/1651139508 (var542 var1497) void)
(declare-fun getLastChild/1278987161 (var1497) var1497)
(declare-fun validateFunctionExpression/802453079 (var542 var1497) void)
(declare-fun getFirstChild/2090828207 (var1497) var1497)
(declare-fun getString/-897720134 (var1497) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getSecondChild/883015415 (var1497) var1497)
(declare-fun hasChildren/685666611 (var1497) Bool)
(declare-const null-var542 var542)
(declare-const null-var1497 var1497)
(declare-const var376-COMPUTED_PROPERTIES var376)
(declare-const var3406-COMPUTED_PROP var3406)
(declare-const var1875 var542) ; Statement: r0 := @this: com.google.javascript.jscomp.AstValidator 
(assert (not (= var1875 null-var542)))
(declare-const var1021 var1497) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1021 null-var1497)))
(define-const var2193 var376 var376-COMPUTED_PROPERTIES) ; Statement: $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature COMPUTED_PROPERTIES> 
(assert true)
;(assert (validateFeature/1625620487 var1875 var2193 var1021)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1) 

(declare-const var1875!1 var542)
(declare-const var2193!1 var376)
(declare-const var1021!1 var1497)
(define-const var3482 var3406 var3406-COMPUTED_PROP) ; Statement: $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMPUTED_PROP> 
(assert true)
;(assert (validateNodeType/585623153 var1875!1 var3482 var1021!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1) 

(declare-const var1875!2 var542)
(declare-const var3482!1 var3406)
(declare-const var1021!2 var1497)
(assert true)
;(assert (validateProperties/437061588 var1875!2 var1021!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1) 

(declare-const var1875!3 var542)
(declare-const var1021!3 var1497)
(assert true)
;(assert (validateChildCount/1651139508 var1875!3 var1021!3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1) 

(declare-const var1875!4 var542)
(declare-const var1021!4 var1497)
(assert true)
(define-const var3448 var1497 (getLastChild/1278987161 var1021!4)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
;(assert (validateFunctionExpression/802453079 var1875!4 var3448)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4) 

(declare-const var1875!5 var542)
(declare-const var3448!1 var1497)
(assert true)
(define-const var2551 var1497 (getFirstChild/2090828207 var3448!1)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var947 String (getString/-897720134 var2551)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var113 Bool (isEmpty/-1285796103 var947)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert (not (= (ite var113 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var394 var1497 (getSecondChild/883015415 var3448!1)) ; Statement: $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert true)
(define-const var2219 Bool (hasChildren/685666611 var394)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasChildren()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2219 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validateFeature/1625620487=([com.google.javascript.jscomp.AstValidator, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, com.google.javascript.rhino.Node], void), validateNodeType/585623153=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Token, com.google.javascript.rhino.Node], void), validateProperties/437061588=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateChildCount/1651139508=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), validateFunctionExpression/802453079=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getSecondChild/883015415=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), hasChildren/685666611=([com.google.javascript.rhino.Node], boolean)}
; {var542=com.google.javascript.jscomp.AstValidator, var1875=r0, var1497=com.google.javascript.rhino.Node, var1021=r1, var376=com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, var2193=$r2, var3406=com.google.javascript.rhino.Token, var3482=$r3, var3448=r4, var2551=$r5, var947=$r6, var113=$z0, var394=$r7, var2219=$z1}
; {com.google.javascript.jscomp.AstValidator=var542, r0=var1875, com.google.javascript.rhino.Node=var1497, r1=var1021, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature=var376, $r2=var2193, com.google.javascript.rhino.Token=var3406, $r3=var3482, r4=var3448, $r5=var2551, $r6=var947, $z0=var113, $r7=var394, $z1=var2219}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AstValidator;	r1 := @parameter0: com.google.javascript.rhino.Node;	$r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature COMPUTED_PROPERTIES>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1);	$r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMPUTED_PROP>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4);	$r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasChildren()>();	if $z1 == 0 goto return;	return
;block_num 3