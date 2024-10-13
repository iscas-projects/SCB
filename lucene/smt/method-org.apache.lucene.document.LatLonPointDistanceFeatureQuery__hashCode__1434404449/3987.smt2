(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var516 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var208) Int)
(declare-fun cast-from-var516-to-var208 (var516) var208)
(declare-fun field/330831982 (var516) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun originLat/330831982 (var516) Float64)
(declare-fun Float64_hashCode/1486413403 (Float64) Int)
(declare-fun originLon/330831982 (var516) Float64)
(declare-fun pivotDistance/330831982 (var516) Float64)
(declare-const null-var516 var516)
(declare-const var558 var516) ; Statement: r0 := @this: org.apache.lucene.document.LatLonPointDistanceFeatureQuery 
(assert (not (= var558 null-var516)))
(assert true)
(define-const var3330 Int (classHash/2131464770 (cast-from-var516-to-var208 var558))) ; Statement: i8 = virtualinvoke r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: int classHash()>() 
(define-const var3152 Int (* 31 var3330)) ; Statement: $i1 = 31 * i8 
(define-const var3568 String (field/330831982 var558)) ; Statement: $r1 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: java.lang.String field> 
(assert true)
(define-const var2929 Int (hashCode/-467973558 var3568)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var161 Int (+ var3152 var2929)) ; Statement: i9 = $i1 + $i0 
(define-const var3602 Int (* 31 var161)) ; Statement: $i3 = 31 * i9 
(define-const var2506 Float64 (originLat/330831982 var558)) ; Statement: $d0 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double originLat> 
(define-const var1176 Int (Float64_hashCode/1486413403 var2506)) ; Statement: $i2 = staticinvoke <java.lang.Double: int hashCode(double)>($d0) 
(define-const var1522 Int (+ var3602 var1176)) ; Statement: i10 = $i3 + $i2 
(define-const var2490 Int (* 31 var1522)) ; Statement: $i5 = 31 * i10 
(define-const var3361 Float64 (originLon/330831982 var558)) ; Statement: $d1 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double originLon> 
(define-const var3441 Int (Float64_hashCode/1486413403 var3361)) ; Statement: $i4 = staticinvoke <java.lang.Double: int hashCode(double)>($d1) 
(define-const var675 Int (+ var2490 var3441)) ; Statement: i11 = $i5 + $i4 
(define-const var3642 Int (* 31 var675)) ; Statement: $i7 = 31 * i11 
(define-const var2561 Float64 (pivotDistance/330831982 var558)) ; Statement: $d2 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double pivotDistance> 
(define-const var3427 Int (Float64_hashCode/1486413403 var2561)) ; Statement: $i6 = staticinvoke <java.lang.Double: int hashCode(double)>($d2) 
(define-const var2579 Int (+ var3642 var3427)) ; Statement: i12 = $i7 + $i6 
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var516-to-var208=([org.apache.lucene.document.LatLonPointDistanceFeatureQuery], org.apache.lucene.search.Query), field/330831982=([org.apache.lucene.document.LatLonPointDistanceFeatureQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), originLat/330831982=([org.apache.lucene.document.LatLonPointDistanceFeatureQuery], double), Float64_hashCode/1486413403=([double], int), originLon/330831982=([org.apache.lucene.document.LatLonPointDistanceFeatureQuery], double), pivotDistance/330831982=([org.apache.lucene.document.LatLonPointDistanceFeatureQuery], double)}
; {var516=org.apache.lucene.document.LatLonPointDistanceFeatureQuery, var558=r0, var208=org.apache.lucene.search.Query, var3330=i8, var3152=$i1, var3568=$r1, var2929=$i0, var161=i9, var3602=$i3, var2506=$d0, var1176=$i2, var1522=i10, var2490=$i5, var3361=$d1, var3441=$i4, var675=i11, var3642=$i7, var2561=$d2, var3427=$i6, var2579=i12}
; {org.apache.lucene.document.LatLonPointDistanceFeatureQuery=var516, r0=var558, org.apache.lucene.search.Query=var208, i8=var3330, $i1=var3152, $r1=var3568, $i0=var2929, i9=var161, $i3=var3602, $d0=var2506, $i2=var1176, i10=var1522, $i5=var2490, $d1=var3361, $i4=var3441, i11=var675, $i7=var3642, $d2=var2561, $i6=var3427, i12=var2579}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LatLonPointDistanceFeatureQuery;	i8 = virtualinvoke r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: int classHash()>();	$i1 = 31 * i8;	$r1 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = $i1 + $i0;	$i3 = 31 * i9;	$d0 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double originLat>;	$i2 = staticinvoke <java.lang.Double: int hashCode(double)>($d0);	i10 = $i3 + $i2;	$i5 = 31 * i10;	$d1 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double originLon>;	$i4 = staticinvoke <java.lang.Double: int hashCode(double)>($d1);	i11 = $i5 + $i4;	$i7 = 31 * i11;	$d2 = r0.<org.apache.lucene.document.LatLonPointDistanceFeatureQuery: double pivotDistance>;	$i6 = staticinvoke <java.lang.Double: int hashCode(double)>($d2);	i12 = $i7 + $i6;	return i12
;block_num 1