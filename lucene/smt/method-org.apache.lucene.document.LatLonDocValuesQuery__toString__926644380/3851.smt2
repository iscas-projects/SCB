(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var2395 0)
(declare-sort var351 0)
(declare-sort var3535 0)
(declare-sort var3305 0)
(declare-sort var840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-856791529 (var3739) String)
(declare-fun queryRelation/-856791529 (var3739) var351)
(declare-fun append/-1031950772 (String var3535) String)
(declare-fun cast-from-var351-to-var3535 (var351) var3535)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun geometries/-856791529 (var3739) (Array Int var3305))
(declare-fun var840_toString/-575966009 ((Array Int var3535)) String)
(declare-fun cast-from-__Array__Int__var3305__-to-__Array__Int__var3535__ ((Array Int var3305)) (Array Int var3535))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3739 var3739)
(declare-const null-String String)
(declare-const var3693 var3739) ; Statement: r1 := @this: org.apache.lucene.document.LatLonDocValuesQuery 
(assert (not (= var3693 null-var3739)))
(declare-const var2354 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2354 null-String)))
(define-const var2584 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2584)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2584!1 String)
(assert (= var2584!1 ""))
(define-const var2000 String (field/-856791529 var3693)) ; Statement: $r3 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: java.lang.String field> 
(assert true)
(define-const var2673 Bool (= var2000 var2354)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation> 
(assert (not (= (ite var2673 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2249 var351 (queryRelation/-856791529 var3693)) ; Statement: $r4 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation> 
(assert true)
(define-const var1188 String (append/-1031950772 var2584!1 (cast-from-var351-to-var3535 var2249))) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2584!2 String)
(assert (str.prefixof var2584!1 var2584!2))
(assert true)
;(assert (append/-1166366385 var1188 58)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1188!1 String)
(assert (str.prefixof var1188 var1188!1))
(assert true)
(define-const var434 String (append/672562846 var2584!2 "geometries(")) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(") 
(declare-const var2584!3 String)
(assert (= var2584!3 (str.++ var2584!2 "geometries(")))
(define-const var2439 (Array Int var3305) (geometries/-856791529 var3693)) ; Statement: $r6 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.geo.LatLonGeometry[] geometries> 
(define-const var3397 String (var840_toString/-575966009 (cast-from-__Array__Int__var3305__-to-__Array__Int__var3535__ var2439))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6) 
(assert true)
;(assert (append/672562846 var434 var3397)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var434!1 String)
(assert (= var434!1 (str.++ var434 var3397)))
(assert true)
(define-const var1495 String (append/672562846 var2584!3 ")")) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2584!4 String)
(assert (= var2584!4 (str.++ var2584!3 ")")))
(assert true)
(define-const var3100 String (toString/-2075883882 var1495)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], java.lang.String), queryRelation/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], org.apache.lucene.document.ShapeField$QueryRelation), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var351-to-var3535=([org.apache.lucene.document.ShapeField$QueryRelation], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), geometries/-856791529=([org.apache.lucene.document.LatLonDocValuesQuery], org.apache.lucene.geo.LatLonGeometry[]), var840_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3305__-to-__Array__Int__var3535__=([org.apache.lucene.geo.LatLonGeometry[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3739=org.apache.lucene.document.LatLonDocValuesQuery, var3693=r1, var2354=r2, var2395=null_type, var2584=$r0, var2000=$r3, var2673=$z0, var351=org.apache.lucene.document.ShapeField$QueryRelation, var2249=$r4, var3535=java.lang.Object, var1188=$r5, var434=$r8, var3305=org.apache.lucene.geo.LatLonGeometry, var2439=$r6, var840=java.util.Arrays, var3397=$r7, var1495=$r9, var3100=$r10}
; {org.apache.lucene.document.LatLonDocValuesQuery=var3739, r1=var3693, r2=var2354, null_type=var2395, $r0=var2584, $r3=var2000, $z0=var2673, org.apache.lucene.document.ShapeField$QueryRelation=var351, $r4=var2249, java.lang.Object=var3535, $r5=var1188, $r8=var434, org.apache.lucene.geo.LatLonGeometry=var3305, $r6=var2439, java.util.Arrays=var840, $r7=var3397, $r9=var1495, $r10=var3100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonDocValuesQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation>;	$r4 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.document.ShapeField$QueryRelation queryRelation>;	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(");	$r6 = r1.<org.apache.lucene.document.LatLonDocValuesQuery: org.apache.lucene.geo.LatLonGeometry[] geometries>;	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2