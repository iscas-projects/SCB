(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Float64-1 ((Array Int Float64)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Float64__ (Array Int Float64))
(declare-const var2276 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2276 null-String)))
(declare-const var3523 (Array Int Float64)) ; Statement: r1 := @parameter1: double[] 
(assert (not (= var3523 null-__Array__Int__Float64__)))
(assert true)
;(assert (append/-1166366385 var2276 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2276!1 String)
(assert (str.prefixof var2276 var2276!1))
(define-const var2452 Int (getLength-Arr-Float64-1 var3523)) ; Statement: i0 = lengthof r1 
(define-const var2593 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var2593 var2452)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1166366385 var2276!1 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2276!2 String)
(assert (str.prefixof var2276!1 var2276!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Float64-1=([double[]], int)}
; {var2276=r0, var3523=r1, var2452=i0, var2593=i2}
; {r0=var2276, r1=var3523, i0=var2452, i2=var2593}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: double[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3