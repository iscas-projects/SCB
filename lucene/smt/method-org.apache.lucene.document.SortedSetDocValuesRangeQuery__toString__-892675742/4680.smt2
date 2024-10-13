(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2184 0)
(declare-sort var444 0)
(declare-sort var1511 0)
(declare-sort var3259 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var2184) String)
(declare-fun lowerInclusive/-395504291 (var2184) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var2184) var1511)
(declare-fun cast-from-String-to-var3259 (String) var3259)
(declare-fun append/-1031950772 (String var3523) String)
(declare-fun cast-from-var3259-to-var3523 (var3259) var3523)
(declare-fun upperValue/-395504291 (var2184) var1511)
(declare-fun cast-from-var1511-to-var3259 (var1511) var3259)
(declare-fun upperInclusive/-395504291 (var2184) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2184 var2184)
(declare-const null-String String)
(declare-const null-var1511 var1511)
(declare-const var2667 var2184) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var2667 null-var2184)))
(declare-const var842 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var842 null-String)))
(define-const var3212 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3212)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3212!1 String)
(assert (= var3212!1 ""))
(define-const var2774 String (field/-395504291 var2667)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var2306 Bool (= var2774 var842)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var2306 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3885 Bool (lowerInclusive/-395504291 var2667)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (not (= (ite var3885 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3975 String "[") ; Statement: $r14 = "[" 
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3086 String (append/672562846 var3212!1 var3975)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3212!2 String)
(assert (= var3212!2 (str.++ var3212!1 var3975)))
(define-const var418 var1511 (lowerValue/-395504291 var2667)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (not (= var418 null-var1511)))) ; Negate: Cond: $r4 != null  
(define-const var2377 var3259 (cast-from-String-to-var3259 "*")) ; Statement: $r15 = "*" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2511 String (append/-1031950772 var3086 (cast-from-var3259-to-var3523 var2377))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3086!1 String)
(assert (str.prefixof var3086 var3086!1))
(assert true)
(define-const var3494 String (append/672562846 var2511 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 " TO ")))
(define-const var17 var1511 (upperValue/-395504291 var2667)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (= var17 null-var1511))) ; Cond: $r7 != null 
(define-const var2570 var3259 (cast-from-var1511-to-var3259 (upperValue/-395504291 var2667))) ; Statement: $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var2619 String (append/-1031950772 var3494 (cast-from-var3259-to-var3523 var2570))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3494!1 String)
(assert (str.prefixof var3494 var3494!1))
(define-const var711 Bool (upperInclusive/-395504291 var2667)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (= (ite var711 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1648 String "}") ; Statement: $r17 = "}" 
(assert true) ; Non Conditional
(assert true)
(define-const var1785 String (append/672562846 var2619 var1648)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2619!1 String)
(assert (= var2619!1 (str.++ var2619 var1648)))
(assert true)
(define-const var371 String (toString/-2075883882 var1785)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var3259=([java.lang.String], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3259-to-var3523=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var1511-to-var3259=([org.apache.lucene.util.BytesRef], java.lang.Comparable), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2184=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var2667=r1, var842=r2, var444=null_type, var3212=$r0, var2774=$r3, var2306=$z0, var3885=$z1, var3975=$r14, var3086=$r5, var1511=org.apache.lucene.util.BytesRef, var418=$r4, var3259=java.lang.Comparable, var2377=$r15, var3523=java.lang.Object, var2511=$r6, var3494=$r8, var17=$r7, var2570=$r16, var2619=$r9, var711=$z2, var1648=$r17, var1785=$r10, var371=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var2184, r1=var2667, r2=var842, null_type=var444, $r0=var3212, $r3=var2774, $z0=var2306, $z1=var3885, $r14=var3975, $r5=var3086, org.apache.lucene.util.BytesRef=var1511, $r4=var418, java.lang.Comparable=var3259, $r15=var2377, java.lang.Object=var3523, $r6=var2511, $r8=var3494, $r7=var17, $r16=var2570, $r9=var2619, $z2=var711, $r17=var1648, $r10=var1785, $r11=var371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "[";	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = "*";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "}";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10