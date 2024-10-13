(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1355 0)
(declare-sort var3404 0)
(declare-sort var2883 0)
(declare-sort var965 0)
(declare-sort var268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var1355) String)
(declare-fun lowerInclusive/-395504291 (var1355) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var1355) var2883)
(declare-fun cast-from-var2883-to-var965 (var2883) var965)
(declare-fun append/-1031950772 (String var268) String)
(declare-fun cast-from-var965-to-var268 (var965) var268)
(declare-fun upperValue/-395504291 (var1355) var2883)
(declare-fun upperInclusive/-395504291 (var1355) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1355 var1355)
(declare-const null-String String)
(declare-const null-var2883 var2883)
(declare-const var137 var1355) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var137 null-var1355)))
(declare-const var3384 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3384 null-String)))
(define-const var535 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(define-const var3774 String (field/-395504291 var137)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var2177 Bool (= var3774 var3384)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var2177 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2500 Bool (lowerInclusive/-395504291 var137)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var2500 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2472 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var1393 String (append/672562846 var535!1 var2472)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var535!2 String)
(assert (= var535!2 (str.++ var535!1 var2472)))
(define-const var345 var2883 (lowerValue/-395504291 var137)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (= var345 null-var2883))) ; Cond: $r4 != null 
(define-const var3015 var965 (cast-from-var2883-to-var965 (lowerValue/-395504291 var137))) ; Statement: $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var3189 String (append/-1031950772 var1393 (cast-from-var965-to-var268 var3015))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1393!1 String)
(assert (str.prefixof var1393 var1393!1))
(assert true)
(define-const var3478 String (append/672562846 var3189 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 " TO ")))
(define-const var1035 var2883 (upperValue/-395504291 var137)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (= var1035 null-var2883))) ; Cond: $r7 != null 
(define-const var165 var965 (cast-from-var2883-to-var965 (upperValue/-395504291 var137))) ; Statement: $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var3679 String (append/-1031950772 var3478 (cast-from-var965-to-var268 var165))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3478!1 String)
(assert (str.prefixof var3478 var3478!1))
(define-const var2048 Bool (upperInclusive/-395504291 var137)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (not (= (ite var2048 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2725 String "]") ; Statement: $r17 = "]" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3387 String (append/672562846 var3679 var2725)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3679!1 String)
(assert (= var3679!1 (str.++ var3679 var2725)))
(assert true)
(define-const var41 String (toString/-2075883882 var3387)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var2883-to-var965=([org.apache.lucene.util.BytesRef], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var965-to-var268=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1355=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var137=r1, var3384=r2, var3404=null_type, var535=$r0, var3774=$r3, var2177=$z0, var2500=$z1, var2472=$r14, var1393=$r5, var2883=org.apache.lucene.util.BytesRef, var345=$r4, var965=java.lang.Comparable, var3015=$r15, var268=java.lang.Object, var3189=$r6, var3478=$r8, var1035=$r7, var165=$r16, var3679=$r9, var2048=$z2, var2725=$r17, var3387=$r10, var41=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var1355, r1=var137, r2=var3384, null_type=var3404, $r0=var535, $r3=var3774, $z0=var2177, $z1=var2500, $r14=var2472, $r5=var1393, org.apache.lucene.util.BytesRef=var2883, $r4=var345, java.lang.Comparable=var965, $r15=var3015, java.lang.Object=var268, $r6=var3189, $r8=var3478, $r7=var1035, $r16=var165, $r9=var3679, $z2=var2048, $r17=var2725, $r10=var3387, $r11=var41}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "]";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10