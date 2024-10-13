(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var229 0)
(declare-sort var915 0)
(declare-sort var1452 0)
(declare-sort var76 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var915) var229)
(declare-fun cast-from-var2751-to-var915 (var2751) var915)
(declare-fun base/1680130767 (var76) var1452)
(declare-fun cast-from-var2751-to-var76 (var2751) var76)
(declare-fun cast-from-var1452-to-var915 (var1452) var915)
(declare-fun needsParens/294712685 (var229 var229 Bool) Bool)
(declare-fun toString/740977591 (var915 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun index/1569026840 (var2751) var1452)
(declare-const null-var2751 var2751)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2123 var2751) ; Statement: r0 := @this: jdk.nashorn.internal.ir.IndexNode 
(assert (not (= var2123 null-var2751)))
(declare-const var2455 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2455 null-String)))
(declare-const var3012 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3012 null-Bool)))
(assert true)
(define-const var2684 var229 (tokenType/-595905731 (cast-from-var2751-to-var915 var2123))) ; Statement: $r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(define-const var1345 var1452 (base/1680130767 (cast-from-var2751-to-var76 var2123))) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base> 
(assert true)
(define-const var3991 var229 (tokenType/-595905731 (cast-from-var1452-to-var915 var1345))) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var2616 Bool (needsParens/294712685 var2684 var3991 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke $r3.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r2, 1) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2616 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r5 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base> 
(assert (= (ite var3012 1 0) 0)) ; Cond: z1 == 0 
(define-const var3878 var1452 (base/1680130767 (cast-from-var2751-to-var76 var2123))) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base> 
(assert true)
;(assert (toString/740977591 (cast-from-var1452-to-var915 var3878) var2455 var3012)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1) 

(declare-const var3878!1 var1452)
(declare-const var2455!1 String)
(declare-const var3012!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(assert (= (ite var2616 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2455!1 91)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2455!2 String)
(assert (str.prefixof var2455!1 var2455!2))
(define-const var2156 var1452 (index/1569026840 var2123)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression index> 
(assert true)
;(assert (toString/740977591 (cast-from-var1452-to-var915 var2156) var2455!2 var3012!1)) ; Statement: virtualinvoke $r6.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1) 

(declare-const var2156!1 var1452)
(declare-const var2455!3 String)
(declare-const var3012!2 Bool)
(assert true)
;(assert (append/-1166366385 var2455!3 93)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2455!4 String)
(assert (str.prefixof var2455!3 var2455!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2751-to-var915=([jdk.nashorn.internal.ir.IndexNode], jdk.nashorn.internal.ir.Node), base/1680130767=([jdk.nashorn.internal.ir.BaseNode], jdk.nashorn.internal.ir.Expression), cast-from-var2751-to-var76=([jdk.nashorn.internal.ir.IndexNode], jdk.nashorn.internal.ir.BaseNode), cast-from-var1452-to-var915=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), index/1569026840=([jdk.nashorn.internal.ir.IndexNode], jdk.nashorn.internal.ir.Expression)}
; {var2751=jdk.nashorn.internal.ir.IndexNode, var2123=r0, var2455=r4, var3012=z1, var229=jdk.nashorn.internal.parser.TokenType, var915=jdk.nashorn.internal.ir.Node, var2684=$r3, var1452=jdk.nashorn.internal.ir.Expression, var76=jdk.nashorn.internal.ir.BaseNode, var1345=$r1, var3991=$r2, var2616=z0, var3878=$r5, var2156=$r6}
; {jdk.nashorn.internal.ir.IndexNode=var2751, r0=var2123, r4=var2455, z1=var3012, jdk.nashorn.internal.parser.TokenType=var229, jdk.nashorn.internal.ir.Node=var915, $r3=var2684, jdk.nashorn.internal.ir.Expression=var1452, jdk.nashorn.internal.ir.BaseNode=var76, $r1=var1345, $r2=var3991, z0=var2616, $r5=var3878, $r6=var2156}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.ir.IndexNode;	r4 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	$r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r1 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke $r3.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r2, 1);	if z0 == 0 goto (branch);	if z1 == 0 goto $r5 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base>;	$r5 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression base>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1);	if z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r6 = r0.<jdk.nashorn.internal.ir.IndexNode: jdk.nashorn.internal.ir.Expression index>;	virtualinvoke $r6.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 4