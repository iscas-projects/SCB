(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3855 null-String)))
(define-const var1454 Int 0) ; Statement: i2 = 0 
(define-const var2755 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1267 Int (length/-134980193 var3855)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var2755 var1267)) ; Cond: i3 >= $i0 
 ; Statement: if i2 != 0 goto $z0 = 0 
(assert (not (not (= var1454 0)))) ; Negate: Cond: i2 != 0  
(define-const var1057 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3855=r0, var3257=null_type, var1454=i2, var2755=i3, var1267=$i0, var1057=$z0}
; {r0=var3855, null_type=var3257, i2=var1454, i3=var2755, $i0=var1267, $z0=var1057}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	if i2 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 5