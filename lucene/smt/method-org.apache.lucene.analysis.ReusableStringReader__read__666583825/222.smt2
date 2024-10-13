(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3538 0)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-853829893 (var3538) Int)
(declare-fun size/-853829893 (var3538) Int)
(declare-fun s/-853829893 (var3538) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3538 var3538)
(declare-const null-String String)
(declare-const var465 var3538) ; Statement: r0 := @this: org.apache.lucene.analysis.ReusableStringReader 
(assert (not (= var465 null-var3538)))
(define-const var3599 Int (pos/-853829893 var465)) ; Statement: $i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var2634 Int (size/-853829893 var465)) ; Statement: $i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size> 
 ; Statement: if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(assert (>= var3599 var2634)) ; Cond: $i1 >= $i0 
(declare-const var465!1 var3538)
(assert (not (= var465!1 null-var3538)))
(assert (= (s/-853829893 var465!1) null-String)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(define-const var2462 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), size/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), s/-853829893=([org.apache.lucene.analysis.ReusableStringReader], java.lang.String), cast-from-Int-to-Int=([int], int)}
; {var3538=org.apache.lucene.analysis.ReusableStringReader, var465=r0, var3599=$i1, var2634=$i0, var3601=null_type, var2462=$i7}
; {org.apache.lucene.analysis.ReusableStringReader=var3538, r0=var465, $i1=var3599, $i0=var2634, null_type=var3601, $i7=var2462}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.lucene.analysis.ReusableStringReader;	$i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size>;	if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	$i7 = (int) -1;	return $i7
;block_num 2