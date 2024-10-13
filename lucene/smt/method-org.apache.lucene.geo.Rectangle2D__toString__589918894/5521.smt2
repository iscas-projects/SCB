(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun minX/158363790 (var1233) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun maxX/158363790 (var1233) Float64)
(declare-fun minY/158363790 (var1233) Float64)
(declare-fun maxY/158363790 (var1233) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1233 var1233)
(declare-const var2408 var1233) ; Statement: r1 := @this: org.apache.lucene.geo.Rectangle2D 
(assert (not (= var2408 null-var1233)))
(define-const var344 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var344!1 String)
(assert (= var344!1 ""))
(assert true)
;(assert (append/672562846 var344!1 "XYRectangle(x=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYRectangle(x=") 
(declare-const var344!2 String)
(assert (= var344!2 (str.++ var344!1 "XYRectangle(x=")))
(define-const var489 Float64 (minX/158363790 var2408)) ; Statement: $d0 = r1.<org.apache.lucene.geo.Rectangle2D: double minX> 
(assert true)
;(assert (append/33611274 var344!2 var489)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var344!3 String)
(assert (str.prefixof var344!2 var344!3))
(assert true)
;(assert (append/672562846 var344!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var344!4 String)
(assert (= var344!4 (str.++ var344!3 " TO ")))
(define-const var3346 Float64 (maxX/158363790 var2408)) ; Statement: $d1 = r1.<org.apache.lucene.geo.Rectangle2D: double maxX> 
(assert true)
;(assert (append/33611274 var344!4 var3346)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var344!5 String)
(assert (str.prefixof var344!4 var344!5))
(assert true)
;(assert (append/672562846 var344!5 " y=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" y=") 
(declare-const var344!6 String)
(assert (= var344!6 (str.++ var344!5 " y=")))
(define-const var547 Float64 (minY/158363790 var2408)) ; Statement: $d2 = r1.<org.apache.lucene.geo.Rectangle2D: double minY> 
(assert true)
;(assert (append/33611274 var344!6 var547)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2) 
(declare-const var344!7 String)
(assert (str.prefixof var344!6 var344!7))
(assert true)
;(assert (append/672562846 var344!7 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var344!8 String)
(assert (= var344!8 (str.++ var344!7 " TO ")))
(define-const var1284 Float64 (maxY/158363790 var2408)) ; Statement: $d3 = r1.<org.apache.lucene.geo.Rectangle2D: double maxY> 
(assert true)
;(assert (append/33611274 var344!8 var1284)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3) 
(declare-const var344!9 String)
(assert (str.prefixof var344!8 var344!9))
(assert true)
;(assert (append/672562846 var344!9 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var344!10 String)
(assert (= var344!10 (str.++ var344!9 ")")))
(assert true)
(define-const var857 String (toString/-2075883882 var344!10)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), minX/158363790=([org.apache.lucene.geo.Rectangle2D], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), maxX/158363790=([org.apache.lucene.geo.Rectangle2D], double), minY/158363790=([org.apache.lucene.geo.Rectangle2D], double), maxY/158363790=([org.apache.lucene.geo.Rectangle2D], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1233=org.apache.lucene.geo.Rectangle2D, var2408=r1, var344=$r0, var489=$d0, var3346=$d1, var547=$d2, var1284=$d3, var857=$r2}
; {org.apache.lucene.geo.Rectangle2D=var1233, r1=var2408, $r0=var344, $d0=var489, $d1=var3346, $d2=var547, $d3=var1284, $r2=var857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Rectangle2D;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYRectangle(x=");	$d0 = r1.<org.apache.lucene.geo.Rectangle2D: double minX>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$d1 = r1.<org.apache.lucene.geo.Rectangle2D: double maxX>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" y=");	$d2 = r1.<org.apache.lucene.geo.Rectangle2D: double minY>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$d3 = r1.<org.apache.lucene.geo.Rectangle2D: double maxY>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1