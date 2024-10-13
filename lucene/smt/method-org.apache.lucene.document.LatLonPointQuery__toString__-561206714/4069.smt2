(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2275 0)
(declare-sort var890 0)
(declare-sort var1131 0)
(declare-sort var2294 0)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1131) ClassObject)
(declare-fun cast-from-var2275-to-var1131 (var2275) var1131)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun field/-1847263103 (var2294) String)
(declare-fun cast-from-var2275-to-var2294 (var2275) var2294)
(declare-fun geometries/-1847263103 (var2294) (Array Int var1038))
(declare-fun getLength-Arr-var1038-1 ((Array Int var1038)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2275 var2275)
(declare-const null-String String)
(declare-const var1757 var2275) ; Statement: r1 := @this: org.apache.lucene.document.LatLonPointQuery 
(assert (not (= var1757 null-var2275)))
(declare-const var1116 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1116 null-String)))
(define-const var2363 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2363)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2363!1 String)
(assert (= var2363!1 ""))
(assert true)
(define-const var3978 ClassObject (getClass/1258963082 (cast-from-var2275-to-var1131 var1757))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2504 String (getSimpleName/-390194377 var3978)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var2363!1 var2504)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2363!2 String)
(assert (= var2363!2 (str.++ var2363!1 var2504)))
(assert true)
;(assert (append/-1166366385 var2363!2 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2363!3 String)
(assert (str.prefixof var2363!2 var2363!3))
(define-const var2209 String (field/-1847263103 (cast-from-var2275-to-var2294 var1757))) ; Statement: $r5 = r1.<org.apache.lucene.document.LatLonPointQuery: java.lang.String field> 
(assert true)
(define-const var828 Bool (= var2209 var1116)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var828 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var2363!3 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2363!4 String)
(assert (= var2363!4 (str.++ var2363!3 "[")))
(define-const var1146 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var3718 (Array Int var1038) (geometries/-1847263103 (cast-from-var2275-to-var2294 var1757))) ; Statement: $r11 = r1.<org.apache.lucene.document.LatLonPointQuery: org.apache.lucene.geo.Geometry[] geometries> 
(define-const var3073 Int (getLength-Arr-var1038-1 var3718)) ; Statement: $i1 = lengthof $r11 
 ; Statement: if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var1146 var3073)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/-1166366385 var2363!4 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2363!5 String)
(assert (str.prefixof var2363!4 var2363!5))
(assert true)
(define-const var1614 String (toString/-2075883882 var2363!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2275-to-var1131=([org.apache.lucene.document.LatLonPointQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), field/-1847263103=([org.apache.lucene.document.SpatialQuery], java.lang.String), cast-from-var2275-to-var2294=([org.apache.lucene.document.LatLonPointQuery], org.apache.lucene.document.SpatialQuery), geometries/-1847263103=([org.apache.lucene.document.SpatialQuery], org.apache.lucene.geo.Geometry[]), getLength-Arr-var1038-1=([org.apache.lucene.geo.Geometry[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2275=org.apache.lucene.document.LatLonPointQuery, var1757=r1, var1116=r4, var890=null_type, var2363=$r0, var1131=java.lang.Object, var3978=$r2, var2504=$r3, var2294=org.apache.lucene.document.SpatialQuery, var2209=$r5, var828=$z0, var1146=i0, var1038=org.apache.lucene.geo.Geometry, var3718=$r11, var3073=$i1, var1614=$r6}
; {org.apache.lucene.document.LatLonPointQuery=var2275, r1=var1757, r4=var1116, null_type=var890, $r0=var2363, java.lang.Object=var1131, $r2=var3978, $r3=var2504, org.apache.lucene.document.SpatialQuery=var2294, $r5=var2209, $z0=var828, i0=var1146, org.apache.lucene.geo.Geometry=var1038, $r11=var3718, $i1=var3073, $r6=var1614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonPointQuery;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.LatLonPointQuery: java.lang.String field>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	i0 = 0;	$r11 = r1.<org.apache.lucene.document.LatLonPointQuery: org.apache.lucene.geo.Geometry[] geometries>;	$i1 = lengthof $r11;	if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4