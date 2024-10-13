(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1143 0)
(declare-sort var1369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun c/-659233613 (var1143) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun newToken/524451241 (var1143 Int String) var1369)
(declare-const null-var1143 var1143)
(declare-const var422 var1143) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var422 null-var1143)))
(define-const var671 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var562 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var562)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var562!1 String)
(assert (= var562!1 ""))
(assert true) ; Non Conditional
(define-const var2959 Int (c/-659233613 var422)) ; Statement: $c14 = r1.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3178 Int (cast-from-Int-to-Int var2959)) ; Statement: $i15 = (int) $c14 
(define-const var3404 Int (cast-from-Int-to-Int 65535)) ; Statement: $i17 = (int) 65535 
 ; Statement: if $i15 == $i17 goto (branch) 
(assert (= var3178 var3404)) ; Cond: $i15 == $i17 
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22) 
(assert (not (= (ite var671 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var3903 String (toString/-2075883882 var562!1)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var112 var1369 (newToken/524451241 var422 22 var3903)) ; Statement: $r4 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String)>(22, $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), cast-from-Int-to-Int=([char], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), newToken/524451241=([org.stringtemplate.v4.compiler.STLexer, int, java.lang.String], org.antlr.runtime.Token)}
; {var1143=org.stringtemplate.v4.compiler.STLexer, var422=r1, var671=z0, var562=$r8, var2959=$c14, var3178=$i15, var3404=$i17, var3903=$r3, var1369=org.antlr.runtime.Token, var112=$r4}
; {org.stringtemplate.v4.compiler.STLexer=var1143, r1=var422, z0=var671, $r8=var562, $c14=var2959, $i15=var3178, $i17=var3404, $r3=var3903, org.antlr.runtime.Token=var1369, $r4=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.STLexer;	z0 = 0;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$c14 = r1.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i15 = (int) $c14;	$i17 = (int) 65535;	if $i15 == $i17 goto (branch);	if z0 == 0 goto $r2 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(22);	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke r1.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String)>(22, $r3);	return $r4
;block_num 4