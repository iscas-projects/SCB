(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var1449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1449-STRING_SHALLOW_SIZE Int)
(declare-const var2566 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2566 null-String)))
(define-const var1284 Int var1449-STRING_SHALLOW_SIZE) ; Statement: $l0 = <org.apache.lucene.index.FieldUpdatesBuffer: long STRING_SHALLOW_SIZE> 
(assert true)
(define-const var1205 Int (length/-134980193 var2566)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2049 Int (cast-from-Int-to-Int var1205)) ; Statement: $l2 = (long) $i1 
(define-const var3671 Int (* var2049 2)) ; Statement: $l3 = $l2 * 2L 
(define-const var3560 Int (+ var1284 var3671)) ; Statement: $l4 = $l0 + $l3 
 ; Statement: return $l4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var2566=r0, var2015=null_type, var1449=org.apache.lucene.index.FieldUpdatesBuffer, var1284=$l0, var1205=$i1, var2049=$l2, var3671=$l3, var3560=$l4}
; {r0=var2566, null_type=var2015, org.apache.lucene.index.FieldUpdatesBuffer=var1449, $l0=var1284, $i1=var1205, $l2=var2049, $l3=var3671, $l4=var3560}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$l0 = <org.apache.lucene.index.FieldUpdatesBuffer: long STRING_SHALLOW_SIZE>;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$l2 = (long) $i1;	$l3 = $l2 * 2L;	$l4 = $l0 + $l3;	return $l4
;block_num 1