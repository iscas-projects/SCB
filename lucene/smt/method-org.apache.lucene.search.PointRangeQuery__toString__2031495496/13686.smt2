(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2095 0)
(declare-sort var2912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/867041227 (var2095) String)
(declare-fun numDims/867041227 (var2095) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2095 var2095)
(declare-const null-String String)
(declare-const var1053 var2095) ; Statement: r1 := @this: org.apache.lucene.search.PointRangeQuery 
(assert (not (= var1053 null-var2095)))
(declare-const var2742 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2742 null-String)))
(define-const var3208 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(define-const var260 String (field/867041227 var1053)) ; Statement: $r3 = r1.<org.apache.lucene.search.PointRangeQuery: java.lang.String field> 
(assert true)
(define-const var2272 Bool (= var260 var2742)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto i6 = 0 
(assert (not (= (ite var2272 1 0) 0))) ; Cond: $z0 != 0 
(define-const var441 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var128 Int (numDims/867041227 var1053)) ; Statement: $i7 = r1.<org.apache.lucene.search.PointRangeQuery: int numDims> 
 ; Statement: if i6 >= $i7 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var441 var128)) ; Cond: i6 >= $i7 
(assert true)
(define-const var3750 String (toString/-2075883882 var3208!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/867041227=([org.apache.lucene.search.PointRangeQuery], java.lang.String), numDims/867041227=([org.apache.lucene.search.PointRangeQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2095=org.apache.lucene.search.PointRangeQuery, var1053=r1, var2742=r2, var2912=null_type, var3208=$r0, var260=$r3, var2272=$z0, var441=i6, var128=$i7, var3750=$r4}
; {org.apache.lucene.search.PointRangeQuery=var2095, r1=var1053, r2=var2742, null_type=var2912, $r0=var3208, $r3=var260, $z0=var2272, i6=var441, $i7=var128, $r4=var3750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.PointRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.search.PointRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto i6 = 0;	i6 = 0;	$i7 = r1.<org.apache.lucene.search.PointRangeQuery: int numDims>;	if i6 >= $i7 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4