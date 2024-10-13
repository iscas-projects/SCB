(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2699 0)
(declare-sort var802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var802_parseTimespan/891733829 (String) Int)
(declare-const null-String String)
(declare-const var1711 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1711 null-String)))
(define-const var3076 String "infinity") ; Statement: $r1 = "infinity" 
(assert true)
(define-const var1170 Bool (= var3076 var1711)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0) 
(assert (= (ite var1170 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3776 Int (var802_parseTimespan/891733829 var1711)) ; Statement: $l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0) 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {var802_parseTimespan/891733829=([java.lang.String], long)}
; {var1711=r0, var2699=null_type, var3076=$r1, var1170=$z0, var802=jdk.jfr.internal.Utils, var3776=$l0}
; {r0=var1711, null_type=var2699, $r1=var3076, $z0=var1170, jdk.jfr.internal.Utils=var802, $l0=var3776}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "infinity";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0);	$l0 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespan(java.lang.String)>(r0);	return $l0
;block_num 2