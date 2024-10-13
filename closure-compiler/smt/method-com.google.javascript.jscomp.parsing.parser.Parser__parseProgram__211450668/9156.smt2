(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var39 0)
(declare-sort var2675 0)
(declare-sort var2238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2238) String)
(declare-fun cast-from-var2675-to-var2238 (var2675) var2238)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var39 var39)
(declare-const null-var2675 var2675)
(declare-const var3382 var39) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Parser 
(assert (not (= var3382 null-var39)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1810 var2675) ; Statement: $r7 := @caughtexception 
(assert (not (= var1810 null-var2675)))
(assert true)
(define-const var1846 String (toString/-1112415476 (cast-from-var2675-to-var2238 var1810))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Error: java.lang.String toString()>() 
(assert true)
(define-const var2478 Bool (contains/1009244746 var1846 (cast-from-String-to-String "java.lang.StackOverflowError"))) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.lang.StackOverflowError") 
 ; Statement: if $z0 == 0 goto throw $r7 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2675-to-var2238=([java.lang.Error], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var39=com.google.javascript.jscomp.parsing.parser.Parser, var3382=r0, var2675=java.lang.Error, var1810=$r7, var2238=java.lang.Throwable, var1846=$r8, var2478=$z0}
; {com.google.javascript.jscomp.parsing.parser.Parser=var39, r0=var3382, java.lang.Error=var2675, $r7=var1810, java.lang.Throwable=var2238, $r8=var1846, $z0=var2478}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Parser;	$r7 := @caughtexception;	$r8 = virtualinvoke $r7.<java.lang.Error: java.lang.String toString()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.lang.StackOverflowError");	if $z0 == 0 goto throw $r7;	throw $r7
;block_num 3