(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3510 0)
(declare-sort var782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/1367202770 (var3510) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/1367202770 (var3510) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun upperValue/1367202770 (var3510) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3510 var3510)
(declare-const null-String String)
(declare-const var3479 var3510) ; Statement: r1 := @this: org.apache.lucene.document.SortedNumericDocValuesRangeQuery 
(assert (not (= var3479 null-var3510)))
(declare-const var1103 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1103 null-String)))
(define-const var2361 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2361)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2361!1 String)
(assert (= var2361!1 ""))
(define-const var52 String (field/1367202770 var3479)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var3960 Bool (= var52 var1103)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var3960 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3608 String (append/672562846 var2361!1 "[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2361!2 String)
(assert (= var2361!2 (str.++ var2361!1 "[")))
(define-const var481 Int (lowerValue/1367202770 var3479)) ; Statement: $l0 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: long lowerValue> 
(assert true)
(define-const var1894 String (append/-901862667 var3608 var481)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3608!1 String)
(assert (str.prefixof var3608 var3608!1))
(assert true)
(define-const var1476 String (append/672562846 var1894 " TO ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1894!1 String)
(assert (= var1894!1 (str.++ var1894 " TO ")))
(define-const var1080 Int (upperValue/1367202770 var3479)) ; Statement: $l1 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: long upperValue> 
(assert true)
(define-const var3572 String (append/-901862667 var1476 var1080)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1476!1 String)
(assert (str.prefixof var1476 var1476!1))
(assert true)
(define-const var790 String (append/672562846 var3572 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 "]")))
(assert true)
(define-const var2286 String (toString/-2075883882 var790)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/1367202770=([org.apache.lucene.document.SortedNumericDocValuesRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/1367202770=([org.apache.lucene.document.SortedNumericDocValuesRangeQuery], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), upperValue/1367202770=([org.apache.lucene.document.SortedNumericDocValuesRangeQuery], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3510=org.apache.lucene.document.SortedNumericDocValuesRangeQuery, var3479=r1, var1103=r2, var782=null_type, var2361=$r0, var52=$r3, var3960=$z0, var3608=$r4, var481=$l0, var1894=$r5, var1476=$r6, var1080=$l1, var3572=$r7, var790=$r8, var2286=$r9}
; {org.apache.lucene.document.SortedNumericDocValuesRangeQuery=var3510, r1=var3479, r2=var1103, null_type=var782, $r0=var2361, $r3=var52, $z0=var3960, $r4=var3608, $l0=var481, $r5=var1894, $r6=var1476, $l1=var1080, $r7=var3572, $r8=var790, $r9=var2286}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedNumericDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$l0 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: long lowerValue>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$l1 = r1.<org.apache.lucene.document.SortedNumericDocValuesRangeQuery: long upperValue>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2