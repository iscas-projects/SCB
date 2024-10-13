(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var146 0)
(declare-sort var367 0)
(declare-sort var3311 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateFeature/1625620487 (var146 var3311 var367) void)
(declare-fun validateNodeType/585623153 (var146 var3503 var367) void)
(declare-fun validateProperties/437061588 (var146 var367) void)
(declare-fun validateChildCount/1651139508 (var146 var367) void)
(declare-fun validateObjectLiteralKeyName/1228798573 (var146 var367) void)
(declare-fun getFirstChild/2090828207 (var367) var367)
(declare-fun validateFunctionExpression/802453079 (var146 var367) void)
(declare-fun getString/-897720134 (var367) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getSecondChild/883015415 (var367) var367)
(declare-fun hasOneChild/-1379338884 (var367) Bool)
(declare-const null-var146 var146)
(declare-const null-var367 var367)
(declare-const var3311-SETTER var3311)
(declare-const var3503-SETTER_DEF var3503)
(declare-const var658 var146) ; Statement: r0 := @this: com.google.javascript.jscomp.AstValidator 
(assert (not (= var658 null-var146)))
(declare-const var3405 var367) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3405 null-var367)))
(define-const var305 var3311 var3311-SETTER) ; Statement: $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature SETTER> 
(assert true)
;(assert (validateFeature/1625620487 var658 var305 var3405)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1) 

(declare-const var658!1 var146)
(declare-const var305!1 var3311)
(declare-const var3405!1 var367)
(define-const var3017 var3503 var3503-SETTER_DEF) ; Statement: $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SETTER_DEF> 
(assert true)
;(assert (validateNodeType/585623153 var658!1 var3017 var3405!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1) 

(declare-const var658!2 var146)
(declare-const var3017!1 var3503)
(declare-const var3405!2 var367)
(assert true)
;(assert (validateProperties/437061588 var658!2 var3405!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1) 

(declare-const var658!3 var146)
(declare-const var3405!3 var367)
(assert true)
;(assert (validateChildCount/1651139508 var658!3 var3405!3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1) 

(declare-const var658!4 var146)
(declare-const var3405!4 var367)
(assert true)
;(assert (validateObjectLiteralKeyName/1228798573 var658!4 var3405!4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateObjectLiteralKeyName(com.google.javascript.rhino.Node)>(r1) 

(declare-const var658!5 var146)
(declare-const var3405!5 var367)
(assert true)
(define-const var560 var367 (getFirstChild/2090828207 var3405!5)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
;(assert (validateFunctionExpression/802453079 var658!5 var560)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4) 

(declare-const var658!6 var146)
(declare-const var560!1 var367)
(assert true)
(define-const var1758 var367 (getFirstChild/2090828207 var560!1)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var62 String (getString/-897720134 var1758)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var767 Bool (isEmpty/-1285796103 var62)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert (not (= (ite var767 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1038 var367 (getSecondChild/883015415 var560!1)) ; Statement: $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert true)
(define-const var2860 Bool (hasOneChild/-1379338884 var1038)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasOneChild()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2860 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validateFeature/1625620487=([com.google.javascript.jscomp.AstValidator, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, com.google.javascript.rhino.Node], void), validateNodeType/585623153=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Token, com.google.javascript.rhino.Node], void), validateProperties/437061588=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateChildCount/1651139508=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateObjectLiteralKeyName/1228798573=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), validateFunctionExpression/802453079=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getSecondChild/883015415=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), hasOneChild/-1379338884=([com.google.javascript.rhino.Node], boolean)}
; {var146=com.google.javascript.jscomp.AstValidator, var658=r0, var367=com.google.javascript.rhino.Node, var3405=r1, var3311=com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, var305=$r2, var3503=com.google.javascript.rhino.Token, var3017=$r3, var560=r4, var1758=$r5, var62=$r6, var767=$z0, var1038=$r7, var2860=$z1}
; {com.google.javascript.jscomp.AstValidator=var146, r0=var658, com.google.javascript.rhino.Node=var367, r1=var3405, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature=var3311, $r2=var305, com.google.javascript.rhino.Token=var3503, $r3=var3017, r4=var560, $r5=var1758, $r6=var62, $z0=var767, $r7=var1038, $z1=var2860}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AstValidator;	r1 := @parameter0: com.google.javascript.rhino.Node;	$r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature SETTER>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1);	$r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SETTER_DEF>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateObjectLiteralKeyName(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4);	$r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasOneChild()>();	if $z1 != 0 goto return;	return
;block_num 3