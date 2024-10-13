(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var983 0)
(declare-sort var2381 0)
(declare-sort var2892 0)
(declare-sort var3632 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2892) ClassObject)
(declare-fun cast-from-var983-to-var2892 (var983) var2892)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun field/-1847263103 (var3632) String)
(declare-fun cast-from-var983-to-var3632 (var983) var3632)
(declare-fun rectangle/357925753 (var983) var2336)
(declare-fun toString/833234908 (var2336) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var983 var983)
(declare-const null-String String)
(declare-const var3316 var983) ; Statement: r1 := @this: org.apache.lucene.document.LatLonShapeBoundingBoxQuery 
(assert (not (= var3316 null-var983)))
(declare-const var3500 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3500 null-String)))
(define-const var3650 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3650)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3650!1 String)
(assert (= var3650!1 ""))
(assert true)
(define-const var3503 ClassObject (getClass/1258963082 (cast-from-var983-to-var2892 var3316))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2279 String (getSimpleName/-390194377 var3503)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3650!1 var2279)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3650!2 String)
(assert (= var3650!2 (str.++ var3650!1 var2279)))
(assert true)
;(assert (append/-1166366385 var3650!2 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3650!3 String)
(assert (str.prefixof var3650!2 var3650!3))
(define-const var1500 String (field/-1847263103 (cast-from-var983-to-var3632 var3316))) ; Statement: $r5 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: java.lang.String field> 
(assert true)
(define-const var1206 Bool (= var1500 var3500)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto $r6 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: org.apache.lucene.geo.Rectangle rectangle> 
(assert (not (= (ite var1206 1 0) 0))) ; Cond: $z0 != 0 
(define-const var765 var2336 (rectangle/357925753 var3316)) ; Statement: $r6 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: org.apache.lucene.geo.Rectangle rectangle> 
(assert true)
(define-const var142 String (toString/833234908 var765)) ; Statement: $r7 = virtualinvoke $r6.<org.apache.lucene.geo.Rectangle: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3650!3 var142)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3650!4 String)
(assert (= var3650!4 (str.++ var3650!3 var142)))
(assert true)
(define-const var2704 String (toString/-2075883882 var3650!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var983-to-var2892=([org.apache.lucene.document.LatLonShapeBoundingBoxQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), field/-1847263103=([org.apache.lucene.document.SpatialQuery], java.lang.String), cast-from-var983-to-var3632=([org.apache.lucene.document.LatLonShapeBoundingBoxQuery], org.apache.lucene.document.SpatialQuery), rectangle/357925753=([org.apache.lucene.document.LatLonShapeBoundingBoxQuery], org.apache.lucene.geo.Rectangle), toString/833234908=([org.apache.lucene.geo.Rectangle], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var983=org.apache.lucene.document.LatLonShapeBoundingBoxQuery, var3316=r1, var3500=r4, var2381=null_type, var3650=$r0, var2892=java.lang.Object, var3503=$r2, var2279=$r3, var3632=org.apache.lucene.document.SpatialQuery, var1500=$r5, var1206=$z0, var2336=org.apache.lucene.geo.Rectangle, var765=$r6, var142=$r7, var2704=$r8}
; {org.apache.lucene.document.LatLonShapeBoundingBoxQuery=var983, r1=var3316, r4=var3500, null_type=var2381, $r0=var3650, java.lang.Object=var2892, $r2=var3503, $r3=var2279, org.apache.lucene.document.SpatialQuery=var3632, $r5=var1500, $z0=var1206, org.apache.lucene.geo.Rectangle=var2336, $r6=var765, $r7=var142, $r8=var2704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<org.apache.lucene.geo.Rectangle: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonShapeBoundingBoxQuery;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: java.lang.String field>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto $r6 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: org.apache.lucene.geo.Rectangle rectangle>;	$r6 = r1.<org.apache.lucene.document.LatLonShapeBoundingBoxQuery: org.apache.lucene.geo.Rectangle rectangle>;	$r7 = virtualinvoke $r6.<org.apache.lucene.geo.Rectangle: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2