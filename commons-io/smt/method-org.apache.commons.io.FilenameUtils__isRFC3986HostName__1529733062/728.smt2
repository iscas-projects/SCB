(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun split/848239037 (String String Int) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var3315 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3315 null-String)))
(define-const var3042 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(assert true)
(define-const var3708 (Array Int String) (split/848239037 var3315 "\u005c." var3042)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("\\.", $i5) 
(define-const var2850 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1419 Int (getLength-Arr-String-1 var3708)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto return 1 
(assert (>= var2850 var1419)) ; Cond: i3 >= $i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), split/848239037=([java.lang.String, java.lang.String, int], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3315=r0, var2399=null_type, var3042=$i5, var3708=r1, var2850=i3, var1419=$i0}
; {r0=var3315, null_type=var2399, $i5=var3042, r1=var3708, i3=var2850, $i0=var1419}
;seq <java.lang.String: java.lang.String[] split(java.lang.String,int)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i5 = (int) -1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("\\.", $i5);	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto return 1;	return 1
;block_num 3