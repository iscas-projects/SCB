(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2292 0)
(declare-sort var3062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var3062) Int)
(declare-fun cast-from-var2292-to-var3062 (var2292) var3062)
(declare-fun field/-543217653 (var2292) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sortedPackedPointsHashCode/-543217653 (var2292) Int)
(declare-fun numDims/-543217653 (var2292) Int)
(declare-fun bytesPerDim/-543217653 (var2292) Int)
(declare-const null-var2292 var2292)
(declare-const var3744 var2292) ; Statement: r0 := @this: org.apache.lucene.search.PointInSetQuery 
(assert (not (= var3744 null-var2292)))
(assert true)
(define-const var534 Int (classHash/2131464770 (cast-from-var2292-to-var3062 var3744))) ; Statement: i8 = virtualinvoke r0.<org.apache.lucene.search.PointInSetQuery: int classHash()>() 
(define-const var1318 Int (* 31 var534)) ; Statement: $i1 = 31 * i8 
(define-const var264 String (field/-543217653 var3744)) ; Statement: $r1 = r0.<org.apache.lucene.search.PointInSetQuery: java.lang.String field> 
(assert true)
(define-const var2740 Int (hashCode/-467973558 var264)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var901 Int (+ var1318 var2740)) ; Statement: i9 = $i1 + $i0 
(define-const var634 Int (* 31 var901)) ; Statement: $i3 = 31 * i9 
(define-const var3919 Int (sortedPackedPointsHashCode/-543217653 var3744)) ; Statement: $i2 = r0.<org.apache.lucene.search.PointInSetQuery: int sortedPackedPointsHashCode> 
(define-const var2727 Int (+ var634 var3919)) ; Statement: i10 = $i3 + $i2 
(define-const var3140 Int (* 31 var2727)) ; Statement: $i5 = 31 * i10 
(define-const var142 Int (numDims/-543217653 var3744)) ; Statement: $i4 = r0.<org.apache.lucene.search.PointInSetQuery: int numDims> 
(define-const var3811 Int (+ var3140 var142)) ; Statement: i11 = $i5 + $i4 
(define-const var3709 Int (* 31 var3811)) ; Statement: $i7 = 31 * i11 
(define-const var1302 Int (bytesPerDim/-543217653 var3744)) ; Statement: $i6 = r0.<org.apache.lucene.search.PointInSetQuery: int bytesPerDim> 
(define-const var3584 Int (+ var3709 var1302)) ; Statement: i12 = $i7 + $i6 
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var2292-to-var3062=([org.apache.lucene.search.PointInSetQuery], org.apache.lucene.search.Query), field/-543217653=([org.apache.lucene.search.PointInSetQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), sortedPackedPointsHashCode/-543217653=([org.apache.lucene.search.PointInSetQuery], int), numDims/-543217653=([org.apache.lucene.search.PointInSetQuery], int), bytesPerDim/-543217653=([org.apache.lucene.search.PointInSetQuery], int)}
; {var2292=org.apache.lucene.search.PointInSetQuery, var3744=r0, var3062=org.apache.lucene.search.Query, var534=i8, var1318=$i1, var264=$r1, var2740=$i0, var901=i9, var634=$i3, var3919=$i2, var2727=i10, var3140=$i5, var142=$i4, var3811=i11, var3709=$i7, var1302=$i6, var3584=i12}
; {org.apache.lucene.search.PointInSetQuery=var2292, r0=var3744, org.apache.lucene.search.Query=var3062, i8=var534, $i1=var1318, $r1=var264, $i0=var2740, i9=var901, $i3=var634, $i2=var3919, i10=var2727, $i5=var3140, $i4=var142, i11=var3811, $i7=var3709, $i6=var1302, i12=var3584}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.search.PointInSetQuery;	i8 = virtualinvoke r0.<org.apache.lucene.search.PointInSetQuery: int classHash()>();	$i1 = 31 * i8;	$r1 = r0.<org.apache.lucene.search.PointInSetQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = $i1 + $i0;	$i3 = 31 * i9;	$i2 = r0.<org.apache.lucene.search.PointInSetQuery: int sortedPackedPointsHashCode>;	i10 = $i3 + $i2;	$i5 = 31 * i10;	$i4 = r0.<org.apache.lucene.search.PointInSetQuery: int numDims>;	i11 = $i5 + $i4;	$i7 = 31 * i11;	$i6 = r0.<org.apache.lucene.search.PointInSetQuery: int bytesPerDim>;	i12 = $i7 + $i6;	return i12
;block_num 1