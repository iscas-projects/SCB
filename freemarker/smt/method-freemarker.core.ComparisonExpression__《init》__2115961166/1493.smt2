(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var2521 0)
(declare-sort var1546 0)
(declare-sort var3699 0)
(declare-sort var487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-847489150 (var3699) void)
(declare-fun cast-from-var184-to-var3699 (var184) var3699)
(declare-fun left/1715618888 (var184) var2521)
(declare-fun right/1715618888 (var184) var2521)
(declare-fun intern/-1326102057 (String) String)
(declare-fun opString/1715618888 (var184) String)
(declare-fun operation/1715618888 (var184) Int)
(declare-fun var487_peelParentheses/1015032488 (var2521) var2521)
(declare-const null-var184 var184)
(declare-const null-var2521 var2521)
(declare-const null-String String)
(declare-const var2554 var184) ; Statement: r0 := @this: freemarker.core.ComparisonExpression 
(assert (not (= var2554 null-var184)))
(declare-const var551 var2521) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var551 null-var2521)))
(declare-const var669 var2521) ; Statement: r2 := @parameter1: freemarker.core.Expression 
(assert (not (= var669 null-var2521)))
(declare-const var515 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var515 null-String)))
(assert true)
;(assert (<init>/-847489150 (cast-from-var184-to-var3699 var2554))) ; Statement: specialinvoke r0.<freemarker.core.BooleanExpression: void <init>()>() 

(declare-const var2554!1 var184)
(declare-const var2554!2 var184)
(assert (not (= var2554!2 null-var184)))
(assert (= (left/1715618888 var2554!2) var551)) ; Statement: r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression left> = r1 
(declare-const var2554!3 var184)
(assert (not (= var2554!3 null-var184)))
(assert (= (right/1715618888 var2554!3) var669)) ; Statement: r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression right> = r2 
(assert true)
(define-const var3841 String (intern/-1326102057 var515)) ; Statement: r13 = virtualinvoke r12.<java.lang.String: java.lang.String intern()>() 
(declare-const var2554!4 var184)
(assert (not (= var2554!4 null-var184)))
(assert (= (opString/1715618888 var2554!4) var3841)) ; Statement: r0.<freemarker.core.ComparisonExpression: java.lang.String opString> = r13 
 ; Statement: if r13 == "==" goto r0.<freemarker.core.ComparisonExpression: int operation> = 1 
(assert (= var3841 "==")) ; Cond: r13 == "==" 
(declare-const var2554!5 var184)
(assert (not (= var2554!5 null-var184)))
(assert (= (operation/1715618888 var2554!5) 1)) ; Statement: r0.<freemarker.core.ComparisonExpression: int operation> = 1 
 ; Statement: goto [?= $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1)] 
(assert true) ; Non Conditional
(define-const var990 var2521 (var487_peelParentheses/1015032488 var551)) ; Statement: $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1) 
(define-const var2522 var2521 (var487_peelParentheses/1015032488 var669)) ; Statement: $r15 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r2) 
(define-const var2065 Bool false) ; Statement: $z3 = $r14 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI 
 ; Statement: if $z3 == 0 goto $z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI 
(assert (= (ite var2065 1 0) 0)) ; Cond: $z3 == 0 
(define-const var132 Bool false) ; Statement: $z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var132 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-847489150=([freemarker.core.BooleanExpression], void), cast-from-var184-to-var3699=([freemarker.core.ComparisonExpression], freemarker.core.BooleanExpression), left/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), right/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), intern/-1326102057=([java.lang.String], java.lang.String), opString/1715618888=([freemarker.core.ComparisonExpression], java.lang.String), operation/1715618888=([freemarker.core.ComparisonExpression], int), var487_peelParentheses/1015032488=([freemarker.core.Expression], freemarker.core.Expression)}
; {var184=freemarker.core.ComparisonExpression, var2554=r0, var2521=freemarker.core.Expression, var551=r1, var669=r2, var515=r12, var1546=null_type, var3699=freemarker.core.BooleanExpression, var3841=r13, var487=freemarker.core.MiscUtil, var990=$r14, var2522=$r15, var2065=$z3, var132=$z0}
; {freemarker.core.ComparisonExpression=var184, r0=var2554, freemarker.core.Expression=var2521, r1=var551, r2=var669, r12=var515, null_type=var1546, freemarker.core.BooleanExpression=var3699, r13=var3841, freemarker.core.MiscUtil=var487, $r14=var990, $r15=var2522, $z3=var2065, $z0=var132}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: freemarker.core.ComparisonExpression;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.core.Expression;	r12 := @parameter2: java.lang.String;	specialinvoke r0.<freemarker.core.BooleanExpression: void <init>()>();	r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression left> = r1;	r0.<freemarker.core.ComparisonExpression: freemarker.core.Expression right> = r2;	r13 = virtualinvoke r12.<java.lang.String: java.lang.String intern()>();	r0.<freemarker.core.ComparisonExpression: java.lang.String opString> = r13;	if r13 == "==" goto r0.<freemarker.core.ComparisonExpression: int operation> = 1;	r0.<freemarker.core.ComparisonExpression: int operation> = 1;	goto [?= $r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1)];	$r14 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r1);	$r15 = staticinvoke <freemarker.core.MiscUtil: freemarker.core.Expression peelParentheses(freemarker.core.Expression)>(r2);	$z3 = $r14 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI;	if $z3 == 0 goto $z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI;	$z0 = $r15 instanceof freemarker.core.BuiltInsForMultipleTypes$sizeBI;	if $z0 == 0 goto return;	return
;block_num 5