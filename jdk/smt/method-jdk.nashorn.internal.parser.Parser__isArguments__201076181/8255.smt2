(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var2643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2643-ARGUMENTS_NAME String)
(declare-const var3727 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3727 null-String)))
(define-const var257 String var2643-ARGUMENTS_NAME) ; Statement: $r1 = <jdk.nashorn.internal.parser.Parser: java.lang.String ARGUMENTS_NAME> 
(assert true)
(define-const var2607 Bool (= var257 var3727)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3727=r0, var3424=null_type, var2643=jdk.nashorn.internal.parser.Parser, var257=$r1, var2607=$z0}
; {r0=var3727, null_type=var3424, jdk.nashorn.internal.parser.Parser=var2643, $r1=var257, $z0=var2607}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <jdk.nashorn.internal.parser.Parser: java.lang.String ARGUMENTS_NAME>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	return $z0
;block_num 1