(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2633 0)
(declare-sort var2088 0)
(declare-sort var769 0)
(declare-sort var2765 0)
(declare-sort var3675 0)
(declare-sort var759 0)
(declare-sort var3814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lhs/2144588721 (var2088) var769)
(declare-fun accept/369420039 (var2765 var3675) var2765)
(declare-fun cast-from-var769-to-var2765 (var769) var2765)
(declare-fun cast-from-var2633-to-var3675 (var2633) var3675)
(declare-fun sb/709861400 (var2633) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun tokenType/-595905731 (var2765) var759)
(declare-fun cast-from-var2088-to-var2765 (var2088) var2765)
(declare-fun append/-1031950772 (String var3814) String)
(declare-fun cast-from-var759-to-var3814 (var759) var3814)
(declare-fun rhs/-1978603669 (var2088) var769)
(declare-const null-var2633 var2633)
(declare-const null-var2088 var2088)
(declare-const var2538 var2633) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var2538 null-var2633)))
(declare-const var2990 var2088) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.BinaryNode 
(assert (not (= var2990 null-var2088)))
(assert true)
(define-const var2087 var769 (lhs/2144588721 var2990)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>() 
(assert true)
;(assert (accept/369420039 (cast-from-var769-to-var2765 var2087) (cast-from-var2633-to-var3675 var2538))) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r1) 

(declare-const var2087!1 var769)
(declare-const var2538!1 var2633)
(define-const var265 String (sb/709861400 var2538!1)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var265 32)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var265!1 String)
(assert (str.prefixof var265 var265!1))
(define-const var3563 String (sb/709861400 var2538!1)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
(define-const var3720 var759 (tokenType/-595905731 (cast-from-var2088-to-var2765 var2990))) ; Statement: $r5 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
;(assert (append/-1031950772 var3563 (cast-from-var759-to-var3814 var3720))) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3563!1 String)
(assert (str.prefixof var3563 var3563!1))
(define-const var2336 String (sb/709861400 var2538!1)) ; Statement: $r6 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var2336 32)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2336!1 String)
(assert (str.prefixof var2336 var2336!1))
(assert true)
(define-const var3685 var769 (rhs/-1978603669 var2990)) ; Statement: $r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>() 
(assert true)
;(assert (accept/369420039 (cast-from-var769-to-var2765 var3685) (cast-from-var2633-to-var3675 var2538!1))) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r1) 

(declare-const var3685!1 var769)
(declare-const var2538!2 var2633)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {lhs/2144588721=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression), accept/369420039=([jdk.nashorn.internal.ir.Node, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.Node), cast-from-var769-to-var2765=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), cast-from-var2633-to-var3675=([jdk.nashorn.internal.ir.debug.PrintVisitor], jdk.nashorn.internal.ir.visitor.NodeVisitor), sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2088-to-var2765=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Node), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var759-to-var3814=([jdk.nashorn.internal.parser.TokenType], java.lang.Object), rhs/-1978603669=([jdk.nashorn.internal.ir.BinaryNode], jdk.nashorn.internal.ir.Expression)}
; {var2633=jdk.nashorn.internal.ir.debug.PrintVisitor, var2538=r1, var2088=jdk.nashorn.internal.ir.BinaryNode, var2990=r0, var769=jdk.nashorn.internal.ir.Expression, var2087=$r2, var2765=jdk.nashorn.internal.ir.Node, var3675=jdk.nashorn.internal.ir.visitor.NodeVisitor, var265=$r3, var3563=$r4, var759=jdk.nashorn.internal.parser.TokenType, var3720=$r5, var3814=java.lang.Object, var2336=$r6, var3685=$r7}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2633, r1=var2538, jdk.nashorn.internal.ir.BinaryNode=var2088, r0=var2990, jdk.nashorn.internal.ir.Expression=var769, $r2=var2087, jdk.nashorn.internal.ir.Node=var2765, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3675, $r3=var265, $r4=var3563, jdk.nashorn.internal.parser.TokenType=var759, $r5=var3720, java.lang.Object=var3814, $r6=var2336, $r7=var3685}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r0 := @parameter0: jdk.nashorn.internal.ir.BinaryNode;	$r2 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression lhs()>();	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r1);	$r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r5 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r6 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = virtualinvoke r0.<jdk.nashorn.internal.ir.BinaryNode: jdk.nashorn.internal.ir.Expression rhs()>();	virtualinvoke $r7.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r1);	return 0
;block_num 1