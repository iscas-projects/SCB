(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3935 0)
(declare-sort var541 0)
(declare-sort var757 0)
(declare-sort var102 0)
(declare-sort var1581 0)
(declare-sort var2040 0)
(declare-sort var934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun literalToken/-51331560 (var541) var757)
(declare-fun asLiteral/-57974477 (var757) var102)
(declare-fun this$0/-982525579 (var3935) var1581)
(declare-fun normalizeRegex/1248877710 (var1581 var102) String)
(declare-fun newStringNode/-741850190 (var1581 String) var2040)
(declare-fun setSourceInfo/-252339292 (var1581 var2040 var757) void)
(declare-fun cast-from-var102-to-var757 (var102) var757)
(declare-fun newNode/1918618713 (var1581 var934 var2040) var2040)
(declare-fun value/-732511682 (var102) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun validateRegExpFlags/-115249021 (var3935 var541 String) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3935 var3935)
(declare-const null-var541 var541)
(declare-const var934-REGEXP var934)
(declare-const var2110 var3935) ; Statement: r3 := @this: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher 
(assert (not (= var2110 null-var3935)))
(declare-const var2868 var541) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree 
(assert (not (= var2868 null-var541)))
(define-const var2369 var757 (literalToken/-51331560 var2868)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree: com.google.javascript.jscomp.parsing.parser.Token literalToken> 
(assert true)
(define-const var932 var102 (asLiteral/-57974477 var2369)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.parsing.parser.Token: com.google.javascript.jscomp.parsing.parser.LiteralToken asLiteral()>() 
(define-const var2132 var1581 (this$0/-982525579 var2110)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0> 
(define-const var2602 var1581 (this$0/-982525579 var2110)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0> 
(assert true)
(define-const var1954 String (normalizeRegex/1248877710 var2602 var932)) ; Statement: $r6 = virtualinvoke $r4.<com.google.javascript.jscomp.parsing.IRFactory: java.lang.String normalizeRegex(com.google.javascript.jscomp.parsing.parser.LiteralToken)>(r2) 
(assert true)
(define-const var2645 var2040 (newStringNode/-741850190 var2132 var1954)) ; Statement: r7 = virtualinvoke $r5.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node newStringNode(java.lang.String)>($r6) 
(define-const var2911 var1581 (this$0/-982525579 var2110)) ; Statement: $r8 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0> 
(assert true)
;(assert (setSourceInfo/-252339292 var2911 var2645 (cast-from-var102-to-var757 var932))) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.Token)>(r7, r2) 

(declare-const var2911!1 var1581)
(declare-const var2645!1 var2040)
(declare-const var932!1 var102)
(define-const var1064 var1581 (this$0/-982525579 var2110)) ; Statement: $r10 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0> 
(define-const var1057 var934 var934-REGEXP) ; Statement: $r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token REGEXP> 
(assert true)
(define-const var978 var2040 (newNode/1918618713 var1064 var1057 var2645!1)) ; Statement: r11 = virtualinvoke $r10.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node newNode(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r9, r7) 
(define-const var2648 String (value/-732511682 var932!1)) ; Statement: r12 = r2.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var3544 Int (lastIndexOf/-1292097097 var2648 47)) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var1871 String "") ; Statement: r16 = "" 
(assert true)
(define-const var1337 Int (length/-134980193 var2648)) ; Statement: $i1 = virtualinvoke r12.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto virtualinvoke r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: void validateRegExpFlags(com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree,java.lang.String)>(r0, r16) 
(assert (>= var3544 var1337)) ; Cond: i0 >= $i1 
(assert true)
;(assert (validateRegExpFlags/-115249021 var2110 var2868 var1871)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: void validateRegExpFlags(com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree,java.lang.String)>(r0, r16) 

(declare-const var2110!1 var3935)
(declare-const var2868!1 var541)
(declare-const var1871!1 String)
(assert true)
(define-const var3776 Bool (isEmpty/-1285796103 var1871!1)) ; Statement: $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return r11 
(assert (not (= (ite var3776 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {literalToken/-51331560=([com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree], com.google.javascript.jscomp.parsing.parser.Token), asLiteral/-57974477=([com.google.javascript.jscomp.parsing.parser.Token], com.google.javascript.jscomp.parsing.parser.LiteralToken), this$0/-982525579=([com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher], com.google.javascript.jscomp.parsing.IRFactory), normalizeRegex/1248877710=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), newStringNode/-741850190=([com.google.javascript.jscomp.parsing.IRFactory, java.lang.String], com.google.javascript.rhino.Node), setSourceInfo/-252339292=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node, com.google.javascript.jscomp.parsing.parser.Token], void), cast-from-var102-to-var757=([com.google.javascript.jscomp.parsing.parser.LiteralToken], com.google.javascript.jscomp.parsing.parser.Token), newNode/1918618713=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Token, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), validateRegExpFlags/-115249021=([com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree, java.lang.String], void), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3935=com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, var2110=r3, var541=com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree, var2868=r0, var757=com.google.javascript.jscomp.parsing.parser.Token, var2369=$r1, var102=com.google.javascript.jscomp.parsing.parser.LiteralToken, var932=r2, var1581=com.google.javascript.jscomp.parsing.IRFactory, var2132=$r5, var2602=$r4, var1954=$r6, var2040=com.google.javascript.rhino.Node, var2645=r7, var2911=$r8, var1064=$r10, var934=com.google.javascript.rhino.Token, var1057=$r9, var978=r11, var2648=r12, var3544=i0, var1871=r16, var1337=$i1, var3776=$z0}
; {com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher=var3935, r3=var2110, com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree=var541, r0=var2868, com.google.javascript.jscomp.parsing.parser.Token=var757, $r1=var2369, com.google.javascript.jscomp.parsing.parser.LiteralToken=var102, r2=var932, com.google.javascript.jscomp.parsing.IRFactory=var1581, $r5=var2132, $r4=var2602, $r6=var1954, com.google.javascript.rhino.Node=var2040, r7=var2645, $r8=var2911, $r10=var1064, com.google.javascript.rhino.Token=var934, $r9=var1057, r11=var978, r12=var2648, i0=var3544, r16=var1871, $i1=var1337, $z0=var3776}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree: com.google.javascript.jscomp.parsing.parser.Token literalToken>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.parsing.parser.Token: com.google.javascript.jscomp.parsing.parser.LiteralToken asLiteral()>();	$r5 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0>;	$r4 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0>;	$r6 = virtualinvoke $r4.<com.google.javascript.jscomp.parsing.IRFactory: java.lang.String normalizeRegex(com.google.javascript.jscomp.parsing.parser.LiteralToken)>(r2);	r7 = virtualinvoke $r5.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node newStringNode(java.lang.String)>($r6);	$r8 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0>;	virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.Token)>(r7, r2);	$r10 = r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.jscomp.parsing.IRFactory this$0>;	$r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token REGEXP>;	r11 = virtualinvoke $r10.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node newNode(com.google.javascript.rhino.Token,com.google.javascript.rhino.Node)>($r9, r7);	r12 = r2.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(int)>(47);	r16 = "";	$i1 = virtualinvoke r12.<java.lang.String: int length()>();	if i0 >= $i1 goto virtualinvoke r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: void validateRegExpFlags(com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree,java.lang.String)>(r0, r16);	virtualinvoke r3.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: void validateRegExpFlags(com.google.javascript.jscomp.parsing.parser.trees.LiteralExpressionTree,java.lang.String)>(r0, r16);	$z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return r11;	return r11
;block_num 3