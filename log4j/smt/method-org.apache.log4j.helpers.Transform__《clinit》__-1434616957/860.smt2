(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2336 String "]]>") ; Statement: $r0 = "]]>" 
(assert true)
(define-const var3457 Int (length/-134980193 var2336)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2410 Int var3457) ; Statement: <org.apache.log4j.helpers.Transform: int CDATA_END_LEN> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2336=$r0, var3457=$i0, var2410=<org.apache.log4j.helpers.Transform: int CDATA_END_LEN>}
; {$r0=var2336, $i0=var3457, <org.apache.log4j.helpers.Transform: int CDATA_END_LEN>=var2410}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "]]>";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<org.apache.log4j.helpers.Transform: int CDATA_END_LEN> = $i0;	return
;block_num 1