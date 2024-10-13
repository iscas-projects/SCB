(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-615638987 (var3033) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-615638987 (var3033) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun upperValue/-615638987 (var3033) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3033 var3033)
(declare-const null-String String)
(declare-const var176 var3033) ; Statement: r1 := @this: org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery 
(assert (not (= var176 null-var3033)))
(declare-const var3831 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3831 null-String)))
(define-const var497 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var497)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var497!1 String)
(assert (= var497!1 ""))
(define-const var2222 String (field/-615638987 var176)) ; Statement: $r3 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var403 Bool (= var2222 var3831)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var403 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3443 String (append/672562846 var497!1 "[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var497!2 String)
(assert (= var497!2 (str.++ var497!1 "[")))
(define-const var724 Int (lowerValue/-615638987 var176)) ; Statement: $l0 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: long lowerValue> 
(assert true)
(define-const var3999 String (append/-901862667 var3443 var724)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3443!1 String)
(assert (str.prefixof var3443 var3443!1))
(assert true)
(define-const var1586 String (append/672562846 var3999 " TO ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var3999!1 String)
(assert (= var3999!1 (str.++ var3999 " TO ")))
(define-const var356 Int (upperValue/-615638987 var176)) ; Statement: $l1 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: long upperValue> 
(assert true)
(define-const var1362 String (append/-901862667 var1586 var356)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1586!1 String)
(assert (str.prefixof var1586 var1586!1))
(assert true)
(define-const var3393 String (append/672562846 var1362 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 "]")))
(assert true)
(define-const var3916 String (toString/-2075883882 var3393)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-615638987=([org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-615638987=([org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), upperValue/-615638987=([org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3033=org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery, var176=r1, var3831=r2, var378=null_type, var497=$r0, var2222=$r3, var403=$z0, var3443=$r4, var724=$l0, var3999=$r5, var1586=$r6, var356=$l1, var1362=$r7, var3393=$r8, var3916=$r9}
; {org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery=var3033, r1=var176, r2=var3831, null_type=var378, $r0=var497, $r3=var2222, $z0=var403, $r4=var3443, $l0=var724, $r5=var3999, $r6=var1586, $l1=var356, $r7=var1362, $r8=var3393, $r9=var3916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$l0 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: long lowerValue>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$l1 = r1.<org.apache.lucene.search.IndexSortSortedNumericDocValuesRangeQuery: long upperValue>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2