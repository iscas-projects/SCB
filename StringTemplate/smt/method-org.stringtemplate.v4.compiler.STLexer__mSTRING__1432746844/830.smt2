(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort var411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun c/-659233613 (var939) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun consume/146832376 (var939) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun newToken/-2113678158 (var939 Int) var411)
(declare-const null-var939 var939)
(declare-const var2659 var939) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var2659 null-var939)))
(define-const var3997 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2536 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2536)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2536!1 String)
(assert (= var2536!1 ""))
(define-const var2602 Int (c/-659233613 var2659)) ; Statement: $c0 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert true)
;(assert (append/-1166366385 var2536!1 var2602)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2536!2 String)
(assert (str.prefixof var2536!1 var2536!2))
(assert true)
;(assert (consume/146832376 var2659)) ; Statement: virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var2659!1 var939)
(assert true) ; Non Conditional
(define-const var3358 Int (c/-659233613 var2659!1)) ; Statement: $c9 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var513 Int (cast-from-Int-to-Int var3358)) ; Statement: $i10 = (int) $c9 
 ; Statement: if $i10 == 34 goto $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (= var513 34)) ; Cond: $i10 == 34 
(define-const var2153 Int (c/-659233613 var2659!1)) ; Statement: $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert true)
;(assert (append/-1166366385 var2536!2 var2153)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2536!3 String)
(assert (str.prefixof var2536!2 var2536!3))
(assert true)
;(assert (consume/146832376 var2659!1)) ; Statement: virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var2659!2 var939)
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26) 
(assert (= (ite var3997 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var113 var411 (newToken/-2113678158 var2659!2 26)) ; Statement: $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), consume/146832376=([org.stringtemplate.v4.compiler.STLexer], void), cast-from-Int-to-Int=([char], int), newToken/-2113678158=([org.stringtemplate.v4.compiler.STLexer, int], org.antlr.runtime.Token)}
; {var939=org.stringtemplate.v4.compiler.STLexer, var2659=r1, var3997=z0, var2536=$r13, var2602=$c0, var3358=$c9, var513=$i10, var2153=$c1, var411=org.antlr.runtime.Token, var113=$r2}
; {org.stringtemplate.v4.compiler.STLexer=var939, r1=var2659, z0=var3997, $r13=var2536, $c0=var2602, $c9=var3358, $i10=var513, $c1=var2153, org.antlr.runtime.Token=var411, $r2=var113}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: org.stringtemplate.v4.compiler.STLexer;	z0 = 0;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$c0 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c9 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i10 = (int) $c9;	if $i10 == 34 goto $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26);	$r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26);	return $r2
;block_num 4