(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var801 0)
(declare-sort var812 0)
(declare-sort var35 0)
(declare-sort var636 0)
(declare-sort var3195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var812) Int)
(declare-fun cast-from-var801-to-var812 (var801) var812)
(declare-fun field/-1137660579 (var801) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun geometries/-1137660579 (var801) (Array Int var35))
(declare-fun var636_hashCode/1826207050 ((Array Int var3195)) Int)
(declare-fun cast-from-__Array__Int__var35__-to-__Array__Int__var3195__ ((Array Int var35)) (Array Int var3195))
(declare-const null-var801 var801)
(declare-const var845 var801) ; Statement: r0 := @this: org.apache.lucene.document.XYDocValuesPointInGeometryQuery 
(assert (not (= var845 null-var801)))
(assert true)
(define-const var2868 Int (classHash/2131464770 (cast-from-var801-to-var812 var845))) ; Statement: i4 = virtualinvoke r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: int classHash()>() 
(define-const var985 Int (* 31 var2868)) ; Statement: $i1 = 31 * i4 
(define-const var2751 String (field/-1137660579 var845)) ; Statement: $r1 = r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: java.lang.String field> 
(assert true)
(define-const var1497 Int (hashCode/-467973558 var2751)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var838 Int (+ var985 var1497)) ; Statement: i5 = $i1 + $i0 
(define-const var3182 Int (* 31 var838)) ; Statement: $i3 = 31 * i5 
(define-const var2881 (Array Int var35) (geometries/-1137660579 var845)) ; Statement: $r2 = r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] geometries> 
(define-const var2899 Int (var636_hashCode/1826207050 (cast-from-__Array__Int__var35__-to-__Array__Int__var3195__ var2881))) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2) 
(define-const var3482 Int (+ var3182 var2899)) ; Statement: i6 = $i3 + $i2 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var801-to-var812=([org.apache.lucene.document.XYDocValuesPointInGeometryQuery], org.apache.lucene.search.Query), field/-1137660579=([org.apache.lucene.document.XYDocValuesPointInGeometryQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), geometries/-1137660579=([org.apache.lucene.document.XYDocValuesPointInGeometryQuery], org.apache.lucene.geo.XYGeometry[]), var636_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__var35__-to-__Array__Int__var3195__=([org.apache.lucene.geo.XYGeometry[]], java.lang.Object[])}
; {var801=org.apache.lucene.document.XYDocValuesPointInGeometryQuery, var845=r0, var812=org.apache.lucene.search.Query, var2868=i4, var985=$i1, var2751=$r1, var1497=$i0, var838=i5, var3182=$i3, var35=org.apache.lucene.geo.XYGeometry, var2881=$r2, var636=java.util.Arrays, var3195=java.lang.Object, var2899=$i2, var3482=i6}
; {org.apache.lucene.document.XYDocValuesPointInGeometryQuery=var801, r0=var845, org.apache.lucene.search.Query=var812, i4=var2868, $i1=var985, $r1=var2751, $i0=var1497, i5=var838, $i3=var3182, org.apache.lucene.geo.XYGeometry=var35, $r2=var2881, java.util.Arrays=var636, java.lang.Object=var3195, $i2=var2899, i6=var3482}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.XYDocValuesPointInGeometryQuery;	i4 = virtualinvoke r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: int classHash()>();	$i1 = 31 * i4;	$r1 = r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i5 = $i1 + $i0;	$i3 = 31 * i5;	$r2 = r0.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] geometries>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2);	i6 = $i3 + $i2;	return i6
;block_num 1