(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun polyLats/104136775 (var108) (Array Int Float64))
(declare-fun getLength-Arr-Float64-1 ((Array Int Float64)) Int)
(declare-fun holes/104136775 (var108) (Array Int var108))
(declare-fun getLength-Arr-var108-1 ((Array Int var108)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var108 var108)
(declare-const var2629 var108) ; Statement: r1 := @this: org.apache.lucene.geo.Polygon 
(assert (not (= var2629 null-var108)))
(define-const var2967 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2967)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2967!1 String)
(assert (= var2967!1 ""))
(define-const var143 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1412 (Array Int Float64) (polyLats/104136775 var2629)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Polygon: double[] polyLats> 
(define-const var2443 Int (getLength-Arr-Float64-1 var1412)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto $r3 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes> 
(assert (>= var143 var2443)) ; Cond: i2 >= $i0 
(define-const var3072 (Array Int var108) (holes/104136775 var2629)) ; Statement: $r3 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes> 
(define-const var2611 Int (getLength-Arr-var108-1 var3072)) ; Statement: $i1 = lengthof $r3 
 ; Statement: if $i1 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var2611 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var3179 String (toString/-2075883882 var2967!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), polyLats/104136775=([org.apache.lucene.geo.Polygon], double[]), getLength-Arr-Float64-1=([double[]], int), holes/104136775=([org.apache.lucene.geo.Polygon], org.apache.lucene.geo.Polygon[]), getLength-Arr-var108-1=([org.apache.lucene.geo.Polygon[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var108=org.apache.lucene.geo.Polygon, var2629=r1, var2967=$r0, var143=i2, var1412=$r2, var2443=$i0, var3072=$r3, var2611=$i1, var3179=$r4}
; {org.apache.lucene.geo.Polygon=var108, r1=var2629, $r0=var2967, i2=var143, $r2=var1412, $i0=var2443, $r3=var3072, $i1=var2611, $r4=var3179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Polygon;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$r2 = r1.<org.apache.lucene.geo.Polygon: double[] polyLats>;	$i0 = lengthof $r2;	if i2 >= $i0 goto $r3 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes>;	$r3 = r1.<org.apache.lucene.geo.Polygon: org.apache.lucene.geo.Polygon[] holes>;	$i1 = lengthof $r3;	if $i1 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4