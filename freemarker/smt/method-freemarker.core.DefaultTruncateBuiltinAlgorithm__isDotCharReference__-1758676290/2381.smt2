(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1544 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1544 null-String)))
(assert true)
(define-const var1401 Int (length/-134980193 var1544)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("hellip") 
(assert (<= var1401 2)) ; Cond: $i0 <= 2 
(assert true)
(define-const var3594 Bool (= var1544 "hellip")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("hellip") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3594 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3993 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1544=r0, var425=null_type, var1401=$i0, var3594=$z0, var3993=$z3}
; {r0=var1544, null_type=var425, $i0=var1401, $z0=var3594, $z3=var3993}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 2 goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("hellip");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("hellip");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 4