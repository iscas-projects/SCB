(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2799 0)
(declare-sort var204 0)
(declare-sort var546 0)
(declare-sort var1323 0)
(declare-sort var3440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var2799) String)
(declare-fun lowerInclusive/-395504291 (var2799) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var2799) var546)
(declare-fun cast-from-var546-to-var1323 (var546) var1323)
(declare-fun append/-1031950772 (String var3440) String)
(declare-fun cast-from-var1323-to-var3440 (var1323) var3440)
(declare-fun upperValue/-395504291 (var2799) var546)
(declare-fun cast-from-String-to-var1323 (String) var1323)
(declare-fun upperInclusive/-395504291 (var2799) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2799 var2799)
(declare-const null-String String)
(declare-const null-var546 var546)
(declare-const var2588 var2799) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var2588 null-var2799)))
(declare-const var2014 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2014 null-String)))
(define-const var398 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var398)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var398!1 String)
(assert (= var398!1 ""))
(define-const var2394 String (field/-395504291 var2588)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var1506 Bool (= var2394 var2014)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var1506 1 0) 0))) ; Cond: $z0 != 0 
(define-const var491 Bool (lowerInclusive/-395504291 var2588)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var491 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3096 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var1 String (append/672562846 var398!1 var3096)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var398!2 String)
(assert (= var398!2 (str.++ var398!1 var3096)))
(define-const var2067 var546 (lowerValue/-395504291 var2588)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (= var2067 null-var546))) ; Cond: $r4 != null 
(define-const var1033 var1323 (cast-from-var546-to-var1323 (lowerValue/-395504291 var2588))) ; Statement: $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var1971 String (append/-1031950772 var1 (cast-from-var1323-to-var3440 var1033))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1!1 String)
(assert (str.prefixof var1 var1!1))
(assert true)
(define-const var1862 String (append/672562846 var1971 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1971!1 String)
(assert (= var1971!1 (str.++ var1971 " TO ")))
(define-const var3670 var546 (upperValue/-395504291 var2588)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (not (= var3670 null-var546)))) ; Negate: Cond: $r7 != null  
(define-const var1701 var1323 (cast-from-String-to-var1323 "*")) ; Statement: $r16 = "*" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3631 String (append/-1031950772 var1862 (cast-from-var1323-to-var3440 var1701))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var1862!1 String)
(assert (str.prefixof var1862 var1862!1))
(define-const var53 Bool (upperInclusive/-395504291 var2588)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (not (= (ite var53 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var460 String "]") ; Statement: $r17 = "]" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2411 String (append/672562846 var3631 var460)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3631!1 String)
(assert (= var3631!1 (str.++ var3631 var460)))
(assert true)
(define-const var1318 String (toString/-2075883882 var2411)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var546-to-var1323=([org.apache.lucene.util.BytesRef], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1323-to-var3440=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var1323=([java.lang.String], java.lang.Comparable), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2799=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var2588=r1, var2014=r2, var204=null_type, var398=$r0, var2394=$r3, var1506=$z0, var491=$z1, var3096=$r14, var1=$r5, var546=org.apache.lucene.util.BytesRef, var2067=$r4, var1323=java.lang.Comparable, var1033=$r15, var3440=java.lang.Object, var1971=$r6, var1862=$r8, var3670=$r7, var1701=$r16, var3631=$r9, var53=$z2, var460=$r17, var2411=$r10, var1318=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var2799, r1=var2588, r2=var2014, null_type=var204, $r0=var398, $r3=var2394, $z0=var1506, $z1=var491, $r14=var3096, $r5=var1, org.apache.lucene.util.BytesRef=var546, $r4=var2067, java.lang.Comparable=var1323, $r15=var1033, java.lang.Object=var3440, $r6=var1971, $r8=var1862, $r7=var3670, $r16=var1701, $r9=var3631, $z2=var53, $r17=var460, $r10=var2411, $r11=var1318}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = "*";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "]";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10