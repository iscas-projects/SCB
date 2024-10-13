(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var1652 0)
(declare-sort var3831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-1381320133 (var401) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/-1381320133 (var401) (Array Int Float64))
(declare-fun var3831_toString/1620760645 ((Array Int Float64)) String)
(declare-fun max/-1381320133 (var401) (Array Int Float64))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var401 var401)
(declare-const null-String String)
(declare-const var3145 var401) ; Statement: r1 := @this: org.apache.lucene.document.DoubleRangeSlowRangeQuery 
(assert (not (= var3145 null-var401)))
(declare-const var849 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var849 null-String)))
(define-const var3716 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3716)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3716!1 String)
(assert (= var3716!1 ""))
(define-const var2045 String (field/-1381320133 var3145)) ; Statement: $r3 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var2095 Bool (= var2045 var849)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var2095 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var371 String (append/672562846 var3716!1 "[")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3716!2 String)
(assert (= var3716!2 (str.++ var3716!1 "[")))
(define-const var1086 (Array Int Float64) (min/-1381320133 var3145)) ; Statement: $r4 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] min> 
(define-const var580 String (var3831_toString/1620760645 var1086)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r4) 
(assert true)
(define-const var3576 String (append/672562846 var371 var580)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 var580)))
(assert true)
(define-const var1435 String (append/672562846 var3576 " TO ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 " TO ")))
(define-const var3048 (Array Int Float64) (max/-1381320133 var3145)) ; Statement: $r8 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] max> 
(define-const var1835 String (var3831_toString/1620760645 var3048)) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r8) 
(assert true)
(define-const var1354 String (append/672562846 var1435 var1835)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1435!1 String)
(assert (= var1435!1 (str.++ var1435 var1835)))
(assert true)
(define-const var2077 String (append/672562846 var1354 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1354!1 String)
(assert (= var1354!1 (str.++ var1354 "]")))
(assert true)
(define-const var2178 String (toString/-2075883882 var2077)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], double[]), var3831_toString/1620760645=([double[]], java.lang.String), max/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], double[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var401=org.apache.lucene.document.DoubleRangeSlowRangeQuery, var3145=r1, var849=r2, var1652=null_type, var3716=$r0, var2045=$r3, var2095=$z0, var371=$r6, var1086=$r4, var3831=java.util.Arrays, var580=$r5, var3576=$r7, var1435=$r10, var3048=$r8, var1835=$r9, var1354=$r11, var2077=$r12, var2178=$r13}
; {org.apache.lucene.document.DoubleRangeSlowRangeQuery=var401, r1=var3145, r2=var849, null_type=var1652, $r0=var3716, $r3=var2045, $z0=var2095, $r6=var371, $r4=var1086, java.util.Arrays=var3831, $r5=var580, $r7=var3576, $r10=var1435, $r8=var3048, $r9=var1835, $r11=var1354, $r12=var2077, $r13=var2178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(double[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(double[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.DoubleRangeSlowRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] min>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r8 = r1.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] max>;	$r9 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2