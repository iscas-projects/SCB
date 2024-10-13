(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3445 0)
(declare-sort var3859 0)
(declare-sort var794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3445 var3445)
(declare-const null-String String)
(declare-const null-var794 var794)
(declare-const var3445-KEY_SESSION_CONNECT_ATTRS String)
(declare-const var3961 var3445) ; Statement: r3 := @this: com.mysql.cj.protocol.x.XServerCapabilities 
(assert (not (= var3961 null-var3445)))
(declare-const var3628 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3628 null-String)))
(declare-const var2945 var794) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2945 null-var794)))
(define-const var2509 String var3445-KEY_SESSION_CONNECT_ATTRS) ; Statement: $r1 = <com.mysql.cj.protocol.x.XServerCapabilities: java.lang.String KEY_SESSION_CONNECT_ATTRS> 
(assert true)
(define-const var1781 Bool (= var2509 var3628)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1781 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3445=com.mysql.cj.protocol.x.XServerCapabilities, var3961=r3, var3628=r0, var3859=null_type, var794=java.lang.Object, var2945=r4, var2509=$r1, var1781=$z0}
; {com.mysql.cj.protocol.x.XServerCapabilities=var3445, r3=var3961, r0=var3628, null_type=var3859, java.lang.Object=var794, r4=var2945, $r1=var2509, $z0=var1781}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.mysql.cj.protocol.x.XServerCapabilities;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object;	$r1 = <com.mysql.cj.protocol.x.XServerCapabilities: java.lang.String KEY_SESSION_CONNECT_ATTRS>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return;	return
;block_num 2