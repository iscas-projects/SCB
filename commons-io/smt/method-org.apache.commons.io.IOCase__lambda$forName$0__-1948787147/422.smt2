(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var101 0)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/520233235 (var2400) String)
(declare-const null-String String)
(declare-const null-var2400 var2400)
(declare-const var778 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var778 null-String)))
(declare-const var896 var2400) ; Statement: r0 := @parameter1: org.apache.commons.io.IOCase 
(assert (not (= var896 null-var2400)))
(assert true)
(define-const var1773 String (getName/520233235 var896)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.io.IOCase: java.lang.String getName()>() 
(assert true)
(define-const var1752 Bool (= var1773 var778)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/520233235=([org.apache.commons.io.IOCase], java.lang.String)}
; {var778=r1, var101=null_type, var2400=org.apache.commons.io.IOCase, var896=r0, var1773=$r2, var1752=$z0}
; {r1=var778, null_type=var101, org.apache.commons.io.IOCase=var2400, r0=var896, $r2=var1773, $z0=var1752}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.commons.io.IOCase;	$r2 = virtualinvoke r0.<org.apache.commons.io.IOCase: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1