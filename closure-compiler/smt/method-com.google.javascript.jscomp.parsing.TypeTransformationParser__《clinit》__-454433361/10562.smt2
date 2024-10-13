(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2134 String "@template") ; Statement: $r0 = "@template" 
(assert true)
(define-const var2682 Int (length/-134980193 var2134)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2024 Int var2682) ; Statement: <com.google.javascript.jscomp.parsing.TypeTransformationParser: int TTL_NODE_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2134=$r0, var2682=$i0, var2024=<com.google.javascript.jscomp.parsing.TypeTransformationParser: int TTL_NODE_LENGTH>}
; {$r0=var2134, $i0=var2682, <com.google.javascript.jscomp.parsing.TypeTransformationParser: int TTL_NODE_LENGTH>=var2024}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "@template";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<com.google.javascript.jscomp.parsing.TypeTransformationParser: int TTL_NODE_LENGTH> = $i0;	return
;block_num 1