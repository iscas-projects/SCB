(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun polyLats/104136775 (var1709) (Array Int Float64))
(declare-fun polyLons/104136775 (var1709) (Array Int Float64))
(declare-fun var1709_verticesToGeoJSON/1798254740 ((Array Int Float64) (Array Int Float64)) String)
(declare-fun holes/104136775 (var1709) (Array Int var1709))
(declare-fun getLength-Arr-var1709-1 ((Array Int var1709)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1709 var1709)
(declare-const var6 var1709) ; Statement: r1 := @this: org.apache.lucene.geo.Polygon 
(assert (not (= var6 null-var1709)))
(define-const var879 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(assert true)
;(assert (append/672562846 var879!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var879!2 String)
(assert (= var879!2 (str.++ var879!1 "[")))
(define-const var3948 (Array Int Float64) (polyLats/104136775 var6)) ; Statement: $r3 = r1.<org.apache.lucene.geo.Polygon: double[] polyLats> 
(define-const var3323 (Array Int Float64) (polyLons/104136775 var6)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Polygon: double[] polyLons> 
(define-const var3351 String (var1709_verticesToGeoJSON/1798254740 var3948 var3323)) ; Statement: $r4 = staticinvoke <org.apache.lucene.geo.Polygon: java.lang.String verticesToGeoJSON(double[],double[])>($r3, $r2) 
(assert true)
;(assert (append/672562846 var879!2 var3351)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var879!3 String)
(assert (= var879!3 (str.++ var879!2 var3351)))
(define-const var1428 (Array Int var1709) (holes/104136775 var6)) ; Statement: r5 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes> 
(define-const var1982 Int (getLength-Arr-var1709-1 var1428)) ; Statement: i0 = lengthof r5 
(define-const var848 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (>= var848 var1982)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/672562846 var879!3 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var879!4 String)
(assert (= var879!4 (str.++ var879!3 "]")))
(assert true)
(define-const var1210 String (toString/-2075883882 var879!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), polyLats/104136775=([org.apache.lucene.geo.Polygon], double[]), polyLons/104136775=([org.apache.lucene.geo.Polygon], double[]), var1709_verticesToGeoJSON/1798254740=([double[], double[]], java.lang.String), holes/104136775=([org.apache.lucene.geo.Polygon], org.apache.lucene.geo.Polygon[]), getLength-Arr-var1709-1=([org.apache.lucene.geo.Polygon[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1709=org.apache.lucene.geo.Polygon, var6=r1, var879=$r0, var3948=$r3, var3323=$r2, var3351=$r4, var1428=r5, var1982=i0, var848=i1, var1210=$r6}
; {org.apache.lucene.geo.Polygon=var1709, r1=var6, $r0=var879, $r3=var3948, $r2=var3323, $r4=var3351, r5=var1428, i0=var1982, i1=var848, $r6=var1210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Polygon;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = r1.<org.apache.lucene.geo.Polygon: double[] polyLats>;	$r2 = r1.<org.apache.lucene.geo.Polygon: double[] polyLons>;	$r4 = staticinvoke <org.apache.lucene.geo.Polygon: java.lang.String verticesToGeoJSON(double[],double[])>($r3, $r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r5 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes>;	i0 = lengthof r5;	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3