(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2352 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2352 null-String)))
(define-const var940 String "drop") ; Statement: $r1 = "drop" 
(assert true)
(define-const var436 Bool (= var940 var2352)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z5 = 1 
(assert (not (= (ite var436 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1219 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2352=r0, var3242=null_type, var940=$r1, var436=$z0, var1219=$z5}
; {r0=var2352, null_type=var3242, $r1=var940, $z0=var436, $z5=var1219}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "drop";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 3