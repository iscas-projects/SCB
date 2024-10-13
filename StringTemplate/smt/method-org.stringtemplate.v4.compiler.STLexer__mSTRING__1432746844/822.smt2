(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var2670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun c/-659233613 (var2615) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun consume/146832376 (var2615) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun newToken/524451241 (var2615 Int String) var2670)
(declare-const null-var2615 var2615)
(declare-const var3259 var2615) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var3259 null-var2615)))
(define-const var478 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var65 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var65)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var65!1 String)
(assert (= var65!1 ""))
(define-const var3389 Int (c/-659233613 var3259)) ; Statement: $c0 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert true)
;(assert (append/-1166366385 var65!1 var3389)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var65!2 String)
(assert (str.prefixof var65!1 var65!2))
(assert true)
;(assert (consume/146832376 var3259)) ; Statement: virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var3259!1 var2615)
(assert true) ; Non Conditional
(define-const var1146 Int (c/-659233613 var3259!1)) ; Statement: $c9 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3652 Int (cast-from-Int-to-Int var1146)) ; Statement: $i10 = (int) $c9 
 ; Statement: if $i10 == 34 goto $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (= var3652 34)) ; Cond: $i10 == 34 
(define-const var489 Int (c/-659233613 var3259!1)) ; Statement: $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert true)
;(assert (append/-1166366385 var65!2 var489)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var65!3 String)
(assert (str.prefixof var65!2 var65!3))
(assert true)
;(assert (consume/146832376 var3259!1)) ; Statement: virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var3259!2 var2615)
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26) 
(assert (not (= (ite var478 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var1760 String (toString/-2075883882 var65!3)) ; Statement: $r3 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1105 var2670 (newToken/524451241 var3259!2 26 var1760)) ; Statement: $r4 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String)>(26, $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), consume/146832376=([org.stringtemplate.v4.compiler.STLexer], void), cast-from-Int-to-Int=([char], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), newToken/524451241=([org.stringtemplate.v4.compiler.STLexer, int, java.lang.String], org.antlr.runtime.Token)}
; {var2615=org.stringtemplate.v4.compiler.STLexer, var3259=r1, var478=z0, var65=$r13, var3389=$c0, var1146=$c9, var3652=$i10, var489=$c1, var1760=$r3, var2670=org.antlr.runtime.Token, var1105=$r4}
; {org.stringtemplate.v4.compiler.STLexer=var2615, r1=var3259, z0=var478, $r13=var65, $c0=var3389, $c9=var1146, $i10=var3652, $c1=var489, $r3=var1760, org.antlr.runtime.Token=var2670, $r4=var1105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.STLexer;	z0 = 0;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$c0 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c9 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i10 = (int) $c9;	if $i10 == 34 goto $c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c1 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(26);	$r3 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String)>(26, $r3);	return $r4
;block_num 4