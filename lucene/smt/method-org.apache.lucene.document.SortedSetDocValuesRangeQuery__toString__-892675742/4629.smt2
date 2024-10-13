(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3250 0)
(declare-sort var2335 0)
(declare-sort var771 0)
(declare-sort var3853 0)
(declare-sort var45 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var3250) String)
(declare-fun lowerInclusive/-395504291 (var3250) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var3250) var771)
(declare-fun cast-from-String-to-var3853 (String) var3853)
(declare-fun append/-1031950772 (String var45) String)
(declare-fun cast-from-var3853-to-var45 (var3853) var45)
(declare-fun upperValue/-395504291 (var3250) var771)
(declare-fun upperInclusive/-395504291 (var3250) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3250 var3250)
(declare-const null-String String)
(declare-const null-var771 var771)
(declare-const var2638 var3250) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var2638 null-var3250)))
(declare-const var209 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var209 null-String)))
(define-const var257 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var257)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var257!1 String)
(assert (= var257!1 ""))
(define-const var3668 String (field/-395504291 var2638)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var2398 Bool (= var3668 var209)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var2398 1 0) 0))) ; Cond: $z0 != 0 
(define-const var547 Bool (lowerInclusive/-395504291 var2638)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (not (= (ite var547 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2522 String "[") ; Statement: $r14 = "[" 
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3979 String (append/672562846 var257!1 var2522)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var257!2 String)
(assert (= var257!2 (str.++ var257!1 var2522)))
(define-const var125 var771 (lowerValue/-395504291 var2638)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (not (= var125 null-var771)))) ; Negate: Cond: $r4 != null  
(define-const var18 var3853 (cast-from-String-to-var3853 "*")) ; Statement: $r15 = "*" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1047 String (append/-1031950772 var3979 (cast-from-var3853-to-var45 var18))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3979!1 String)
(assert (str.prefixof var3979 var3979!1))
(assert true)
(define-const var1978 String (append/672562846 var1047 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 " TO ")))
(define-const var1611 var771 (upperValue/-395504291 var2638)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (not (= var1611 null-var771)))) ; Negate: Cond: $r7 != null  
(define-const var3964 var3853 (cast-from-String-to-var3853 "*")) ; Statement: $r16 = "*" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1030 String (append/-1031950772 var1978 (cast-from-var3853-to-var45 var3964))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var1978!1 String)
(assert (str.prefixof var1978 var1978!1))
(define-const var1847 Bool (upperInclusive/-395504291 var2638)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (not (= (ite var1847 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2157 String "]") ; Statement: $r17 = "]" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2102 String (append/672562846 var1030 var2157)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 var2157)))
(assert true)
(define-const var2989 String (toString/-2075883882 var2102)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var3853=([java.lang.String], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3853-to-var45=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3250=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var2638=r1, var209=r2, var2335=null_type, var257=$r0, var3668=$r3, var2398=$z0, var547=$z1, var2522=$r14, var3979=$r5, var771=org.apache.lucene.util.BytesRef, var125=$r4, var3853=java.lang.Comparable, var18=$r15, var45=java.lang.Object, var1047=$r6, var1978=$r8, var1611=$r7, var3964=$r16, var1030=$r9, var1847=$z2, var2157=$r17, var2102=$r10, var2989=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var3250, r1=var2638, r2=var209, null_type=var2335, $r0=var257, $r3=var3668, $z0=var2398, $z1=var547, $r14=var2522, $r5=var3979, org.apache.lucene.util.BytesRef=var771, $r4=var125, java.lang.Comparable=var3853, $r15=var18, java.lang.Object=var45, $r6=var1047, $r8=var1978, $r7=var1611, $r16=var3964, $r9=var1030, $z2=var1847, $r17=var2157, $r10=var2102, $r11=var2989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "[";	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = "*";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = "*";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "]";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10