(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2874 0)
(declare-sort var3240 0)
(declare-sort var1719 0)
(declare-sort var1193 0)
(declare-sort var2019 0)
(declare-sort var441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var1719) var3240)
(declare-fun cast-from-var2874-to-var1719 (var2874) var1719)
(declare-fun lhs/2144588721 (var2874) var1193)
(declare-fun cast-from-var1193-to-var1719 (var1193) var1719)
(declare-fun needsParens/294712685 (var3240 var3240 Bool) Bool)
(declare-fun rhs/-1978603669 (var2874) var1193)
(declare-fun toString/740977591 (var1719 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ordinal/-291641772 (var441) Int)
(declare-fun cast-from-var3240-to-var441 (var3240) var441)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var1193) Bool)
(declare-fun cast-from-var2874-to-var1193 (var2874) var1193)
(declare-const null-var2874 var2874)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2019-$SwitchMap$jdk$nashorn$internal$parser$TokenType (Array Int Int))
(declare-const var484 var2874) ; Statement: r0 := @this: jdk.nashorn.internal.ir.BinaryNode 
(assert (not (= var484 null-var2874)))
(declare-const var2528 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2528 null-String)))
(declare-const var2590 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var2590 null-Bool)))
(assert true)
(define-const var1692 var3240 (tokenType/-595905731 (cast-from-var2874-to-var1719 var484))) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var249 var1193 (lhs/2144588721 var484)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
(define-const var842 var3240 (tokenType/-595905731 (cast-from-var1193-to-var1719 var249))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var1092 Bool (needsParens/294712685 var1692 var842 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1) 
(assert true)
(define-const var2482 var1193 (rhs/-1978603669 var484)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
(define-const var3006 var3240 (tokenType/-595905731 (cast-from-var1193-to-var1719 var2482))) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var1577 Bool (needsParens/294712685 var1692 var3006 (ite (= 1 0) true false))) ; Statement: z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0) 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert (= (ite var1092 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1598 var1193 (lhs/2144588721 var484)) ; Statement: $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var1193-to-var1719 var1598) var2528 var2590)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var1598!1 var1193)
(declare-const var2528!1 String)
(declare-const var2590!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var1092 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2528!1 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2528!2 String)
(assert (str.prefixof var2528!1 var2528!2))
(define-const var1765 (Array Int Int) var2019-$SwitchMap$jdk$nashorn$internal$parser$TokenType) ; Statement: $r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType> 
(assert true)
(define-const var1752 Int (ordinal/-291641772 (cast-from-var3240-to-var441 var1692))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>() 
(define-const var3196 Int (select var1765 var1752)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); } 
(assert (and (= var3196 37) (and (not (= var3196 36)) true))) ; Intersect: Cond: $i1 == 37  and Intersect: Negate: Cond: $i1 == 36   and Non Conditional  
(assert true)
;(assert (append/672562846 var2528!2 ",>")) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>") 
(declare-const var2528!3 String)
(assert (= var2528!3 (str.++ var2528!2 ",>")))
 ; Statement: goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2133 Bool (isOptimistic/-1593152072 (cast-from-var2874-to-var1193 var484))) ; Statement: $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2133 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var2528!3 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2528!4 String)
(assert (str.prefixof var2528!3 var2528!4))
 ; Statement: if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert (= (ite var1577 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var556 var1193 (rhs/-1978603669 var484)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var1193-to-var1719 var556) var2528!4 var2590!1)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var556!1 var1193)
(declare-const var2528!5 String)
(declare-const var2590!2 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var1577 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2874-to-var1719=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Node), lhs/2144588721=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), cast-from-var1193-to-var1719=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), rhs/-1978603669=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3240-to-var441=([jdk.nashorn.internal.parser.TokenType], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean), cast-from-var2874-to-var1193=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression)}
; {var2874=jdk.nashorn.internal.ir.BinaryNode, var484=r0, var2528=r6, var2590=z2, var3240=jdk.nashorn.internal.parser.TokenType, var1719=jdk.nashorn.internal.ir.Node, var1692=r1, var1193=jdk.nashorn.internal.ir.Expression, var249=$r2, var842=$r3, var1092=z0, var2482=$r4, var3006=$r5, var1577=z1, var1598=$r7, var2019=jdk.nashorn.internal.ir.BinaryNode$2, var1765=$r8, var441=java.lang.Enum, var1752=$i0, var3196=$i1, var2133=$z3, var556=$r9}
; {jdk.nashorn.internal.ir.BinaryNode=var2874, r0=var484, r6=var2528, z2=var2590, jdk.nashorn.internal.parser.TokenType=var3240, jdk.nashorn.internal.ir.Node=var1719, r1=var1692, jdk.nashorn.internal.ir.Expression=var1193, $r2=var249, $r3=var842, z0=var1092, $r4=var2482, $r5=var3006, z1=var1577, $r7=var1598, jdk.nashorn.internal.ir.BinaryNode$2=var2019, $r8=var1765, java.lang.Enum=var441, $i0=var1752, $i1=var3196, $z3=var2133, $r9=var556}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.BinaryNode;	r6 := @parameter0: java.lang.StringBuilder;	z2 := @parameter1: boolean;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1);	$r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0);	if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); };	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");	goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()];	$z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>();	if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z1 == 0 goto return;	return
;block_num 8