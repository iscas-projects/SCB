(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3541 0)
(declare-sort var1952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1952-allBits String)
(declare-const var2319 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2319 null-String)))
(define-const var2824 String var1952-allBits) ; Statement: $r1 = <org.javacc.parser.NfaState: java.lang.String allBits> 
(assert true)
(define-const var2894 Bool (= var2319 var2824)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2319=r0, var3541=null_type, var1952=org.javacc.parser.NfaState, var2824=$r1, var2894=$z0}
; {r0=var2319, null_type=var3541, org.javacc.parser.NfaState=var1952, $r1=var2824, $z0=var2894}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.javacc.parser.NfaState: java.lang.String allBits>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1