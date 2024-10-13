(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var992 0)
(declare-sort var818 0)
(declare-sort var379 0)
(declare-sort var3550 0)
(declare-sort var1191 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var992) Int)
(declare-fun cast-from-var276-to-var992 (var276) var992)
(declare-fun field/-856791529 (var276) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun queryRelation/-856791529 (var276) var818)
(declare-fun hashCode/385986394 (var379) Int)
(declare-fun cast-from-var818-to-var379 (var818) var379)
(declare-fun geometries/-856791529 (var276) (Array Int var3550))
(declare-fun var1191_hashCode/1826207050 ((Array Int var3419)) Int)
(declare-fun cast-from-__Array__Int__var3550__-to-__Array__Int__var3419__ ((Array Int var3550)) (Array Int var3419))
(declare-const null-var276 var276)
(declare-const var1935 var276) ; Statement: r0 := @this: org.apache.lucene.document.LatLonDocValuesQuery 
(assert (not (= var1935 null-var276)))
(assert true)
(define-const var3427 Int (classHash/2131464770 (cast-from-var276-to-var992 var1935))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.LatLonDocValuesQuery: int classHash()>() 
(define-const var126 Int (* 31 var3427)) ; Statement: $i1 = 31 * i6 
(define-const var1148 String (field/-856791529 var1935)) ; Statement: $r1 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: java.lang.String field> 
(assert true)
(define-const var1354 Int (hashCode/-467973558 var1148)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2544 Int (+ var126 var1354)) ; Statement: i7 = $i1 + $i0 
(define-const var479 Int (* 31 var2544)) ; Statement: $i3 = 31 * i7 
(define-const var2776 var818 (queryRelation/-856791529 var1935)) ; Statement: $r2 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation> 
(assert true)
(define-const var3105 Int (hashCode/385986394 (cast-from-var818-to-var379 var2776))) ; Statement: $i2 = virtualinvoke $r2.<org.apache.lucene.document.ShapeField$QueryRelation: int hashCode()>() 
(define-const var741 Int (+ var479 var3105)) ; Statement: i8 = $i3 + $i2 
(define-const var3044 Int (* 31 var741)) ; Statement: $i5 = 31 * i8 
(define-const var3313 (Array Int var3550) (geometries/-856791529 var1935)) ; Statement: $r3 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.geo.LatLonGeometry[] geometries> 
(define-const var84 Int (var1191_hashCode/1826207050 (cast-from-__Array__Int__var3550__-to-__Array__Int__var3419__ var3313))) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3) 
(define-const var3240 Int (+ var3044 var84)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var276-to-var992=([org.apache.lucene.document.LatLonDocValuesQuery], org.apache.lucene.search.Query), field/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), queryRelation/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], org.apache.lucene.document.ShapeField$QueryRelation), hashCode/385986394=([java.lang.Enum], int), cast-from-var818-to-var379=([org.apache.lucene.document.ShapeField$QueryRelation], java.lang.Enum), geometries/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], org.apache.lucene.geo.LatLonGeometry[]), var1191_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__var3550__-to-__Array__Int__var3419__=([org.apache.lucene.geo.LatLonGeometry[]], java.lang.Object[])}
; {var276=org.apache.lucene.document.LatLonDocValuesQuery, var1935=r0, var992=org.apache.lucene.search.Query, var3427=i6, var126=$i1, var1148=$r1, var1354=$i0, var2544=i7, var479=$i3, var818=org.apache.lucene.document.ShapeField$QueryRelation, var2776=$r2, var379=java.lang.Enum, var3105=$i2, var741=i8, var3044=$i5, var3550=org.apache.lucene.geo.LatLonGeometry, var3313=$r3, var1191=java.util.Arrays, var3419=java.lang.Object, var84=$i4, var3240=i9}
; {org.apache.lucene.document.LatLonDocValuesQuery=var276, r0=var1935, org.apache.lucene.search.Query=var992, i6=var3427, $i1=var126, $r1=var1148, $i0=var1354, i7=var2544, $i3=var479, org.apache.lucene.document.ShapeField$QueryRelation=var818, $r2=var2776, java.lang.Enum=var379, $i2=var3105, i8=var741, $i5=var3044, org.apache.lucene.geo.LatLonGeometry=var3550, $r3=var3313, java.util.Arrays=var1191, java.lang.Object=var3419, $i4=var84, i9=var3240}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LatLonDocValuesQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.LatLonDocValuesQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation>;	$i2 = virtualinvoke $r2.<org.apache.lucene.document.ShapeField$QueryRelation: int hashCode()>();	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.geo.LatLonGeometry[] geometries>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1