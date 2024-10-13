(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var139 0)
(declare-sort var58 0)
(declare-sort var2697 0)
(declare-sort var2417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateFeature/1625620487 (var139 var2697 var58) void)
(declare-fun validateNodeType/585623153 (var139 var2417 var58) void)
(declare-fun validateProperties/437061588 (var139 var58) void)
(declare-fun validateChildCount/1651139508 (var139 var58) void)
(declare-fun getLastChild/1278987161 (var58) var58)
(declare-fun validateFunctionExpression/802453079 (var139 var58) void)
(declare-fun getFirstChild/2090828207 (var58) var58)
(declare-fun getString/-897720134 (var58) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getSecondChild/883015415 (var58) var58)
(declare-fun hasOneChild/-1379338884 (var58) Bool)
(declare-const null-var139 var139)
(declare-const null-var58 var58)
(declare-const var2697-COMPUTED_PROPERTIES var2697)
(declare-const var2417-COMPUTED_PROP var2417)
(declare-const var3749 var139) ; Statement: r0 := @this: com.google.javascript.jscomp.AstValidator 
(assert (not (= var3749 null-var139)))
(declare-const var3056 var58) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3056 null-var58)))
(define-const var2229 var2697 var2697-COMPUTED_PROPERTIES) ; Statement: $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature COMPUTED_PROPERTIES> 
(assert true)
;(assert (validateFeature/1625620487 var3749 var2229 var3056)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1) 

(declare-const var3749!1 var139)
(declare-const var2229!1 var2697)
(declare-const var3056!1 var58)
(define-const var3293 var2417 var2417-COMPUTED_PROP) ; Statement: $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMPUTED_PROP> 
(assert true)
;(assert (validateNodeType/585623153 var3749!1 var3293 var3056!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1) 

(declare-const var3749!2 var139)
(declare-const var3293!1 var2417)
(declare-const var3056!2 var58)
(assert true)
;(assert (validateProperties/437061588 var3749!2 var3056!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1) 

(declare-const var3749!3 var139)
(declare-const var3056!3 var58)
(assert true)
;(assert (validateChildCount/1651139508 var3749!3 var3056!3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1) 

(declare-const var3749!4 var139)
(declare-const var3056!4 var58)
(assert true)
(define-const var3113 var58 (getLastChild/1278987161 var3056!4)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
;(assert (validateFunctionExpression/802453079 var3749!4 var3113)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4) 

(declare-const var3749!5 var139)
(declare-const var3113!1 var58)
(assert true)
(define-const var2510 var58 (getFirstChild/2090828207 var3113!1)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2728 String (getString/-897720134 var2510)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1255 Bool (isEmpty/-1285796103 var2728)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert (not (= (ite var1255 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2542 var58 (getSecondChild/883015415 var3113!1)) ; Statement: $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>() 
(assert true)
(define-const var1530 Bool (hasOneChild/-1379338884 var2542)) ; Statement: $z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasOneChild()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var1530 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validateFeature/1625620487=([com.google.javascript.jscomp.AstValidator, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, com.google.javascript.rhino.Node], void), validateNodeType/585623153=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Token, com.google.javascript.rhino.Node], void), validateProperties/437061588=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), validateChildCount/1651139508=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), validateFunctionExpression/802453079=([com.google.javascript.jscomp.AstValidator, com.google.javascript.rhino.Node], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getSecondChild/883015415=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), hasOneChild/-1379338884=([com.google.javascript.rhino.Node], boolean)}
; {var139=com.google.javascript.jscomp.AstValidator, var3749=r0, var58=com.google.javascript.rhino.Node, var3056=r1, var2697=com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature, var2229=$r2, var2417=com.google.javascript.rhino.Token, var3293=$r3, var3113=r4, var2510=$r5, var2728=$r6, var1255=$z0, var2542=$r7, var1530=$z1}
; {com.google.javascript.jscomp.AstValidator=var139, r0=var3749, com.google.javascript.rhino.Node=var58, r1=var3056, com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature=var2697, $r2=var2229, com.google.javascript.rhino.Token=var2417, $r3=var3293, r4=var3113, $r5=var2510, $r6=var2728, $z0=var1255, $r7=var2542, $z1=var1530}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AstValidator;	r1 := @parameter0: com.google.javascript.rhino.Node;	$r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature: com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature COMPUTED_PROPERTIES>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFeature(com.google.javascript.jscomp.parsing.parser.FeatureSet$Feature,com.google.javascript.rhino.Node)>($r2, r1);	$r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMPUTED_PROP>;	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateNodeType(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r3, r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateProperties(com.google.javascript.rhino.Node)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateChildCount(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	virtualinvoke r0.<com.google.javascript.jscomp.AstValidator: void validateFunctionExpression(com.google.javascript.rhino.Node)>(r4);	$r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$r7 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getSecondChild()>();	$z1 = virtualinvoke $r7.<com.google.javascript.rhino.Node: boolean hasOneChild()>();	if $z1 != 0 goto return;	return
;block_num 3