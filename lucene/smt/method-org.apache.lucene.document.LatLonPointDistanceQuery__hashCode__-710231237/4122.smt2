(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort var2140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var2140) Int)
(declare-fun cast-from-var3349-to-var2140 (var3349) var2140)
(declare-fun field/1476262732 (var3349) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun latitude/1476262732 (var3349) Float64)
(declare-fun Float64_doubleToLongBits/-1740438749 (Float64) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun longitude/1476262732 (var3349) Float64)
(declare-fun radiusMeters/1476262732 (var3349) Float64)
(declare-const null-var3349 var3349)
(declare-const var3445 var3349) ; Statement: r0 := @this: org.apache.lucene.document.LatLonPointDistanceQuery 
(assert (not (= var3445 null-var3349)))
(assert true)
(define-const var1350 Int (classHash/2131464770 (cast-from-var3349-to-var2140 var3445))) ; Statement: i14 = virtualinvoke r0.<org.apache.lucene.document.LatLonPointDistanceQuery: int classHash()>() 
(define-const var3578 Int (* 31 var1350)) ; Statement: $i1 = 31 * i14 
(define-const var1995 String (field/1476262732 var3445)) ; Statement: $r1 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field> 
(assert true)
(define-const var1797 Int (hashCode/-467973558 var1995)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1938 Int (+ var3578 var1797)) ; Statement: i15 = $i1 + $i0 
(define-const var3738 Float64 (latitude/1476262732 var3445)) ; Statement: $d0 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude> 
(define-const var704 Int (Float64_doubleToLongBits/-1740438749 var3738)) ; Statement: l16 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d0) 
(define-const var2661 Int (* 31 var1938)) ; Statement: $i5 = 31 * i15 
(define-const var1029 Int (div var704 (to_int (^ 2 32)))) ; Statement: $l2 = l16 >>> 32 
(define-const var1873 Int (bv2nat (bvxor ((_ int2bv 64) var704) ((_ int2bv 64) var1029)))) ; Statement: $l3 = l16 ^ $l2 
(define-const var539 Int (cast-from-Int-to-Int var1873)) ; Statement: $i4 = (int) $l3 
(define-const var607 Int (+ var2661 var539)) ; Statement: i17 = $i5 + $i4 
(define-const var3379 Float64 (longitude/1476262732 var3445)) ; Statement: $d1 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double longitude> 
(define-const var495 Int (Float64_doubleToLongBits/-1740438749 var3379)) ; Statement: l18 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d1) 
(define-const var399 Int (* 31 var607)) ; Statement: $i9 = 31 * i17 
(define-const var2546 Int (div var495 (to_int (^ 2 32)))) ; Statement: $l6 = l18 >>> 32 
(define-const var1627 Int (bv2nat (bvxor ((_ int2bv 64) var495) ((_ int2bv 64) var2546)))) ; Statement: $l7 = l18 ^ $l6 
(define-const var1172 Int (cast-from-Int-to-Int var1627)) ; Statement: $i8 = (int) $l7 
(define-const var3769 Int (+ var399 var1172)) ; Statement: i19 = $i9 + $i8 
(define-const var3040 Float64 (radiusMeters/1476262732 var3445)) ; Statement: $d2 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double radiusMeters> 
(define-const var454 Int (Float64_doubleToLongBits/-1740438749 var3040)) ; Statement: l20 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d2) 
(define-const var3590 Int (* 31 var3769)) ; Statement: $i13 = 31 * i19 
(define-const var2728 Int (div var454 (to_int (^ 2 32)))) ; Statement: $l10 = l20 >>> 32 
(define-const var3538 Int (bv2nat (bvxor ((_ int2bv 64) var454) ((_ int2bv 64) var2728)))) ; Statement: $l11 = l20 ^ $l10 
(define-const var294 Int (cast-from-Int-to-Int var3538)) ; Statement: $i12 = (int) $l11 
(define-const var3967 Int (+ var3590 var294)) ; Statement: i21 = $i13 + $i12 
 ; Statement: return i21 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var3349-to-var2140=([org.apache.lucene.document.LatLonPointDistanceQuery], org.apache.lucene.search.Query), field/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), latitude/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double), Float64_doubleToLongBits/-1740438749=([double], long), cast-from-Int-to-Int=([long], int), longitude/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double), radiusMeters/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double)}
; {var3349=org.apache.lucene.document.LatLonPointDistanceQuery, var3445=r0, var2140=org.apache.lucene.search.Query, var1350=i14, var3578=$i1, var1995=$r1, var1797=$i0, var1938=i15, var3738=$d0, var704=l16, var2661=$i5, var1029=$l2, var1873=$l3, var539=$i4, var607=i17, var3379=$d1, var495=l18, var399=$i9, var2546=$l6, var1627=$l7, var1172=$i8, var3769=i19, var3040=$d2, var454=l20, var3590=$i13, var2728=$l10, var3538=$l11, var294=$i12, var3967=i21}
; {org.apache.lucene.document.LatLonPointDistanceQuery=var3349, r0=var3445, org.apache.lucene.search.Query=var2140, i14=var1350, $i1=var3578, $r1=var1995, $i0=var1797, i15=var1938, $d0=var3738, l16=var704, $i5=var2661, $l2=var1029, $l3=var1873, $i4=var539, i17=var607, $d1=var3379, l18=var495, $i9=var399, $l6=var2546, $l7=var1627, $i8=var1172, i19=var3769, $d2=var3040, l20=var454, $i13=var3590, $l10=var2728, $l11=var3538, $i12=var294, i21=var3967}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LatLonPointDistanceQuery;	i14 = virtualinvoke r0.<org.apache.lucene.document.LatLonPointDistanceQuery: int classHash()>();	$i1 = 31 * i14;	$r1 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i15 = $i1 + $i0;	$d0 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude>;	l16 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d0);	$i5 = 31 * i15;	$l2 = l16 >>> 32;	$l3 = l16 ^ $l2;	$i4 = (int) $l3;	i17 = $i5 + $i4;	$d1 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double longitude>;	l18 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d1);	$i9 = 31 * i17;	$l6 = l18 >>> 32;	$l7 = l18 ^ $l6;	$i8 = (int) $l7;	i19 = $i9 + $i8;	$d2 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: double radiusMeters>;	l20 = staticinvoke <java.lang.Double: long doubleToLongBits(double)>($d2);	$i13 = 31 * i19;	$l10 = l20 >>> 32;	$l11 = l20 ^ $l10;	$i12 = (int) $l11;	i21 = $i13 + $i12;	return i21
;block_num 1