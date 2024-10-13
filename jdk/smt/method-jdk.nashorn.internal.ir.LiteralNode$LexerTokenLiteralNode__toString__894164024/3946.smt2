(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var232 0)
(declare-sort var165 0)
(declare-sort var1355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/843938677 (var165) var232)
(declare-fun cast-from-var3386-to-var165 (var3386) var165)
(declare-fun cast-from-var232-to-var1355 (var232) var1355)
(declare-fun toString/-522406933 (var232) String)
(declare-fun cast-from-var1355-to-var232 (var1355) var232)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3386 var3386)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2306 var3386) ; Statement: r1 := @this: jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode 
(assert (not (= var2306 null-var3386)))
(declare-const var1109 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1109 null-String)))
(declare-const var3468 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3468 null-Bool)))
(define-const var1055 var232 (value/843938677 (cast-from-var3386-to-var165 var2306))) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode: java.lang.Object value> 
(define-const var1678 var1355 (cast-from-var232-to-var1355 var1055)) ; Statement: $r3 = (jdk.nashorn.internal.parser.Lexer$LexerToken) $r2 
(assert true)
(define-const var3748 String (toString/-522406933 (cast-from-var1355-to-var232 var1678))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1109 var3748)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1109!1 String)
(assert (= var1109!1 (str.++ var1109 var3748)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/843938677=([jdk.nashorn.internal.ir.LiteralNode], java.lang.Object), cast-from-var3386-to-var165=([jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode], jdk.nashorn.internal.ir.LiteralNode), cast-from-var232-to-var1355=([java.lang.Object], jdk.nashorn.internal.parser.Lexer$LexerToken), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1355-to-var232=([jdk.nashorn.internal.parser.Lexer$LexerToken], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3386=jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode, var2306=r1, var1109=r0, var3468=z0, var232=java.lang.Object, var165=jdk.nashorn.internal.ir.LiteralNode, var1055=$r2, var1355=jdk.nashorn.internal.parser.Lexer$LexerToken, var1678=$r3, var3748=$r4}
; {jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode=var3386, r1=var2306, r0=var1109, z0=var3468, java.lang.Object=var232, jdk.nashorn.internal.ir.LiteralNode=var165, $r2=var1055, jdk.nashorn.internal.parser.Lexer$LexerToken=var1355, $r3=var1678, $r4=var3748}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$LexerTokenLiteralNode: java.lang.Object value>;	$r3 = (jdk.nashorn.internal.parser.Lexer$LexerToken) $r2;	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 1