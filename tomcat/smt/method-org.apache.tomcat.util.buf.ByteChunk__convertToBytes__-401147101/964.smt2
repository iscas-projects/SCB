(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-String String)
(declare-const var3255 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3255 null-String)))
(assert true)
(define-const var501 Int (length/-134980193 var3255)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3332 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i0] 
(define-const var734 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2664 Int (length/-134980193 var3255)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto return r1 
(assert (>= var734 var2664)) ; Cond: i4 >= $i1 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[])}
; {var3255=r0, var3969=null_type, var501=$i0, var3332=r1, var734=i4, var2664=$i1}
; {r0=var3255, null_type=var3969, $i0=var501, r1=var3332, i4=var734, $i1=var2664}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (byte)[$i0];	i4 = 0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto return r1;	return r1
;block_num 3