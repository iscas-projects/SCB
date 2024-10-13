(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var287 0)
(declare-sort var1060 0)
(declare-sort var2382 0)
(declare-sort var3525 0)
(declare-sort var3875 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var2382) var1060)
(declare-fun cast-from-var287-to-var2382 (var287) var2382)
(declare-fun lhs/2144588721 (var287) var3525)
(declare-fun cast-from-var3525-to-var2382 (var3525) var2382)
(declare-fun needsParens/294712685 (var1060 var1060 Bool) Bool)
(declare-fun rhs/-1978603669 (var287) var3525)
(declare-fun toString/740977591 (var2382 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ordinal/-291641772 (var78) Int)
(declare-fun cast-from-var1060-to-var78 (var1060) var78)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var3525) Bool)
(declare-fun cast-from-var287-to-var3525 (var287) var3525)
(declare-const null-var287 var287)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3875-$SwitchMap$jdk$nashorn$internal$parser$TokenType (Array Int Int))
(declare-const var12 var287) ; Statement: r0 := @this: jdk.nashorn.internal.ir.BinaryNode 
(assert (not (= var12 null-var287)))
(declare-const var1851 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1851 null-String)))
(declare-const var1943 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1943 null-Bool)))
(assert true)
(define-const var690 var1060 (tokenType/-595905731 (cast-from-var287-to-var2382 var12))) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var992 var3525 (lhs/2144588721 var12)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
(define-const var1471 var1060 (tokenType/-595905731 (cast-from-var3525-to-var2382 var992))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var2192 Bool (needsParens/294712685 var690 var1471 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1) 
(assert true)
(define-const var841 var3525 (rhs/-1978603669 var12)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
(define-const var2185 var1060 (tokenType/-595905731 (cast-from-var3525-to-var2382 var841))) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var924 Bool (needsParens/294712685 var690 var2185 (ite (= 1 0) true false))) ; Statement: z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0) 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert (= (ite var2192 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var152 var3525 (lhs/2144588721 var12)) ; Statement: $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var3525-to-var2382 var152) var1851 var1943)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var152!1 var3525)
(declare-const var1851!1 String)
(declare-const var1943!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2192 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var1851!1 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1851!2 String)
(assert (str.prefixof var1851!1 var1851!2))
(define-const var1263 (Array Int Int) var3875-$SwitchMap$jdk$nashorn$internal$parser$TokenType) ; Statement: $r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType> 
(assert true)
(define-const var429 Int (ordinal/-291641772 (cast-from-var1060-to-var78 var690))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>() 
(define-const var803 Int (select var1263 var429)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); } 
(assert (and (= var803 36) true)) ; Intersect: Cond: $i1 == 36  and Non Conditional 
(assert true)
;(assert (append/672562846 var1851!2 ",<")) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<") 
(declare-const var1851!3 String)
(assert (= var1851!3 (str.++ var1851!2 ",<")))
 ; Statement: goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3635 Bool (isOptimistic/-1593152072 (cast-from-var287-to-var3525 var12))) ; Statement: $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var3635 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var1851!3 32)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1851!4 String)
(assert (str.prefixof var1851!3 var1851!4))
 ; Statement: if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert (= (ite var924 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var912 var3525 (rhs/-1978603669 var12)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
;(assert (toString/740977591 (cast-from-var3525-to-var2382 var912) var1851!4 var1943!1)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2) 

(declare-const var912!1 var3525)
(declare-const var1851!5 String)
(declare-const var1943!2 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var924 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var287-to-var2382=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Node), lhs/2144588721=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), cast-from-var3525-to-var2382=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), rhs/-1978603669=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1060-to-var78=([jdk.nashorn.internal.parser.TokenType], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean), cast-from-var287-to-var3525=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression)}
; {var287=jdk.nashorn.internal.ir.BinaryNode, var12=r0, var1851=r6, var1943=z2, var1060=jdk.nashorn.internal.parser.TokenType, var2382=jdk.nashorn.internal.ir.Node, var690=r1, var3525=jdk.nashorn.internal.ir.Expression, var992=$r2, var1471=$r3, var2192=z0, var841=$r4, var2185=$r5, var924=z1, var152=$r7, var3875=jdk.nashorn.internal.ir.BinaryNode$2, var1263=$r8, var78=java.lang.Enum, var429=$i0, var803=$i1, var3635=$z3, var912=$r9}
; {jdk.nashorn.internal.ir.BinaryNode=var287, r0=var12, r6=var1851, z2=var1943, jdk.nashorn.internal.parser.TokenType=var1060, jdk.nashorn.internal.ir.Node=var2382, r1=var690, jdk.nashorn.internal.ir.Expression=var3525, $r2=var992, $r3=var1471, z0=var2192, $r4=var841, $r5=var2185, z1=var924, $r7=var152, jdk.nashorn.internal.ir.BinaryNode$2=var3875, $r8=var1263, java.lang.Enum=var78, $i0=var429, $i1=var803, $z3=var3635, $r9=var912}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.BinaryNode;	r6 := @parameter0: java.lang.StringBuilder;	z2 := @parameter1: boolean;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r3, 1);	$r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z1 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r5, 0);	if z0 == 0 goto $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	$r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = <jdk.nashorn.internal.ir.BinaryNode$2: int[] $SwitchMap$jdk$nashorn$internal$parser$TokenType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 36: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");     case 37: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",>");     case 38: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     case 39: goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("++");     default: goto $r10 = virtualinvoke r1.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>(); };	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",<");	goto [?= $z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>()];	$z3 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: boolean isOptimistic()>();	if $z3 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if z1 == 0 goto $r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	virtualinvoke $r9.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r6, z2);	if z1 == 0 goto return;	return
;block_num 8