(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-603474257 (var349) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var349 var349)
(declare-const var160 var349) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var160 null-var349)))
(define-const var3633 String (sb/-603474257 var160)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var7 String (toString/-2075883882 var3633)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var349=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var160=r0, var3633=$r1, var7=$r2}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var349, r0=var160, $r1=var3633, $r2=var7}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1