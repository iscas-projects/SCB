(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1377 0)
(declare-sort var326 0)
(declare-sort var3694 0)
(declare-sort var3581 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var3694) var326)
(declare-fun cast-from-var1377-to-var3694 (var1377) var3694)
(declare-fun getTest/-811196138 (var1377) var3581)
(declare-fun cast-from-var3581-to-var3694 (var3581) var3694)
(declare-fun needsParens/294712685 (var326 var326 Bool) Bool)
(declare-fun getTrueExpression/1547375633 (var1377) var2619)
(declare-fun cast-from-var2619-to-var3694 (var2619) var3694)
(declare-fun getFalseExpression/705875816 (var1377) var2619)
(declare-fun toString/740977591 (var3694 String Bool) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-950452462 (var2619 String Bool) void)
(declare-const null-var1377 var1377)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1853 var1377) ; Statement: r0 := @this: jdk.nashorn.internal.ir.TernaryNode 
(assert (not (= var1853 null-var1377)))
(declare-const var1258 String) ; Statement: r8 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1258 null-String)))
(declare-const var1243 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var1243 null-Bool)))
(assert true)
(define-const var3846 var326 (tokenType/-595905731 (cast-from-var1377-to-var3694 var1853))) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var1062 var3581 (getTest/-811196138 var1853)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>() 
(assert true)
(define-const var16 var326 (tokenType/-595905731 (cast-from-var3581-to-var3694 var1062))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var1781 Bool (needsParens/294712685 var3846 var16 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1) 
(assert true)
(define-const var696 var2619 (getTrueExpression/1547375633 var1853)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>() 
(assert true)
(define-const var568 var326 (tokenType/-595905731 (cast-from-var2619-to-var3694 var696))) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.JoinPredecessorExpression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var3300 Bool (needsParens/294712685 var3846 var568 (ite (= 1 0) true false))) ; Statement: z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0) 
(assert true)
(define-const var3504 var2619 (getFalseExpression/705875816 var1853)) ; Statement: $r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>() 
(assert true)
(define-const var1537 var326 (tokenType/-595905731 (cast-from-var2619-to-var3694 var3504))) ; Statement: $r7 = virtualinvoke $r6.<jdk.nashorn.internal.ir.JoinPredecessorExpression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var3693 Bool (needsParens/294712685 var3846 var1537 (ite (= 1 0) true false))) ; Statement: z2 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r7, 0) 
 ; Statement: if z0 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>() 
(assert (= (ite var1781 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2613 var3581 (getTest/-811196138 var1853)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var3581-to-var3694 var2613) var1258 var1243)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r8, z3) 

(declare-const var2613!1 var3581)
(declare-const var1258!1 String)
(declare-const var1243!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ? ") 
(assert (= (ite var1781 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var1258!1 " ? ")) ; Statement: virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ? ") 
(declare-const var1258!2 String)
(assert (= var1258!2 (str.++ var1258!1 " ? ")))
 ; Statement: if z1 == 0 goto $r10 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>() 
(assert (= (ite var3300 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1827 var2619 (getTrueExpression/1547375633 var1853)) ; Statement: $r10 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>() 
(assert true)
;(assert (toString/-950452462 var1827 var1258!2 var1243!1)) ; Statement: virtualinvoke $r10.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r8, z3) 

(declare-const var1827!1 var2619)
(declare-const var1258!3 String)
(declare-const var1243!2 Bool)
 ; Statement: if z1 == 0 goto virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(assert (= (ite var3300 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var1258!3 " : ")) ; Statement: virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var1258!4 String)
(assert (= var1258!4 (str.++ var1258!3 " : ")))
 ; Statement: if z2 == 0 goto $r11 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>() 
(assert (= (ite var3693 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var3850 var2619 (getFalseExpression/705875816 var1853)) ; Statement: $r11 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>() 
(assert true)
;(assert (toString/-950452462 var3850 var1258!4 var1243!2)) ; Statement: virtualinvoke $r11.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r8, z3) 

(declare-const var3850!1 var2619)
(declare-const var1258!5 String)
(declare-const var1243!3 Bool)
 ; Statement: if z2 == 0 goto return 
(assert (= (ite var3693 1 0) 0)) ; Cond: z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var1377-to-var3694=([jdk.nashorn.internal.ir.TernaryNode], jdk.nashorn.internal.ir.Node), getTest/-811196138=([jdk.nashorn.internal.ir.TernaryNode], jdk.nashorn.internal.ir.Expression), cast-from-var3581-to-var3694=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), getTrueExpression/1547375633=([jdk.nashorn.internal.ir.TernaryNode], jdk.nashorn.internal.ir.JoinPredecessorExpression), cast-from-var2619-to-var3694=([jdk.nashorn.internal.ir.JoinPredecessorExpression], jdk.nashorn.internal.ir.Node), getFalseExpression/705875816=([jdk.nashorn.internal.ir.TernaryNode], jdk.nashorn.internal.ir.JoinPredecessorExpression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-950452462=([jdk.nashorn.internal.ir.JoinPredecessorExpression, java.lang.StringBuilder, boolean], void)}
; {var1377=jdk.nashorn.internal.ir.TernaryNode, var1853=r0, var1258=r8, var1243=z3, var326=jdk.nashorn.internal.parser.TokenType, var3694=jdk.nashorn.internal.ir.Node, var3846=r1, var3581=jdk.nashorn.internal.ir.Expression, var1062=$r2, var16=$r3, var1781=z0, var2619=jdk.nashorn.internal.ir.JoinPredecessorExpression, var696=$r4, var568=$r5, var3300=z1, var3504=$r6, var1537=$r7, var3693=z2, var2613=$r9, var1827=$r10, var3850=$r11}
; {jdk.nashorn.internal.ir.TernaryNode=var1377, r0=var1853, r8=var1258, z3=var1243, jdk.nashorn.internal.parser.TokenType=var326, jdk.nashorn.internal.ir.Node=var3694, r1=var3846, jdk.nashorn.internal.ir.Expression=var3581, $r2=var1062, $r3=var16, z0=var1781, jdk.nashorn.internal.ir.JoinPredecessorExpression=var2619, $r4=var696, $r5=var568, z1=var3300, $r6=var3504, $r7=var1537, z2=var3693, $r9=var2613, $r10=var1827, $r11=var3850}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.ir.TernaryNode;	r8 := @parameter0: java.lang.StringBuilder;	z3 := @parameter1: boolean;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1);	$r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.JoinPredecessorExpression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0);	$r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>();	$r7 = virtualinvoke $r6.<jdk.nashorn.internal.ir.JoinPredecessorExpression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z2 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r7, 0);	if z0 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.Expression getTest()>();	virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r8, z3);	if z0 == 0 goto virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ? ");	virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ? ");	if z1 == 0 goto $r10 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>();	$r10 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getTrueExpression()>();	virtualinvoke $r10.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r8, z3);	if z1 == 0 goto virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	if z2 == 0 goto $r11 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>();	$r11 = virtualinvoke r0.<jdk.nashorn.internal.ir.TernaryNode: jdk.nashorn.internal.ir.JoinPredecessorExpression getFalseExpression()>();	virtualinvoke $r11.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r8, z3);	if z2 == 0 goto return;	return
;block_num 7