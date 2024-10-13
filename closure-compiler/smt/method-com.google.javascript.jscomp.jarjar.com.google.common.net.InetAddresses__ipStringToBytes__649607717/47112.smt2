(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2766 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2766 null-String)))
(define-const var3004 String var2766) ; Statement: r3 = r0 
(define-const var178 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3175 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3500 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var835 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var3945 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1883 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var38 Int var1883) ; Statement: i3 = $i6 
(define-const var2531 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3741 Int (length/-134980193 var2766)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var2531 var3741)) ; Cond: i4 >= $i0 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var178 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z3 == 0 goto return null 
(assert (= (ite var835 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int)}
; {var2766=r0, var2548=null_type, var3004=r3, var178=z0, var3175=z1, var3500=z4, var835=z3, var3945=z2, var1883=$i6, var38=i3, var2531=i4, var3741=$i0}
; {r0=var2766, null_type=var2548, r3=var3004, z0=var178, z1=var3175, z4=var3500, z3=var835, z2=var3945, $i6=var1883, i3=var38, i4=var2531, $i0=var3741}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 = r0;	z0 = 0;	z1 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	$i6 = (int) -1;	i3 = $i6;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto (branch);	if z0 == 0 goto (branch);	if z3 == 0 goto return null;	return null
;block_num 5