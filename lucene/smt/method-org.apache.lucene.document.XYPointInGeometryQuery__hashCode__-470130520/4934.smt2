(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2689 0)
(declare-sort var1263 0)
(declare-sort var1039 0)
(declare-sort var734 0)
(declare-sort var2007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1263) Int)
(declare-fun cast-from-var2689-to-var1263 (var2689) var1263)
(declare-fun field/1318910271 (var2689) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun xyGeometries/1318910271 (var2689) (Array Int var1039))
(declare-fun var734_hashCode/1826207050 ((Array Int var2007)) Int)
(declare-fun cast-from-__Array__Int__var1039__-to-__Array__Int__var2007__ ((Array Int var1039)) (Array Int var2007))
(declare-const null-var2689 var2689)
(declare-const var3986 var2689) ; Statement: r0 := @this: org.apache.lucene.document.XYPointInGeometryQuery 
(assert (not (= var3986 null-var2689)))
(assert true)
(define-const var1851 Int (classHash/2131464770 (cast-from-var2689-to-var1263 var3986))) ; Statement: i4 = virtualinvoke r0.<org.apache.lucene.document.XYPointInGeometryQuery: int classHash()>() 
(define-const var1538 Int (* 31 var1851)) ; Statement: $i1 = 31 * i4 
(define-const var187 String (field/1318910271 var3986)) ; Statement: $r1 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field> 
(assert true)
(define-const var3854 Int (hashCode/-467973558 var187)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3354 Int (+ var1538 var3854)) ; Statement: i5 = $i1 + $i0 
(define-const var909 Int (* 31 var3354)) ; Statement: $i3 = 31 * i5 
(define-const var1335 (Array Int var1039) (xyGeometries/1318910271 var3986)) ; Statement: $r2 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries> 
(define-const var2757 Int (var734_hashCode/1826207050 (cast-from-__Array__Int__var1039__-to-__Array__Int__var2007__ var1335))) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2) 
(define-const var821 Int (+ var909 var2757)) ; Statement: i6 = $i3 + $i2 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var2689-to-var1263=([org.apache.lucene.document.XYPointInGeometryQuery], org.apache.lucene.search.Query), field/1318910271=([org.apache.lucene.document.XYPointInGeometryQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), xyGeometries/1318910271=([org.apache.lucene.document.XYPointInGeometryQuery], org.apache.lucene.geo.XYGeometry[]), var734_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__var1039__-to-__Array__Int__var2007__=([org.apache.lucene.geo.XYGeometry[]], java.lang.Object[])}
; {var2689=org.apache.lucene.document.XYPointInGeometryQuery, var3986=r0, var1263=org.apache.lucene.search.Query, var1851=i4, var1538=$i1, var187=$r1, var3854=$i0, var3354=i5, var909=$i3, var1039=org.apache.lucene.geo.XYGeometry, var1335=$r2, var734=java.util.Arrays, var2007=java.lang.Object, var2757=$i2, var821=i6}
; {org.apache.lucene.document.XYPointInGeometryQuery=var2689, r0=var3986, org.apache.lucene.search.Query=var1263, i4=var1851, $i1=var1538, $r1=var187, $i0=var3854, i5=var3354, $i3=var909, org.apache.lucene.geo.XYGeometry=var1039, $r2=var1335, java.util.Arrays=var734, java.lang.Object=var2007, $i2=var2757, i6=var821}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.XYPointInGeometryQuery;	i4 = virtualinvoke r0.<org.apache.lucene.document.XYPointInGeometryQuery: int classHash()>();	$i1 = 31 * i4;	$r1 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i5 = $i1 + $i0;	$i3 = 31 * i5;	$r2 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2);	i6 = $i3 + $i2;	return i6
;block_num 1