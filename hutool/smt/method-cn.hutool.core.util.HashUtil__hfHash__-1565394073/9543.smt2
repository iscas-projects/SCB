(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2894 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2894 null-String)))
(assert true)
(define-const var2528 Int (length/-134980193 var2894)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2035 Int 0) ; Statement: l7 = 0L 
(define-const var1761 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i0 goto $b1 = l7 cmp 0L 
(assert (>= var1761 var2528)) ; Cond: i8 >= i0 
(define-const var3442 Int (ite (> var2035 0) 1 (ite (< var2035 0) (- 1) 0))) ; Statement: $b1 = l7 cmp 0L 
(define-const var2244 Int (cast-from-Int-to-Int var3442)) ; Statement: $i9 = (int) $b1 
 ; Statement: if $i9 >= 0 goto return l7 
(assert (>= var2244 0)) ; Cond: $i9 >= 0 
 ; Statement: return l7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([byte], int)}
; {var2894=r0, var1961=null_type, var2528=i0, var2035=l7, var1761=i8, var3442=$b1, var2244=$i9}
; {r0=var2894, null_type=var1961, i0=var2528, l7=var2035, i8=var1761, $b1=var3442, $i9=var2244}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	l7 = 0L;	i8 = 0;	if i8 >= i0 goto $b1 = l7 cmp 0L;	$b1 = l7 cmp 0L;	$i9 = (int) $b1;	if $i9 >= 0 goto return l7;	return l7
;block_num 4