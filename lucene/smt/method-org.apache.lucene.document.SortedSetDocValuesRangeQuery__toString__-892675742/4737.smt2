(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort var2298 0)
(declare-sort var371 0)
(declare-sort var1853 0)
(declare-sort var1409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var1845) String)
(declare-fun lowerInclusive/-395504291 (var1845) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var1845) var371)
(declare-fun cast-from-String-to-var1853 (String) var1853)
(declare-fun append/-1031950772 (String var1409) String)
(declare-fun cast-from-var1853-to-var1409 (var1853) var1409)
(declare-fun upperValue/-395504291 (var1845) var371)
(declare-fun upperInclusive/-395504291 (var1845) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1845 var1845)
(declare-const null-String String)
(declare-const null-var371 var371)
(declare-const var3123 var1845) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var3123 null-var1845)))
(declare-const var2943 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2943 null-String)))
(define-const var3681 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3681)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3681!1 String)
(assert (= var3681!1 ""))
(define-const var3240 String (field/-395504291 var3123)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var1269 Bool (= var3240 var2943)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var1269 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3081 Bool (lowerInclusive/-395504291 var3123)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var3081 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1785 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var1073 String (append/672562846 var3681!1 var1785)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3681!2 String)
(assert (= var3681!2 (str.++ var3681!1 var1785)))
(define-const var2224 var371 (lowerValue/-395504291 var3123)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (not (= var2224 null-var371)))) ; Negate: Cond: $r4 != null  
(define-const var1957 var1853 (cast-from-String-to-var1853 "*")) ; Statement: $r15 = "*" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var226 String (append/-1031950772 var1073 (cast-from-var1853-to-var1409 var1957))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1073!1 String)
(assert (str.prefixof var1073 var1073!1))
(assert true)
(define-const var213 String (append/672562846 var226 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var226!1 String)
(assert (= var226!1 (str.++ var226 " TO ")))
(define-const var2020 var371 (upperValue/-395504291 var3123)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (not (= var2020 null-var371)))) ; Negate: Cond: $r7 != null  
(define-const var181 var1853 (cast-from-String-to-var1853 "*")) ; Statement: $r16 = "*" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var493 String (append/-1031950772 var213 (cast-from-var1853-to-var1409 var181))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var213!1 String)
(assert (str.prefixof var213 var213!1))
(define-const var3203 Bool (upperInclusive/-395504291 var3123)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (= (ite var3203 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3390 String "}") ; Statement: $r17 = "}" 
(assert true) ; Non Conditional
(assert true)
(define-const var105 String (append/672562846 var493 var3390)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var493!1 String)
(assert (= var493!1 (str.++ var493 var3390)))
(assert true)
(define-const var2235 String (toString/-2075883882 var105)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var1853=([java.lang.String], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1853-to-var1409=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1845=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var3123=r1, var2943=r2, var2298=null_type, var3681=$r0, var3240=$r3, var1269=$z0, var3081=$z1, var1785=$r14, var1073=$r5, var371=org.apache.lucene.util.BytesRef, var2224=$r4, var1853=java.lang.Comparable, var1957=$r15, var1409=java.lang.Object, var226=$r6, var213=$r8, var2020=$r7, var181=$r16, var493=$r9, var3203=$z2, var3390=$r17, var105=$r10, var2235=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var1845, r1=var3123, r2=var2943, null_type=var2298, $r0=var3681, $r3=var3240, $z0=var1269, $z1=var3081, $r14=var1785, $r5=var1073, org.apache.lucene.util.BytesRef=var371, $r4=var2224, java.lang.Comparable=var1853, $r15=var1957, java.lang.Object=var1409, $r6=var226, $r8=var213, $r7=var2020, $r16=var181, $r9=var493, $z2=var3203, $r17=var3390, $r10=var105, $r11=var2235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = "*";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = "*";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "}";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10