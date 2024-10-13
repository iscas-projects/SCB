(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var2755 0)
(declare-sort var3183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-574747122 (var3912) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun minLatitude/-574747122 (var3912) Int)
(declare-fun var3183_decodeLatitude/1529670819 (Int) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun maxLatitude/-574747122 (var3912) Int)
(declare-fun minLongitude/-574747122 (var3912) Int)
(declare-fun var3183_decodeLongitude/5395728 (Int) Float64)
(declare-fun maxLongitude/-574747122 (var3912) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3912 var3912)
(declare-const null-String String)
(declare-const var2942 var3912) ; Statement: r1 := @this: org.apache.lucene.document.LatLonDocValuesBoxQuery 
(assert (not (= var2942 null-var3912)))
(declare-const var2855 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2855 null-String)))
(define-const var1567 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1567)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1567!1 String)
(assert (= var1567!1 ""))
(define-const var2579 String (field/-574747122 var2942)) ; Statement: $r3 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: java.lang.String field> 
(assert true)
(define-const var3534 Bool (= var2579 var2855)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("box(minLat=") 
(assert (not (= (ite var3534 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var385 String (append/672562846 var1567!1 "box(minLat=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("box(minLat=") 
(declare-const var1567!2 String)
(assert (= var1567!2 (str.++ var1567!1 "box(minLat=")))
(define-const var395 Int (minLatitude/-574747122 var2942)) ; Statement: $i0 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLatitude> 
(define-const var1240 Float64 (var3183_decodeLatitude/1529670819 var395)) ; Statement: $d0 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i0) 
(assert true)
;(assert (append/33611274 var385 var1240)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var385!1 String)
(assert (str.prefixof var385 var385!1))
(assert true)
(define-const var2646 String (append/672562846 var1567!2 ", maxLat=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", maxLat=") 
(declare-const var1567!3 String)
(assert (= var1567!3 (str.++ var1567!2 ", maxLat=")))
(define-const var1327 Int (maxLatitude/-574747122 var2942)) ; Statement: $i1 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLatitude> 
(define-const var552 Float64 (var3183_decodeLatitude/1529670819 var1327)) ; Statement: $d1 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i1) 
(assert true)
;(assert (append/33611274 var2646 var552)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var2646!1 String)
(assert (str.prefixof var2646 var2646!1))
(assert true)
(define-const var3275 String (append/672562846 var1567!3 ", minLon=")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", minLon=") 
(declare-const var1567!4 String)
(assert (= var1567!4 (str.++ var1567!3 ", minLon=")))
(define-const var2147 Int (minLongitude/-574747122 var2942)) ; Statement: $i2 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLongitude> 
(define-const var3105 Float64 (var3183_decodeLongitude/5395728 var2147)) ; Statement: $d2 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i2) 
(assert true)
;(assert (append/33611274 var3275 var3105)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2) 
(declare-const var3275!1 String)
(assert (str.prefixof var3275 var3275!1))
(assert true)
(define-const var3751 String (append/672562846 var1567!4 ", maxLon=")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", maxLon=") 
(declare-const var1567!5 String)
(assert (= var1567!5 (str.++ var1567!4 ", maxLon=")))
(define-const var2828 Int (maxLongitude/-574747122 var2942)) ; Statement: $i3 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLongitude> 
(define-const var1876 Float64 (var3183_decodeLongitude/5395728 var2828)) ; Statement: $d3 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i3) 
(assert true)
;(assert (append/33611274 var3751 var1876)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3) 
(declare-const var3751!1 String)
(assert (str.prefixof var3751 var3751!1))
(assert true)
(define-const var225 String (append/672562846 var1567!5 ")")) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1567!6 String)
(assert (= var1567!6 (str.++ var1567!5 ")")))
(assert true)
(define-const var188 String (toString/-2075883882 var225)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), minLatitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), var3183_decodeLatitude/1529670819=([int], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), maxLatitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), minLongitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), var3183_decodeLongitude/5395728=([int], double), maxLongitude/-574747122=([org.apache.lucene.document.LatLonDocValuesBoxQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3912=org.apache.lucene.document.LatLonDocValuesBoxQuery, var2942=r1, var2855=r2, var2755=null_type, var1567=$r0, var2579=$r3, var3534=$z0, var385=$r4, var395=$i0, var3183=org.apache.lucene.geo.GeoEncodingUtils, var1240=$d0, var2646=$r5, var1327=$i1, var552=$d1, var3275=$r6, var2147=$i2, var3105=$d2, var3751=$r7, var2828=$i3, var1876=$d3, var225=$r8, var188=$r9}
; {org.apache.lucene.document.LatLonDocValuesBoxQuery=var3912, r1=var2942, r2=var2855, null_type=var2755, $r0=var1567, $r3=var2579, $z0=var3534, $r4=var385, $i0=var395, org.apache.lucene.geo.GeoEncodingUtils=var3183, $d0=var1240, $r5=var2646, $i1=var1327, $d1=var552, $r6=var3275, $i2=var2147, $d2=var3105, $r7=var3751, $i3=var2828, $d3=var1876, $r8=var225, $r9=var188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonDocValuesBoxQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("box(minLat=");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("box(minLat=");	$i0 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLatitude>;	$d0 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", maxLat=");	$i1 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLatitude>;	$d1 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i1);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", minLon=");	$i2 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int minLongitude>;	$d2 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", maxLon=");	$i3 = r1.<org.apache.lucene.document.LatLonDocValuesBoxQuery: int maxLongitude>;	$d3 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i3);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2