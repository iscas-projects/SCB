(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun minLat/-2118268612 (var2650) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun maxLat/-2118268612 (var2650) Float64)
(declare-fun minLon/-2118268612 (var2650) Float64)
(declare-fun maxLon/-2118268612 (var2650) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2650 var2650)
(declare-const var1747 var2650) ; Statement: r1 := @this: org.apache.lucene.geo.Rectangle 
(assert (not (= var1747 null-var2650)))
(define-const var119 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var119)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var119!1 String)
(assert (= var119!1 ""))
(assert true)
;(assert (append/672562846 var119!1 "Rectangle(lat=")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Rectangle(lat=") 
(declare-const var119!2 String)
(assert (= var119!2 (str.++ var119!1 "Rectangle(lat=")))
(define-const var3743 Float64 (minLat/-2118268612 var1747)) ; Statement: $d0 = r1.<org.apache.lucene.geo.Rectangle: double minLat> 
(assert true)
;(assert (append/33611274 var119!2 var3743)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var119!3 String)
(assert (str.prefixof var119!2 var119!3))
(assert true)
;(assert (append/672562846 var119!3 " TO ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var119!4 String)
(assert (= var119!4 (str.++ var119!3 " TO ")))
(define-const var2229 Float64 (maxLat/-2118268612 var1747)) ; Statement: $d1 = r1.<org.apache.lucene.geo.Rectangle: double maxLat> 
(assert true)
;(assert (append/33611274 var119!4 var2229)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var119!5 String)
(assert (str.prefixof var119!4 var119!5))
(assert true)
;(assert (append/672562846 var119!5 " lon=")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" lon=") 
(declare-const var119!6 String)
(assert (= var119!6 (str.++ var119!5 " lon=")))
(define-const var1041 Float64 (minLon/-2118268612 var1747)) ; Statement: $d2 = r1.<org.apache.lucene.geo.Rectangle: double minLon> 
(assert true)
;(assert (append/33611274 var119!6 var1041)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2) 
(declare-const var119!7 String)
(assert (str.prefixof var119!6 var119!7))
(assert true)
;(assert (append/672562846 var119!7 " TO ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var119!8 String)
(assert (= var119!8 (str.++ var119!7 " TO ")))
(define-const var3840 Float64 (maxLon/-2118268612 var1747)) ; Statement: $d3 = r1.<org.apache.lucene.geo.Rectangle: double maxLon> 
(assert true)
;(assert (append/33611274 var119!8 var3840)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3) 
(declare-const var119!9 String)
(assert (str.prefixof var119!8 var119!9))
(define-const var2968 Float64 (maxLon/-2118268612 var1747)) ; Statement: $d5 = r1.<org.apache.lucene.geo.Rectangle: double maxLon> 
(define-const var817 Float64 (minLon/-2118268612 var1747)) ; Statement: $d4 = r1.<org.apache.lucene.geo.Rectangle: double minLon> 
(define-const var565 Int (ite (fp.gt var2968 var817) 1 (ite (fp.lt var2968 var817) (- 1) 0))) ; Statement: $b0 = $d5 cmpg $d4 
(define-const var2907 Int (cast-from-Int-to-Int var565)) ; Statement: $i1 = (int) $b0 
 ; Statement: if $i1 >= 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (>= var2907 0)) ; Cond: $i1 >= 0 
(assert true)
;(assert (append/672562846 var119!9 ")")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var119!10 String)
(assert (= var119!10 (str.++ var119!9 ")")))
(assert true)
(define-const var3545 String (toString/-2075883882 var119!10)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), minLat/-2118268612=([org.apache.lucene.geo.Rectangle], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), maxLat/-2118268612=([org.apache.lucene.geo.Rectangle], double), minLon/-2118268612=([org.apache.lucene.geo.Rectangle], double), maxLon/-2118268612=([org.apache.lucene.geo.Rectangle], double), cast-from-Int-to-Int=([byte], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2650=org.apache.lucene.geo.Rectangle, var1747=r1, var119=$r3, var3743=$d0, var2229=$d1, var1041=$d2, var3840=$d3, var2968=$d5, var817=$d4, var565=$b0, var2907=$i1, var3545=$r2}
; {org.apache.lucene.geo.Rectangle=var2650, r1=var1747, $r3=var119, $d0=var3743, $d1=var2229, $d2=var1041, $d3=var3840, $d5=var2968, $d4=var817, $b0=var565, $i1=var2907, $r2=var3545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Rectangle;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Rectangle(lat=");	$d0 = r1.<org.apache.lucene.geo.Rectangle: double minLat>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$d1 = r1.<org.apache.lucene.geo.Rectangle: double maxLat>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" lon=");	$d2 = r1.<org.apache.lucene.geo.Rectangle: double minLon>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$d3 = r1.<org.apache.lucene.geo.Rectangle: double maxLon>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3);	$d5 = r1.<org.apache.lucene.geo.Rectangle: double maxLon>;	$d4 = r1.<org.apache.lucene.geo.Rectangle: double minLon>;	$b0 = $d5 cmpg $d4;	$i1 = (int) $b0;	if $i1 >= 0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2