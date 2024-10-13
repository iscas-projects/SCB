(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var892 0)
(declare-sort var2400 0)
(declare-sort var1080 0)
(declare-sort var3073 0)
(declare-sort var1657 0)
(declare-sort var2601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var1080) var2400)
(declare-fun cast-from-var892-to-var1080 (var892) var1080)
(declare-fun lhs/2144588721 (var892) var3073)
(declare-fun cast-from-var3073-to-var1080 (var3073) var1080)
(declare-fun needsParens/294712685 (var2400 var2400 Bool) Bool)
(declare-fun rhs/-1978603669 (var892) var3073)
(declare-fun toString/740977591 (var1080 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ordinal/-291641772 (var2601) Int)
(declare-fun cast-from-var2400-to-var2601 (var2400) var2601)
(declare-fun getName/-137682464 (var2400) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var3073) Bool)
(declare-fun cast-from-var892-to-var3073 (var892) var3073)
(declare-const null-var892 var892)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1657-$SwitchMap$jdk$nashorn$internal$parser$TokenType (Array Int Int))
(declare-const var1882 var892) ; Statement: r0 := @this: jdk.nashorn.internal.ir.BinaryNode 
(assert (not (= var1882 null-var892)))
(declare-const var1485 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1485 null-String)))
(declare-const var3971 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var3971 null-Bool)))
(assert true)
(define-const var3824 var2400 (tokenType/-595905731 (cast-from-var892-to-var1080 var1882))) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var865 var3073 (lhs/2144588721 var1882)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
(define-const var3729 var2400 (tokenType/-595905731 (cast-from-var3073-to-var1080 var865))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var2562 Bool (needsParens/294712685 var3824 var3729 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1) 
(assert true)
(define-const var1349 var3073 (rhs/-1978603669 var1882)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
(define-const var46 var2400 (tokenType/-595905731 (cast-from-var3073-to-var1080 var1349))) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var2073 Bool (needsParens/294712685 var3824 var46 (ite (= 1 0) true false))) ; Statement: z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0) 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert (= (ite var2562 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2961 var3073 (lhs/2144588721 var1882)) ; Statement: $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var3073-to-var1080 var2961) var1485 var3971)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var2961!1 var3073)
(declare-const var1485!1 String)
(declare-const var3971!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2562 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var1485!1 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1485!2 String)
(assert (str.prefixof var1485!1 var1485!2))
(define-const var3094 (Array Int Int) var1657-$SwitchMap$jdk$nashorn$internal$parser$TokenType) ; Statement: $r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType> 
(assert true)
(define-const var3102 Int (ordinal/-291641772 (cast-from-var2400-to-var2601 var3824))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>() 
(define-const var2092 Int (select var3094 var3102)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); } 
(assert (and (not (= var2092 39)) (and (not (= var2092 38)) (and (not (= var2092 37)) (and (not (= var2092 36)) true))))) ; Intersect: Negate: Cond: $i1 == 39   and Intersect: Negate: Cond: $i1 == 38   and Intersect: Negate: Cond: $i1 == 37   and Intersect: Negate: Cond: $i1 == 36   and Non Conditional    
(assert true)
(define-const var787 String (getName/-137682464 var3824)) ; Statement: $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1485!2 var787)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1485!3 String)
(assert (= var1485!3 (str.++ var1485!2 var787)))
(assert true) ; Non Conditional
(assert true)
(define-const var1388 Bool (isOptimistic/-1593152072 (cast-from-var892-to-var3073 var1882))) ; Statement: $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var1388 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var1485!3 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1485!4 String)
(assert (str.prefixof var1485!3 var1485!4))
 ; Statement: if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert (= (ite var2073 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1320 var3073 (rhs/-1978603669 var1882)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var3073-to-var1080 var1320) var1485!4 var3971!1)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var1320!1 var3073)
(declare-const var1485!5 String)
(declare-const var3971!2 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var2073 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var892-to-var1080=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Node), lhs/2144588721=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), cast-from-var3073-to-var1080=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), rhs/-1978603669=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2400-to-var2601=([jdk.nashorn.internal.parser.TokenType], java.lang.Enum), getName/-137682464=([jdk.nashorn.internal.parser.TokenType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean), cast-from-var892-to-var3073=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression)}
; {var892=jdk.nashorn.internal.ir.BinaryNode, var1882=r0, var1485=r6, var3971=z2, var2400=jdk.nashorn.internal.parser.TokenType, var1080=jdk.nashorn.internal.ir.Node, var3824=r1, var3073=jdk.nashorn.internal.ir.Expression, var865=$r2, var3729=$r3, var2562=z0, var1349=$r4, var46=$r5, var2073=z1, var2961=$r7, var1657=jdk.nashorn.internal.ir.BinaryNode$2, var3094=$r8, var2601=java.lang.Enum, var3102=$i0, var2092=$i1, var787=$r10, var1388=$z3, var1320=$r9}
; {jdk.nashorn.internal.ir.BinaryNode=var892, r0=var1882, r6=var1485, z2=var3971, jdk.nashorn.internal.parser.TokenType=var2400, jdk.nashorn.internal.ir.Node=var1080, r1=var3824, jdk.nashorn.internal.ir.Expression=var3073, $r2=var865, $r3=var3729, z0=var2562, $r4=var1349, $r5=var46, z1=var2073, $r7=var2961, jdk.nashorn.internal.ir.BinaryNode$2=var1657, $r8=var3094, java.lang.Enum=var2601, $i0=var3102, $i1=var2092, $r10=var787, $z3=var1388, $r9=var1320}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.BinaryNode;	r6 := @parameter0: java.lang.StringBuilder;	z2 := @parameter1: boolean;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1);	$r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0);	if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); };	$r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>();	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>();	if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z1 == 0 goto return;	return
;block_num 8