(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var853 0)
(declare-sort var1255 0)
(declare-sort var3302 0)
(declare-sort var2723 0)
(declare-sort var2988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1255) Int)
(declare-fun cast-from-var853-to-var1255 (var853) var1255)
(declare-fun field/867041227 (var853) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun lowerPoint/867041227 (var853) (Array Int Int))
(declare-fun var3302_hashCode/-63010241 ((Array Int Int)) Int)
(declare-fun upperPoint/867041227 (var853) (Array Int Int))
(declare-fun numDims/867041227 (var853) Int)
(declare-fun bytesPerDim/867041227 (var853) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2723_hashCode/-1263732730 (var2988) Int)
(declare-fun cast-from-Int-to-var2988 (Int) var2988)
(declare-const null-var853 var853)
(declare-const var3555 var853) ; Statement: r0 := @this: org.apache.lucene.search.PointRangeQuery 
(assert (not (= var3555 null-var853)))
(assert true)
(define-const var668 Int (classHash/2131464770 (cast-from-var853-to-var1255 var3555))) ; Statement: i11 = virtualinvoke r0.<org.apache.lucene.search.PointRangeQuery: int classHash()>() 
(define-const var3947 Int (* 31 var668)) ; Statement: $i1 = 31 * i11 
(define-const var3777 String (field/867041227 var3555)) ; Statement: $r1 = r0.<org.apache.lucene.search.PointRangeQuery: java.lang.String field> 
(assert true)
(define-const var2608 Int (hashCode/-467973558 var3777)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1217 Int (+ var3947 var2608)) ; Statement: i12 = $i1 + $i0 
(define-const var1005 Int (* 31 var1217)) ; Statement: $i3 = 31 * i12 
(define-const var3935 (Array Int Int) (lowerPoint/867041227 var3555)) ; Statement: $r2 = r0.<org.apache.lucene.search.PointRangeQuery: byte[] lowerPoint> 
(define-const var543 Int (var3302_hashCode/-63010241 var3935)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r2) 
(define-const var2527 Int (+ var1005 var543)) ; Statement: i13 = $i3 + $i2 
(define-const var1537 Int (* 31 var2527)) ; Statement: $i5 = 31 * i13 
(define-const var1834 (Array Int Int) (upperPoint/867041227 var3555)) ; Statement: $r3 = r0.<org.apache.lucene.search.PointRangeQuery: byte[] upperPoint> 
(define-const var1725 Int (var3302_hashCode/-63010241 var1834)) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r3) 
(define-const var926 Int (+ var1537 var1725)) ; Statement: i14 = $i5 + $i4 
(define-const var3971 Int (* 31 var926)) ; Statement: $i7 = 31 * i14 
(define-const var3360 Int (numDims/867041227 var3555)) ; Statement: $i6 = r0.<org.apache.lucene.search.PointRangeQuery: int numDims> 
(define-const var2001 Int (+ var3971 var3360)) ; Statement: i15 = $i7 + $i6 
(define-const var1593 Int (* 31 var2001)) ; Statement: $i10 = 31 * i15 
(define-const var2483 Int (bytesPerDim/867041227 var3555)) ; Statement: $i8 = r0.<org.apache.lucene.search.PointRangeQuery: int bytesPerDim> 
(define-const var3978 Int (Int_valueOf/-1371140006 var2483)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i8) 
(define-const var3367 Int (var2723_hashCode/-1263732730 (cast-from-Int-to-var2988 var3978))) ; Statement: $i9 = staticinvoke <java.util.Objects: int hashCode(java.lang.Object)>($r4) 
(define-const var2108 Int (+ var1593 var3367)) ; Statement: i16 = $i10 + $i9 
 ; Statement: return i16 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var853-to-var1255=([org.apache.lucene.search.PointRangeQuery], org.apache.lucene.search.Query), field/867041227=([org.apache.lucene.search.PointRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), lowerPoint/867041227=([org.apache.lucene.search.PointRangeQuery], byte[]), var3302_hashCode/-63010241=([byte[]], int), upperPoint/867041227=([org.apache.lucene.search.PointRangeQuery], byte[]), numDims/867041227=([org.apache.lucene.search.PointRangeQuery], int), bytesPerDim/867041227=([org.apache.lucene.search.PointRangeQuery], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var2723_hashCode/-1263732730=([java.lang.Object], int), cast-from-Int-to-var2988=([java.lang.Integer], java.lang.Object)}
; {var853=org.apache.lucene.search.PointRangeQuery, var3555=r0, var1255=org.apache.lucene.search.Query, var668=i11, var3947=$i1, var3777=$r1, var2608=$i0, var1217=i12, var1005=$i3, var3935=$r2, var3302=java.util.Arrays, var543=$i2, var2527=i13, var1537=$i5, var1834=$r3, var1725=$i4, var926=i14, var3971=$i7, var3360=$i6, var2001=i15, var1593=$i10, var2483=$i8, var3978=$r4, var2723=java.util.Objects, var2988=java.lang.Object, var3367=$i9, var2108=i16}
; {org.apache.lucene.search.PointRangeQuery=var853, r0=var3555, org.apache.lucene.search.Query=var1255, i11=var668, $i1=var3947, $r1=var3777, $i0=var2608, i12=var1217, $i3=var1005, $r2=var3935, java.util.Arrays=var3302, $i2=var543, i13=var2527, $i5=var1537, $r3=var1834, $i4=var1725, i14=var926, $i7=var3971, $i6=var3360, i15=var2001, $i10=var1593, $i8=var2483, $r4=var3978, java.util.Objects=var2723, java.lang.Object=var2988, $i9=var3367, i16=var2108}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.search.PointRangeQuery;	i11 = virtualinvoke r0.<org.apache.lucene.search.PointRangeQuery: int classHash()>();	$i1 = 31 * i11;	$r1 = r0.<org.apache.lucene.search.PointRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i12 = $i1 + $i0;	$i3 = 31 * i12;	$r2 = r0.<org.apache.lucene.search.PointRangeQuery: byte[] lowerPoint>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r2);	i13 = $i3 + $i2;	$i5 = 31 * i13;	$r3 = r0.<org.apache.lucene.search.PointRangeQuery: byte[] upperPoint>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r3);	i14 = $i5 + $i4;	$i7 = 31 * i14;	$i6 = r0.<org.apache.lucene.search.PointRangeQuery: int numDims>;	i15 = $i7 + $i6;	$i10 = 31 * i15;	$i8 = r0.<org.apache.lucene.search.PointRangeQuery: int bytesPerDim>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i8);	$i9 = staticinvoke <java.util.Objects: int hashCode(java.lang.Object)>($r4);	i16 = $i10 + $i9;	return i16
;block_num 1