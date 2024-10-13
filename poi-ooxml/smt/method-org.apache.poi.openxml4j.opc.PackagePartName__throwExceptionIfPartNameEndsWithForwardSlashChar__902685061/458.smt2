(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/39698060 (var2353) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2353 var2353)
(declare-const var1761 var2353) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var1761 null-var2353)))
(assert true)
(define-const var462 String (getPath/39698060 var1761)) ; Statement: r1 = virtualinvoke r0.<java.net.URI: java.lang.String getPath()>() 
(assert true)
(define-const var994 Int (length/-134980193 var462)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var994 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/39698060=([java.net.URI], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2353=java.net.URI, var1761=r0, var462=r1, var994=$i0}
; {java.net.URI=var2353, r0=var1761, r1=var462, $i0=var994}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.net.URI;	r1 = virtualinvoke r0.<java.net.URI: java.lang.String getPath()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 2