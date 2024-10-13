(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2860 0)
(declare-sort var210 0)
(declare-sort var3809 0)
(declare-sort var486 0)
(declare-sort var3744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var3809) var210)
(declare-fun cast-from-var2860-to-var3809 (var2860) var3809)
(declare-fun getName/-137682464 (var210) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/-901195795 (var2860) var486)
(declare-fun toString/-866469929 (var486 String Bool) void)
(declare-fun init/-901195795 (var2860) var3744)
(declare-const null-var2860 var2860)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3744 var3744)
(declare-const var1590 var2860) ; Statement: r1 := @this: jdk.nashorn.internal.ir.VarNode 
(assert (not (= var1590 null-var2860)))
(declare-const var1130 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1130 null-String)))
(declare-const var581 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var581 null-Bool)))
(assert true)
(define-const var549 var210 (tokenType/-595905731 (cast-from-var2860-to-var3809 var1590))) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var3365 String (getName/-137682464 var549)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>() 
(assert true)
(define-const var1962 String (append/672562846 var1130 var3365)) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 var3365)))
(assert true)
;(assert (append/-1166366385 var1962 32)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(define-const var1213 var486 (name/-901195795 var1590)) ; Statement: $r5 = r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode name> 
(assert true)
;(assert (toString/-866469929 var1213 var1130!1 var581)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var1213!1 var486)
(declare-const var1130!2 String)
(declare-const var581!1 Bool)
(define-const var2192 var3744 (init/-901195795 var1590)) ; Statement: $r6 = r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.Expression init> 
 ; Statement: if $r6 == null goto return 
(assert (= var2192 null-var3744)) ; Cond: $r6 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2860-to-var3809=([jdk.nashorn.internal.ir.VarNode], jdk.nashorn.internal.ir.Node), getName/-137682464=([jdk.nashorn.internal.parser.TokenType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/-901195795=([jdk.nashorn.internal.ir.VarNode], jdk.nashorn.internal.ir.IdentNode), toString/-866469929=([jdk.nashorn.internal.ir.IdentNode, java.lang.StringBuilder, boolean], void), init/-901195795=([jdk.nashorn.internal.ir.VarNode], jdk.nashorn.internal.ir.Expression)}
; {var2860=jdk.nashorn.internal.ir.VarNode, var1590=r1, var1130=r0, var581=z0, var210=jdk.nashorn.internal.parser.TokenType, var3809=jdk.nashorn.internal.ir.Node, var549=$r2, var3365=$r3, var1962=$r4, var486=jdk.nashorn.internal.ir.IdentNode, var1213=$r5, var3744=jdk.nashorn.internal.ir.Expression, var2192=$r6}
; {jdk.nashorn.internal.ir.VarNode=var2860, r1=var1590, r0=var1130, z0=var581, jdk.nashorn.internal.parser.TokenType=var210, jdk.nashorn.internal.ir.Node=var3809, $r2=var549, $r3=var3365, $r4=var1962, jdk.nashorn.internal.ir.IdentNode=var486, $r5=var1213, jdk.nashorn.internal.ir.Expression=var3744, $r6=var2192}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.VarNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.parser.TokenType: java.lang.String getName()>();	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode name>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	$r6 = r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.Expression init>;	if $r6 == null goto return;	return
;block_num 2