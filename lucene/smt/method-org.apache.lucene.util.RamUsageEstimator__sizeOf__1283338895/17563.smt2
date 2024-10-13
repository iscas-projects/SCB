(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1374 0)
(declare-sort var1287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1287_alignObjectSize/1970193871 (Int) Int)
(declare-const null-String String)
(declare-const var1287-STRING_SIZE Int)
(declare-const var1287-NUM_BYTES_ARRAY_HEADER Int)
(declare-const var2156 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2156 null-String)))
 ; Statement: if r0 != null goto $i0 = <org.apache.lucene.util.RamUsageEstimator: int STRING_SIZE> 
(assert (not (= var2156 null-String))) ; Cond: r0 != null 
(define-const var3262 Int var1287-STRING_SIZE) ; Statement: $i0 = <org.apache.lucene.util.RamUsageEstimator: int STRING_SIZE> 
(define-const var654 Int (cast-from-Int-to-Int var3262)) ; Statement: $l3 = (long) $i0 
(define-const var1106 Int var1287-NUM_BYTES_ARRAY_HEADER) ; Statement: $i1 = <org.apache.lucene.util.RamUsageEstimator: int NUM_BYTES_ARRAY_HEADER> 
(define-const var3369 Int (cast-from-Int-to-Int var1106)) ; Statement: $l2 = (long) $i1 
(define-const var399 Int (+ var654 var3369)) ; Statement: $l7 = $l3 + $l2 
(assert true)
(define-const var3222 Int (length/-134980193 var2156)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var94 Int (cast-from-Int-to-Int var3222)) ; Statement: $l5 = (long) $i4 
(define-const var34 Int (* 2 var94)) ; Statement: $l6 = 2L * $l5 
(define-const var1643 Int (+ var399 var34)) ; Statement: l8 = $l7 + $l6 
(define-const var255 Int (var1287_alignObjectSize/1970193871 var1643)) ; Statement: $l9 = staticinvoke <org.apache.lucene.util.RamUsageEstimator: long alignObjectSize(long)>(l8) 
 ; Statement: return $l9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], long), length/-134980193=([java.lang.String], int), var1287_alignObjectSize/1970193871=([long], long)}
; {var2156=r0, var1374=null_type, var1287=org.apache.lucene.util.RamUsageEstimator, var3262=$i0, var654=$l3, var1106=$i1, var3369=$l2, var399=$l7, var3222=$i4, var94=$l5, var34=$l6, var1643=l8, var255=$l9}
; {r0=var2156, null_type=var1374, org.apache.lucene.util.RamUsageEstimator=var1287, $i0=var3262, $l3=var654, $i1=var1106, $l2=var3369, $l7=var399, $i4=var3222, $l5=var94, $l6=var34, l8=var1643, $l9=var255}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = <org.apache.lucene.util.RamUsageEstimator: int STRING_SIZE>;	$i0 = <org.apache.lucene.util.RamUsageEstimator: int STRING_SIZE>;	$l3 = (long) $i0;	$i1 = <org.apache.lucene.util.RamUsageEstimator: int NUM_BYTES_ARRAY_HEADER>;	$l2 = (long) $i1;	$l7 = $l3 + $l2;	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	$l5 = (long) $i4;	$l6 = 2L * $l5;	l8 = $l7 + $l6;	$l9 = staticinvoke <org.apache.lucene.util.RamUsageEstimator: long alignObjectSize(long)>(l8);	return $l9
;block_num 2