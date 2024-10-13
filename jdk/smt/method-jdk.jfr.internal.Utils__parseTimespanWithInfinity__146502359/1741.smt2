(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2467 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2467 null-String)))
(define-const var2928 String "infinity") ; Statement: $r1 = "infinity" 
(assert true)
(define-const var890 Bool (= var2928 var2467)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0) 
(assert (not (= (ite var890 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 9223372036854775807L 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2467=r0, var3105=null_type, var2928=$r1, var890=$z0}
; {r0=var2467, null_type=var3105, $r1=var2928, $z0=var890}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "infinity";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0);	return 9223372036854775807L
;block_num 2