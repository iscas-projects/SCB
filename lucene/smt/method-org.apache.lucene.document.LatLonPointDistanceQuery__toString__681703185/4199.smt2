(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var143 0)
(declare-sort var1305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/1476262732 (var143) String)
(declare-fun latitude/1476262732 (var143) Float64)
(declare-fun append/33611274 (String Float64) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun longitude/1476262732 (var143) Float64)
(declare-fun radiusMeters/1476262732 (var143) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var143 var143)
(declare-const null-String String)
(declare-const var813 var143) ; Statement: r1 := @this: org.apache.lucene.document.LatLonPointDistanceQuery 
(assert (not (= var813 null-var143)))
(declare-const var2611 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2611 null-String)))
(define-const var519 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var519)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var519!1 String)
(assert (= var519!1 ""))
(define-const var2480 String (field/1476262732 var813)) ; Statement: $r3 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field> 
(assert true)
(define-const var3431 Bool (= var2480 var2611)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $d0 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude> 
(assert (not (= (ite var3431 1 0) 0))) ; Cond: $z0 != 0 
(define-const var283 Float64 (latitude/1476262732 var813)) ; Statement: $d0 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude> 
(assert true)
;(assert (append/33611274 var519!1 var283)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var519!2 String)
(assert (str.prefixof var519!1 var519!2))
(assert true)
;(assert (append/672562846 var519!2 ",")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var519!3 String)
(assert (= var519!3 (str.++ var519!2 ",")))
(define-const var1587 Float64 (longitude/1476262732 var813)) ; Statement: $d1 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double longitude> 
(assert true)
;(assert (append/33611274 var519!3 var1587)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var519!4 String)
(assert (str.prefixof var519!3 var519!4))
(assert true)
;(assert (append/672562846 var519!4 " +/- ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +/- ") 
(declare-const var519!5 String)
(assert (= var519!5 (str.++ var519!4 " +/- ")))
(define-const var1437 Float64 (radiusMeters/1476262732 var813)) ; Statement: $d2 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double radiusMeters> 
(assert true)
;(assert (append/33611274 var519!5 var1437)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2) 
(declare-const var519!6 String)
(assert (str.prefixof var519!5 var519!6))
(assert true)
;(assert (append/672562846 var519!6 " meters")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" meters") 
(declare-const var519!7 String)
(assert (= var519!7 (str.++ var519!6 " meters")))
(assert true)
(define-const var3163 String (toString/-2075883882 var519!7)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], java.lang.String), latitude/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), longitude/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double), radiusMeters/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var143=org.apache.lucene.document.LatLonPointDistanceQuery, var813=r1, var2611=r2, var1305=null_type, var519=$r0, var2480=$r3, var3431=$z0, var283=$d0, var1587=$d1, var1437=$d2, var3163=$r4}
; {org.apache.lucene.document.LatLonPointDistanceQuery=var143, r1=var813, r2=var2611, null_type=var1305, $r0=var519, $r3=var2480, $z0=var3431, $d0=var283, $d1=var1587, $d2=var1437, $r4=var3163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonPointDistanceQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $d0 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude>;	$d0 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double latitude>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$d1 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double longitude>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +/- ");	$d2 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: double radiusMeters>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" meters");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2