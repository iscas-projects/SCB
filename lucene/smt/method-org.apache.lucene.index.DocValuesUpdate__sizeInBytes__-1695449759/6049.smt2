(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var3755 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun term/214032625 (var3134) var3755)
(declare-fun field/907437598 (var3755) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun bytes/907437598 (var3755) var961)
(declare-fun bytes/727234302 (var961) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun field/214032625 (var3134) String)
(declare-fun valueSizeInBytes/-92836736 (var3134) Int)
(declare-const null-var3134 var3134)
(declare-const var3134-RAW_SIZE_IN_BYTES Int)
(declare-const var3006 var3134) ; Statement: r0 := @this: org.apache.lucene.index.DocValuesUpdate 
(assert (not (= var3006 null-var3134)))
(define-const var1991 Int var3134-RAW_SIZE_IN_BYTES) ; Statement: $i0 = <org.apache.lucene.index.DocValuesUpdate: int RAW_SIZE_IN_BYTES> 
(define-const var1802 Int (cast-from-Int-to-Int var1991)) ; Statement: l10 = (long) $i0 
(define-const var687 var3755 (term/214032625 var3006)) ; Statement: $r1 = r0.<org.apache.lucene.index.DocValuesUpdate: org.apache.lucene.index.Term term> 
(define-const var1152 String (field/907437598 var687)) ; Statement: $r2 = $r1.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var1902 Int (length/-134980193 var1152)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var402 Int (cast-from-Int-to-Int var1902)) ; Statement: $l2 = (long) $i1 
(define-const var1915 Int (* var402 2)) ; Statement: $l3 = $l2 * 2L 
(define-const var1262 Int (+ var1802 var1915)) ; Statement: l11 = l10 + $l3 
(define-const var754 var3755 (term/214032625 var3006)) ; Statement: $r3 = r0.<org.apache.lucene.index.DocValuesUpdate: org.apache.lucene.index.Term term> 
(define-const var2433 var961 (bytes/907437598 var754)) ; Statement: $r4 = $r3.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(define-const var2802 (Array Int Int) (bytes/727234302 var2433)) ; Statement: $r5 = $r4.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var1845 Int (getLength-Arr-Int-1 var2802)) ; Statement: $i4 = lengthof $r5 
(define-const var3917 Int (cast-from-Int-to-Int var1845)) ; Statement: $l5 = (long) $i4 
(define-const var2870 Int (+ var1262 var3917)) ; Statement: l12 = l11 + $l5 
(define-const var3235 String (field/214032625 var3006)) ; Statement: $r6 = r0.<org.apache.lucene.index.DocValuesUpdate: java.lang.String field> 
(assert true)
(define-const var1294 Int (length/-134980193 var3235)) ; Statement: $i6 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var2610 Int (cast-from-Int-to-Int var1294)) ; Statement: $l7 = (long) $i6 
(define-const var3990 Int (* var2610 2)) ; Statement: $l8 = $l7 * 2L 
(define-const var3955 Int (+ var2870 var3990)) ; Statement: l13 = l12 + $l8 
(assert true)
(define-const var2625 Int (valueSizeInBytes/-92836736 var3006)) ; Statement: $l9 = virtualinvoke r0.<org.apache.lucene.index.DocValuesUpdate: long valueSizeInBytes()>() 
(define-const var2770 Int (+ var3955 var2625)) ; Statement: l14 = l13 + $l9 
(define-const var3643 Int (+ var2770 1)) ; Statement: l15 = l14 + 1L 
 ; Statement: return l15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], long), term/214032625=([org.apache.lucene.index.DocValuesUpdate], org.apache.lucene.index.Term), field/907437598=([org.apache.lucene.index.Term], java.lang.String), length/-134980193=([java.lang.String], int), bytes/907437598=([org.apache.lucene.index.Term], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), getLength-Arr-Int-1=([byte[]], int), field/214032625=([org.apache.lucene.index.DocValuesUpdate], java.lang.String), valueSizeInBytes/-92836736=([org.apache.lucene.index.DocValuesUpdate], long)}
; {var3134=org.apache.lucene.index.DocValuesUpdate, var3006=r0, var1991=$i0, var1802=l10, var3755=org.apache.lucene.index.Term, var687=$r1, var1152=$r2, var1902=$i1, var402=$l2, var1915=$l3, var1262=l11, var754=$r3, var961=org.apache.lucene.util.BytesRef, var2433=$r4, var2802=$r5, var1845=$i4, var3917=$l5, var2870=l12, var3235=$r6, var1294=$i6, var2610=$l7, var3990=$l8, var3955=l13, var2625=$l9, var2770=l14, var3643=l15}
; {org.apache.lucene.index.DocValuesUpdate=var3134, r0=var3006, $i0=var1991, l10=var1802, org.apache.lucene.index.Term=var3755, $r1=var687, $r2=var1152, $i1=var1902, $l2=var402, $l3=var1915, l11=var1262, $r3=var754, org.apache.lucene.util.BytesRef=var961, $r4=var2433, $r5=var2802, $i4=var1845, $l5=var3917, l12=var2870, $r6=var3235, $i6=var1294, $l7=var2610, $l8=var3990, l13=var3955, $l9=var2625, l14=var2770, l15=var3643}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.apache.lucene.index.DocValuesUpdate;	$i0 = <org.apache.lucene.index.DocValuesUpdate: int RAW_SIZE_IN_BYTES>;	l10 = (long) $i0;	$r1 = r0.<org.apache.lucene.index.DocValuesUpdate: org.apache.lucene.index.Term term>;	$r2 = $r1.<org.apache.lucene.index.Term: java.lang.String field>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	$l2 = (long) $i1;	$l3 = $l2 * 2L;	l11 = l10 + $l3;	$r3 = r0.<org.apache.lucene.index.DocValuesUpdate: org.apache.lucene.index.Term term>;	$r4 = $r3.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$r5 = $r4.<org.apache.lucene.util.BytesRef: byte[] bytes>;	$i4 = lengthof $r5;	$l5 = (long) $i4;	l12 = l11 + $l5;	$r6 = r0.<org.apache.lucene.index.DocValuesUpdate: java.lang.String field>;	$i6 = virtualinvoke $r6.<java.lang.String: int length()>();	$l7 = (long) $i6;	$l8 = $l7 * 2L;	l13 = l12 + $l8;	$l9 = virtualinvoke r0.<org.apache.lucene.index.DocValuesUpdate: long valueSizeInBytes()>();	l14 = l13 + $l9;	l15 = l14 + 1L;	return l15
;block_num 1