(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2043 0)
(declare-sort var2807 0)
(declare-sort var537 0)
(declare-sort var2615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var537) String)
(declare-fun cast-from-var2807-to-var537 (var2807) var537)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun arr-var2615-init () (Array Int var2615))
(declare-fun reportError/-2047131066 (var2043 String (Array Int var2615)) void)
(declare-const null-var2043 var2043)
(declare-const null-var2807 var2807)
(declare-const var715 var2043) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Parser 
(assert (not (= var715 null-var2043)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var198 var2807) ; Statement: $r7 := @caughtexception 
(assert (not (= var198 null-var2807)))
(assert true)
(define-const var101 String (toString/-1112415476 (cast-from-var2807-to-var537 var198))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Error: java.lang.String toString()>() 
(assert true)
(define-const var1707 Bool (contains/1009244746 var101 (cast-from-String-to-String "java.lang.StackOverflowError"))) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.lang.StackOverflowError") 
 ; Statement: if $z0 == 0 goto throw $r7 
(assert (not (= (ite var1707 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var455 (Array Int var2615) arr-var2615-init) ; Statement: $r9 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (reportError/-2047131066 var715 "Too deep recursion while parsing" var455)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Parser: void reportError(java.lang.String,java.lang.Object[])>("Too deep recursion while parsing", $r9) 

(declare-const var715!1 var2043)
(declare-const var1054 String)
(declare-const var455!1 (Array Int var2615))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2807-to-var537=([java.lang.Error], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), arr-var2615-init=([], java.lang.Object[]), reportError/-2047131066=([com.google.javascript.jscomp.parsing.parser.Parser, java.lang.String, java.lang.Object[]], void)}
; {var2043=com.google.javascript.jscomp.parsing.parser.Parser, var715=r0, var2807=java.lang.Error, var198=$r7, var537=java.lang.Throwable, var101=$r8, var1707=$z0, var2615=java.lang.Object, var455=$r9, var1054="Too deep recursion while parsing"}
; {com.google.javascript.jscomp.parsing.parser.Parser=var2043, r0=var715, java.lang.Error=var2807, $r7=var198, java.lang.Throwable=var537, $r8=var101, $z0=var1707, java.lang.Object=var2615, $r9=var455, "Too deep recursion while parsing"=var1054}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Parser;	$r7 := @caughtexception;	$r8 = virtualinvoke $r7.<java.lang.Error: java.lang.String toString()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.lang.StackOverflowError");	if $z0 == 0 goto throw $r7;	$r9 = newarray (java.lang.Object)[0];	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Parser: void reportError(java.lang.String,java.lang.Object[])>("Too deep recursion while parsing", $r9);	return null
;block_num 3