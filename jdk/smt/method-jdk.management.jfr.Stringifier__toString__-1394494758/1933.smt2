(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-511963710 (var465) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var465 var465)
(declare-const var1024 var465) ; Statement: r0 := @this: jdk.management.jfr.Stringifier 
(assert (not (= var1024 null-var465)))
(define-const var2259 String (sb/-511963710 var1024)) ; Statement: $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
(define-const var1719 String (toString/-2075883882 var2259)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-511963710=([jdk.management.jfr.Stringifier], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var465=jdk.management.jfr.Stringifier, var1024=r0, var2259=$r1, var1719=$r2}
; {jdk.management.jfr.Stringifier=var465, r0=var1024, $r1=var2259, $r2=var1719}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.management.jfr.Stringifier;	$r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1