(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var509 0)
(declare-sort var3517 0)
(declare-sort var3444 0)
(declare-sort var2329 0)
(declare-sort var499 0)
(declare-sort var1536 0)
(declare-sort var3764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var3517) Int)
(declare-fun cast-from-var509-to-var3517 (var509) var3517)
(declare-fun field/-1847263103 (var509) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun queryRelation/-1847263103 (var509) var3444)
(declare-fun hashCode/385986394 (var2329) Int)
(declare-fun cast-from-var3444-to-var2329 (var3444) var2329)
(declare-fun geometries/-1847263103 (var509) (Array Int var499))
(declare-fun var1536_hashCode/1826207050 ((Array Int var3764)) Int)
(declare-fun cast-from-__Array__Int__var499__-to-__Array__Int__var3764__ ((Array Int var499)) (Array Int var3764))
(declare-const null-var509 var509)
(declare-const var77 var509) ; Statement: r0 := @this: org.apache.lucene.document.SpatialQuery 
(assert (not (= var77 null-var509)))
(assert true)
(define-const var2686 Int (classHash/2131464770 (cast-from-var509-to-var3517 var77))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.SpatialQuery: int classHash()>() 
(define-const var1644 Int (* 31 var2686)) ; Statement: $i1 = 31 * i6 
(define-const var1836 String (field/-1847263103 var77)) ; Statement: $r1 = r0.<org.apache.lucene.document.SpatialQuery: java.lang.String field> 
(assert true)
(define-const var508 Int (hashCode/-467973558 var1836)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var420 Int (+ var1644 var508)) ; Statement: i7 = $i1 + $i0 
(define-const var3539 Int (* 31 var420)) ; Statement: $i3 = 31 * i7 
(define-const var316 var3444 (queryRelation/-1847263103 var77)) ; Statement: $r2 = r0.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation> 
(assert true)
(define-const var2330 Int (hashCode/385986394 (cast-from-var3444-to-var2329 var316))) ; Statement: $i2 = virtualinvoke $r2.<org.apache.lucene.document.ShapeField$QueryRelation: int hashCode()>() 
(define-const var634 Int (+ var3539 var2330)) ; Statement: i8 = $i3 + $i2 
(define-const var3187 Int (* 31 var634)) ; Statement: $i5 = 31 * i8 
(define-const var451 (Array Int var499) (geometries/-1847263103 var77)) ; Statement: $r3 = r0.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.geo.Geometry[] geometries> 
(define-const var916 Int (var1536_hashCode/1826207050 (cast-from-__Array__Int__var499__-to-__Array__Int__var3764__ var451))) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3) 
(define-const var3609 Int (+ var3187 var916)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var509-to-var3517=([org.apache.lucene.document.SpatialQuery], org.apache.lucene.search.Query), field/-1847263103=([org.apache.lucene.document.SpatialQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), queryRelation/-1847263103=([org.apache.lucene.document.SpatialQuery], org.apache.lucene.document.ShapeField$QueryRelation), hashCode/385986394=([java.lang.Enum], int), cast-from-var3444-to-var2329=([org.apache.lucene.document.ShapeField$QueryRelation], java.lang.Enum), geometries/-1847263103=([org.apache.lucene.document.SpatialQuery], org.apache.lucene.geo.Geometry[]), var1536_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__var499__-to-__Array__Int__var3764__=([org.apache.lucene.geo.Geometry[]], java.lang.Object[])}
; {var509=org.apache.lucene.document.SpatialQuery, var77=r0, var3517=org.apache.lucene.search.Query, var2686=i6, var1644=$i1, var1836=$r1, var508=$i0, var420=i7, var3539=$i3, var3444=org.apache.lucene.document.ShapeField$QueryRelation, var316=$r2, var2329=java.lang.Enum, var2330=$i2, var634=i8, var3187=$i5, var499=org.apache.lucene.geo.Geometry, var451=$r3, var1536=java.util.Arrays, var3764=java.lang.Object, var916=$i4, var3609=i9}
; {org.apache.lucene.document.SpatialQuery=var509, r0=var77, org.apache.lucene.search.Query=var3517, i6=var2686, $i1=var1644, $r1=var1836, $i0=var508, i7=var420, $i3=var3539, org.apache.lucene.document.ShapeField$QueryRelation=var3444, $r2=var316, java.lang.Enum=var2329, $i2=var2330, i8=var634, $i5=var3187, org.apache.lucene.geo.Geometry=var499, $r3=var451, java.util.Arrays=var1536, java.lang.Object=var3764, $i4=var916, i9=var3609}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.SpatialQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.SpatialQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.SpatialQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation>;	$i2 = virtualinvoke $r2.<org.apache.lucene.document.ShapeField$QueryRelation: int hashCode()>();	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.geo.Geometry[] geometries>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1