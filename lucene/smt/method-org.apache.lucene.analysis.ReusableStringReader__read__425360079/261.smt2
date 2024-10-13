(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2824 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-853829893 (var2824) Int)
(declare-fun size/-853829893 (var2824) Int)
(declare-fun s/-853829893 (var2824) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2824 var2824)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1313 var2824) ; Statement: r0 := @this: org.apache.lucene.analysis.ReusableStringReader 
(assert (not (= var1313 null-var2824)))
(declare-const var1845 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1845 null-__Array__Int__Int__)))
(declare-const var1314 Int) ; Statement: i6 := @parameter1: int 
(assert (not (= var1314 null-Int)))
(declare-const var3973 Int) ; Statement: i11 := @parameter2: int 
(assert (not (= var3973 null-Int)))
(define-const var179 Int (pos/-853829893 var1313)) ; Statement: $i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var3102 Int (size/-853829893 var1313)) ; Statement: $i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size> 
 ; Statement: if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(assert (>= var179 var3102)) ; Cond: $i1 >= $i0 
(declare-const var1313!1 var2824)
(assert (not (= var1313!1 null-var2824)))
(assert (= (s/-853829893 var1313!1) null-String)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(define-const var3776 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: return $i14 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), size/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), s/-853829893=([org.apache.lucene.analysis.ReusableStringReader], java.lang.String), cast-from-Int-to-Int=([int], int)}
; {var2824=org.apache.lucene.analysis.ReusableStringReader, var1313=r0, var1845=r1, var1314=i6, var3973=i11, var179=$i1, var3102=$i0, var2700=null_type, var3776=$i14}
; {org.apache.lucene.analysis.ReusableStringReader=var2824, r0=var1313, r1=var1845, i6=var1314, i11=var3973, $i1=var179, $i0=var3102, null_type=var2700, $i14=var3776}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.lucene.analysis.ReusableStringReader;	r1 := @parameter0: char[];	i6 := @parameter1: int;	i11 := @parameter2: int;	$i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size>;	if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	$i14 = (int) -1;	return $i14
;block_num 2