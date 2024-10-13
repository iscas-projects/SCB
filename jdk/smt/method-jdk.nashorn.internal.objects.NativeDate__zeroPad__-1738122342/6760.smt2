(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var988 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var988 null-String)))
(declare-const var3019 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3019 null-Int)))
(declare-const var2562 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2562 null-Int)))
(define-const var1554 Int 1) ; Statement: i2 = 1 
(define-const var3367 Int 10) ; Statement: i3 = 10 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(assert (>= var1554 var2562)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1001720160 var988 var3019)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var988!1 String)
(assert (str.prefixof var988 var988!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var988=r0, var3019=i1, var2562=i0, var1554=i2, var3367=i3}
; {r0=var988, i1=var3019, i0=var2562, i2=var1554, i3=var3367}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i1 := @parameter1: int;	i0 := @parameter2: int;	i2 = 1;	i3 = 10;	if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	return
;block_num 3