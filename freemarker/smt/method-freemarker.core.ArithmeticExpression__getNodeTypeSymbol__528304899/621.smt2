(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/1830812585 (var3196) Int)
(declare-fun var3196_getOperatorSymbol/1950100367 (Int) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var3196 var3196)
(declare-const var2602 var3196) ; Statement: r0 := @this: freemarker.core.ArithmeticExpression 
(assert (not (= var2602 null-var3196)))
(define-const var1715 Int (operator/1830812585 var2602)) ; Statement: $i0 = r0.<freemarker.core.ArithmeticExpression: int operator> 
(define-const var2195 Int (var3196_getOperatorSymbol/1950100367 var1715)) ; Statement: $c1 = staticinvoke <freemarker.core.ArithmeticExpression: char getOperatorSymbol(int)>($i0) 
(define-const var230 String (String_valueOf/-371898945 var2195)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {operator/1830812585=([freemarker.core.ArithmeticExpression], int), var3196_getOperatorSymbol/1950100367=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var3196=freemarker.core.ArithmeticExpression, var2602=r0, var1715=$i0, var2195=$c1, var230=$r1}
; {freemarker.core.ArithmeticExpression=var3196, r0=var2602, $i0=var1715, $c1=var2195, $r1=var230}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: freemarker.core.ArithmeticExpression;	$i0 = r0.<freemarker.core.ArithmeticExpression: int operator>;	$c1 = staticinvoke <freemarker.core.ArithmeticExpression: char getOperatorSymbol(int)>($i0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	return $r1
;block_num 1