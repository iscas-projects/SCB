(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var2023 0)
(declare-sort var3939 0)
(declare-sort var1123 0)
(declare-sort var1498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-847489150 (var1123) void)
(declare-fun cast-from-var948-to-var1123 (var948) var1123)
(declare-fun left/1715618888 (var948) var2023)
(declare-fun right/1715618888 (var948) var2023)
(declare-fun intern/-1326102057 (String) String)
(declare-fun opString/1715618888 (var948) String)
(declare-fun operation/1715618888 (var948) Int)
(declare-fun var1498_peelParentheses/1015032488 (var2023) var2023)
(declare-const null-var948 var948)
(declare-const null-var2023 var2023)
(declare-const null-String String)
(declare-const var3736 var948) ; Statement: r0 := @this: freemarker.core.ComparisonExpression 
(assert (not (= var3736 null-var948)))
(declare-const var3083 var2023) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var3083 null-var2023)))
(declare-const var1970 var2023) ; Statement: r2 := @parameter1: freemarker.core.Expression 
(assert (not (= var1970 null-var2023)))
(declare-const var505 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var505 null-String)))
(assert true)
;(assert (<init>/-847489150 (cast-from-var948-to-var1123 var3736))) ; Statement: specialinvoke r0.<freemarker.core.BooleanExpression: void <init>()>() 

(declare-const var3736!1 var948)
(declare-const var3736!2 var948)
(assert (not (= var3736!2 null-var948)))
(assert (= (left/1715618888 var3736!2) var3083)) ; Statement: r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression left> = r1 
(declare-const var3736!3 var948)
(assert (not (= var3736!3 null-var948)))
(assert (= (right/1715618888 var3736!3) var1970)) ; Statement: r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression right> = r2 
(assert true)
(define-const var3218 String (intern/-1326102057 var505)) ; Statement: r13 = virtualinvoke r12.<java.lang.String: java.lang.String intern()>() 
(declare-const var3736!4 var948)
(assert (not (= var3736!4 null-var948)))
(assert (= (opString/1715618888 var3736!4) var3218)) ; Statement: r0.<freemarker.core.ComparisonExpression: java.lang.String opString> = r13 
 ; Statement: if r13 == "==" goto r0.<freemarker.core.ComparisonExpression: int operation> = 1 
(assert (= var3218 "==")) ; Cond: r13 == "==" 
(declare-const var3736!5 var948)
(assert (not (= var3736!5 null-var948)))
(assert (= (operation/1715618888 var3736!5) 1)) ; Statement: r0.<freemarker.core.ComparisonExpression: int operation> = 1 
 ; Statement: goto [?= $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1)] 
(assert true) ; Non Conditional
(define-const var2568 var2023 (var1498_peelParentheses/1015032488 var3083)) ; Statement: $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1) 
(define-const var3188 var2023 (var1498_peelParentheses/1015032488 var1970)) ; Statement: $r15 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r2) 
(define-const var1590 Bool false) ; Statement: $z3 = $r14 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI 
 ; Statement: if $z3 == 0 goto $z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI 
(assert (not (= (ite var1590 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3435 Bool false) ; Statement: $z2 = $r15 instanceof freemarker.core.NumberLiteral 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var3435 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-847489150=([freemarker.core.BooleanExpression], void), cast-from-var948-to-var1123=([freemarker.core.ComparisonExpression], freemarker.core.BooleanExpression), left/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), right/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), intern/-1326102057=([java.lang.String], java.lang.String), opString/1715618888=([freemarker.core.ComparisonExpression], java.lang.String), operation/1715618888=([freemarker.core.ComparisonExpression], int), var1498_peelParentheses/1015032488=([freemarker.core.Expression], freemarker.core.Expression)}
; {var948=freemarker.core.ComparisonExpression, var3736=r0, var2023=freemarker.core.Expression, var3083=r1, var1970=r2, var505=r12, var3939=null_type, var1123=freemarker.core.BooleanExpression, var3218=r13, var1498=freemarker.core.MiscUtil, var2568=$r14, var3188=$r15, var1590=$z3, var3435=$z2}
; {freemarker.core.ComparisonExpression=var948, r0=var3736, freemarker.core.Expression=var2023, r1=var3083, r2=var1970, r12=var505, null_type=var3939, freemarker.core.BooleanExpression=var1123, r13=var3218, freemarker.core.MiscUtil=var1498, $r14=var2568, $r15=var3188, $z3=var1590, $z2=var3435}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: freemarker.core.ComparisonExpression;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.core.Expression;	r12 := @parameter2: java.lang.String;	specialinvoke r0.<freemarker.core.BooleanExpression: void <init>()>();	r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression left> = r1;	r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression right> = r2;	r13 = virtualinvoke r12.<java.lang.String: java.lang.String intern()>();	r0.<freemarker.core.ComparisonExpression: java.lang.String opString> = r13;	if r13 == "==" goto r0.<freemarker.core.ComparisonExpression: int operation> = 1;	r0.<freemarker.core.ComparisonExpression: int operation> = 1;	goto [?= $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1)];	$r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1);	$r15 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r2);	$z3 = $r14 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI;	if $z3 == 0 goto $z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI;	$z2 = $r15 instanceof freemarker.core.NumberLiteral;	if $z2 == 0 goto return;	return
;block_num 5