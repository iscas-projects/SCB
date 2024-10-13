(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2520 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2520 null-String)))
(assert true)
(define-const var3969 Int (length/-134980193 var2520)) ; Statement: i6 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var30 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var921 Int (length/-134980193 var2520)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto $i1 = i6 & 2147483647 
(assert (>= var30 var921)) ; Cond: i7 >= $i0 
(define-const var3793 Int (bv2nat (bvand ((_ int2bv 64) var3969) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i6 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2520=r0, var1059=null_type, var3969=i6, var30=i7, var921=$i0, var3793=$i1}
; {r0=var2520, null_type=var1059, i6=var3969, i7=var30, $i0=var921, $i1=var3793}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i6 = virtualinvoke r0.<java.lang.String: int length()>();	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto $i1 = i6 & 2147483647;	$i1 = i6 & 2147483647;	return $i1
;block_num 3