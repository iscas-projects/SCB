(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var3336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun c/-659233613 (var1884) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun newToken/-2113678158 (var1884 Int) var3336)
(declare-const null-var1884 var1884)
(declare-const var2679 var1884) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var2679 null-var1884)))
(define-const var3639 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var72 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var72)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var72!1 String)
(assert (= var72!1 ""))
(assert true) ; Non Conditional
(define-const var2705 Int (c/-659233613 var2679)) ; Statement: $c14 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var1380 Int (cast-from-Int-to-Int var2705)) ; Statement: $i15 = (int) $c14 
(define-const var471 Int (cast-from-Int-to-Int 65535)) ; Statement: $i17 = (int) 65535 
 ; Statement: if $i15 == $i17 goto (branch) 
(assert (= var1380 var471)) ; Cond: $i15 == $i17 
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22) 
(assert (= (ite var3639 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var286 var3336 (newToken/-2113678158 var2679 22)) ; Statement: $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), cast-from-Int-to-Int=([char], int), newToken/-2113678158=([org.stringtemplate.v4.compiler.STLexer, int], org.antlr.runtime.Token)}
; {var1884=org.stringtemplate.v4.compiler.STLexer, var2679=r1, var3639=z0, var72=$r8, var2705=$c14, var1380=$i15, var471=$i17, var3336=org.antlr.runtime.Token, var286=$r2}
; {org.stringtemplate.v4.compiler.STLexer=var1884, r1=var2679, z0=var3639, $r8=var72, $c14=var2705, $i15=var1380, $i17=var471, org.antlr.runtime.Token=var3336, $r2=var286}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.STLexer;	z0 = 0;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$c14 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i15 = (int) $c14;	$i17 = (int) 65535;	if $i15 == $i17 goto (branch);	if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22);	$r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22);	return $r2
;block_num 4