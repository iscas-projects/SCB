(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var114 String "0123456789abcdef") ; Statement: $r0 = "0123456789abcdef" 
(assert true)
(define-const var1389 (Array Int Int) (toCharArray/415275702 var114)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3704 (Array Int Int) var1389) ; Statement: <org.apache.lucene.util.ToStringUtils: char[] HEX> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var114=$r0, var1389=$r1, var3704=<org.apache.lucene.util.ToStringUtils: char[] HEX>}
; {$r0=var114, $r1=var1389, <org.apache.lucene.util.ToStringUtils: char[] HEX>=var3704}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = "0123456789abcdef";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<org.apache.lucene.util.ToStringUtils: char[] HEX> = $r1;	return
;block_num 1