(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/39698060 (var207) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var207 var207)
(declare-const var452 var207) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var452 null-var207)))
(assert true)
(define-const var569 String (getPath/39698060 var452)) ; Statement: r1 = virtualinvoke r0.<java.net.URI: java.lang.String getPath()>() 
(assert true)
(define-const var3887 Int (length/-134980193 var569)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var3887 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/39698060=([java.net.URI], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var207=java.net.URI, var452=r0, var569=r1, var3887=$i0}
; {java.net.URI=var207, r0=var452, r1=var569, $i0=var3887}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.net.URI;	r1 = virtualinvoke r0.<java.net.URI: java.lang.String getPath()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 2