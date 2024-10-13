(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var1463 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (char)[1] 
(declare-const var1463!1 (Array Int Int))
(assert (not (= var1463!1 null-__Array__Int__Int__)))
(assert (= (select var1463!1 0) 43)) ; Statement: $r0[0] = 43 
(define-const var1990 (Array Int Int) var1463!1) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] PLUS_SIGN> = $r0 
(define-const var1889 String "0123456789ABCDEF") ; Statement: $r1 = "0123456789ABCDEF" 
(assert true)
(define-const var1113 (Array Int Int) (toCharArray/415275702 var1889)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var531 (Array Int Int) var1113) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] UPPER_HEX_DIGITS> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), toCharArray/415275702=([java.lang.String], char[])}
; {var1463=$r0, var1990=<com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] PLUS_SIGN>, var1889=$r1, var1113=$r2, var531=<com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] UPPER_HEX_DIGITS>}
; {$r0=var1463, <com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] PLUS_SIGN>=var1990, $r1=var1889, $r2=var1113, <com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] UPPER_HEX_DIGITS>=var531}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = newarray (char)[1];	$r0[0] = 43;	<com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] PLUS_SIGN> = $r0;	$r1 = "0123456789ABCDEF";	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper: char[] UPPER_HEX_DIGITS> = $r2;	return
;block_num 1