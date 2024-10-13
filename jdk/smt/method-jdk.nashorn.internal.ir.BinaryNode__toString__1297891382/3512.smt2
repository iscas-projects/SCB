(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2275 0)
(declare-sort var3451 0)
(declare-sort var1341 0)
(declare-sort var2657 0)
(declare-sort var3515 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var1341) var3451)
(declare-fun cast-from-var2275-to-var1341 (var2275) var1341)
(declare-fun lhs/2144588721 (var2275) var2657)
(declare-fun cast-from-var2657-to-var1341 (var2657) var1341)
(declare-fun needsParens/294712685 (var3451 var3451 Bool) Bool)
(declare-fun rhs/-1978603669 (var2275) var2657)
(declare-fun toString/740977591 (var1341 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ordinal/-291641772 (var2584) Int)
(declare-fun cast-from-var3451-to-var2584 (var3451) var2584)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var2657) Bool)
(declare-fun cast-from-var2275-to-var2657 (var2275) var2657)
(declare-const null-var2275 var2275)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3515-$SwitchMap$jdk$nashorn$internal$parser$TokenType (Array Int Int))
(declare-const var2061 var2275) ; Statement: r0 := @this: jdk.nashorn.internal.ir.BinaryNode 
(assert (not (= var2061 null-var2275)))
(declare-const var2283 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2283 null-String)))
(declare-const var588 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var588 null-Bool)))
(assert true)
(define-const var2314 var3451 (tokenType/-595905731 (cast-from-var2275-to-var1341 var2061))) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var3471 var2657 (lhs/2144588721 var2061)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
(define-const var884 var3451 (tokenType/-595905731 (cast-from-var2657-to-var1341 var3471))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var1139 Bool (needsParens/294712685 var2314 var884 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1) 
(assert true)
(define-const var1846 var2657 (rhs/-1978603669 var2061)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
(define-const var753 var3451 (tokenType/-595905731 (cast-from-var2657-to-var1341 var1846))) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var604 Bool (needsParens/294712685 var2314 var753 (ite (= 1 0) true false))) ; Statement: z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0) 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert (= (ite var1139 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3405 var2657 (lhs/2144588721 var2061)) ; Statement: $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var2657-to-var1341 var3405) var2283 var588)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var3405!1 var2657)
(declare-const var2283!1 String)
(declare-const var588!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var1139 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2283!1 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2283!2 String)
(assert (str.prefixof var2283!1 var2283!2))
(define-const var1639 (Array Int Int) var3515-$SwitchMap$jdk$nashorn$internal$parser$TokenType) ; Statement: $r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType> 
(assert true)
(define-const var1045 Int (ordinal/-291641772 (cast-from-var3451-to-var2584 var2314))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>() 
(define-const var2459 Int (select var1639 var1045)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); } 
(assert (and (= var2459 38) (and (not (= var2459 37)) (and (not (= var2459 36)) true)))) ; Intersect: Cond: $i1 == 38  and Intersect: Negate: Cond: $i1 == 37   and Intersect: Negate: Cond: $i1 == 36   and Non Conditional   
(assert true)
;(assert (append/672562846 var2283!2 "++")) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++") 
(declare-const var2283!3 String)
(assert (= var2283!3 (str.++ var2283!2 "++")))
 ; Statement: goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2786 Bool (isOptimistic/-1593152072 (cast-from-var2275-to-var2657 var2061))) ; Statement: $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2786 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var2283!3 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2283!4 String)
(assert (str.prefixof var2283!3 var2283!4))
 ; Statement: if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert (= (ite var604 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var3892 var2657 (rhs/-1978603669 var2061)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var2657-to-var1341 var3892) var2283!4 var588!1)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var3892!1 var2657)
(declare-const var2283!5 String)
(declare-const var588!2 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var604 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2275-to-var1341=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Node), lhs/2144588721=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), cast-from-var2657-to-var1341=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), rhs/-1978603669=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3451-to-var2584=([jdk.nashorn.internal.parser.TokenType], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean), cast-from-var2275-to-var2657=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression)}
; {var2275=jdk.nashorn.internal.ir.BinaryNode, var2061=r0, var2283=r6, var588=z2, var3451=jdk.nashorn.internal.parser.TokenType, var1341=jdk.nashorn.internal.ir.Node, var2314=r1, var2657=jdk.nashorn.internal.ir.Expression, var3471=$r2, var884=$r3, var1139=z0, var1846=$r4, var753=$r5, var604=z1, var3405=$r7, var3515=jdk.nashorn.internal.ir.BinaryNode$2, var1639=$r8, var2584=java.lang.Enum, var1045=$i0, var2459=$i1, var2786=$z3, var3892=$r9}
; {jdk.nashorn.internal.ir.BinaryNode=var2275, r0=var2061, r6=var2283, z2=var588, jdk.nashorn.internal.parser.TokenType=var3451, jdk.nashorn.internal.ir.Node=var1341, r1=var2314, jdk.nashorn.internal.ir.Expression=var2657, $r2=var3471, $r3=var884, z0=var1139, $r4=var1846, $r5=var753, z1=var604, $r7=var3405, jdk.nashorn.internal.ir.BinaryNode$2=var3515, $r8=var1639, java.lang.Enum=var2584, $i0=var1045, $i1=var2459, $z3=var2786, $r9=var3892}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.BinaryNode;	r6 := @parameter0: java.lang.StringBuilder;	z2 := @parameter1: boolean;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1);	$r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0);	if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); };	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");	goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()];	$z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>();	if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z1 == 0 goto return;	return
;block_num 8