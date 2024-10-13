(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort var37 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lats/911321095 (var1772) (Array Int Float64))
(declare-fun lons/911321095 (var1772) (Array Int Float64))
(declare-fun var37_verticesToGeoJSON/1798254740 ((Array Int Float64) (Array Int Float64)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1772 var1772)
(declare-const var3504 var1772) ; Statement: r1 := @this: org.apache.lucene.geo.Line 
(assert (not (= var3504 null-var1772)))
(define-const var3396 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3396)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3396!1 String)
(assert (= var3396!1 ""))
(assert true)
;(assert (append/672562846 var3396!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3396!2 String)
(assert (= var3396!2 (str.++ var3396!1 "[")))
(define-const var1775 (Array Int Float64) (lats/911321095 var3504)) ; Statement: $r3 = r1.<org.apache.lucene.geo.Line: double[] lats> 
(define-const var1623 (Array Int Float64) (lons/911321095 var3504)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Line: double[] lons> 
(define-const var1169 String (var37_verticesToGeoJSON/1798254740 var1775 var1623)) ; Statement: $r4 = staticinvoke <org.apache.lucene.geo.Polygon: java.lang.String verticesToGeoJSON(double[],double[])>($r3, $r2) 
(assert true)
;(assert (append/672562846 var3396!2 var1169)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3396!3 String)
(assert (= var3396!3 (str.++ var3396!2 var1169)))
(assert true)
;(assert (append/672562846 var3396!3 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3396!4 String)
(assert (= var3396!4 (str.++ var3396!3 "]")))
(assert true)
(define-const var1172 String (toString/-2075883882 var3396!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lats/911321095=([org.apache.lucene.geo.Line], double[]), lons/911321095=([org.apache.lucene.geo.Line], double[]), var37_verticesToGeoJSON/1798254740=([double[], double[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1772=org.apache.lucene.geo.Line, var3504=r1, var3396=$r0, var1775=$r3, var1623=$r2, var37=org.apache.lucene.geo.Polygon, var1169=$r4, var1172=$r5}
; {org.apache.lucene.geo.Line=var1772, r1=var3504, $r0=var3396, $r3=var1775, $r2=var1623, org.apache.lucene.geo.Polygon=var37, $r4=var1169, $r5=var1172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Line;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = r1.<org.apache.lucene.geo.Line: double[] lats>;	$r2 = r1.<org.apache.lucene.geo.Line: double[] lons>;	$r4 = staticinvoke <org.apache.lucene.geo.Polygon: java.lang.String verticesToGeoJSON(double[],double[])>($r3, $r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1