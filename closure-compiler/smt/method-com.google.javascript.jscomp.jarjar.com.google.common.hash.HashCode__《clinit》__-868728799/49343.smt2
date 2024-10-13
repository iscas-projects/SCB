(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var14 String "0123456789abcdef") ; Statement: $r0 = "0123456789abcdef" 
(assert true)
(define-const var2894 (Array Int Int) (toCharArray/415275702 var14)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2978 (Array Int Int) var2894) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: char[] hexDigits> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var14=$r0, var2894=$r1, var2978=<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: char[] hexDigits>}
; {$r0=var14, $r1=var2894, <com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: char[] hexDigits>=var2978}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = "0123456789abcdef";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: char[] hexDigits> = $r1;	return
;block_num 1