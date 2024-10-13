(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort var3245 0)
(declare-sort var2560 0)
(declare-sort var1621 0)
(declare-sort var2291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var654) String)
(declare-fun lowerInclusive/-395504291 (var654) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var654) var2560)
(declare-fun cast-from-String-to-var1621 (String) var1621)
(declare-fun append/-1031950772 (String var2291) String)
(declare-fun cast-from-var1621-to-var2291 (var1621) var2291)
(declare-fun upperValue/-395504291 (var654) var2560)
(declare-fun cast-from-var2560-to-var1621 (var2560) var1621)
(declare-fun upperInclusive/-395504291 (var654) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var654 var654)
(declare-const null-String String)
(declare-const null-var2560 var2560)
(declare-const var233 var654) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var233 null-var654)))
(declare-const var2370 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2370 null-String)))
(define-const var1590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1590!1 String)
(assert (= var1590!1 ""))
(define-const var2459 String (field/-395504291 var233)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var3485 Bool (= var2459 var2370)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var3485 1 0) 0))) ; Cond: $z0 != 0 
(define-const var21 Bool (lowerInclusive/-395504291 var233)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var21 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3166 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var2411 String (append/672562846 var1590!1 var3166)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1590!2 String)
(assert (= var1590!2 (str.++ var1590!1 var3166)))
(define-const var531 var2560 (lowerValue/-395504291 var233)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (not (= var531 null-var2560)))) ; Negate: Cond: $r4 != null  
(define-const var3517 var1621 (cast-from-String-to-var1621 "*")) ; Statement: $r15 = "*" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var201 String (append/-1031950772 var2411 (cast-from-var1621-to-var2291 var3517))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2411!1 String)
(assert (str.prefixof var2411 var2411!1))
(assert true)
(define-const var416 String (append/672562846 var201 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var201!1 String)
(assert (= var201!1 (str.++ var201 " TO ")))
(define-const var1194 var2560 (upperValue/-395504291 var233)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (= var1194 null-var2560))) ; Cond: $r7 != null 
(define-const var1032 var1621 (cast-from-var2560-to-var1621 (upperValue/-395504291 var233))) ; Statement: $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var3777 String (append/-1031950772 var416 (cast-from-var1621-to-var2291 var1032))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var416!1 String)
(assert (str.prefixof var416 var416!1))
(define-const var3825 Bool (upperInclusive/-395504291 var233)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (= (ite var3825 1 0) 0)) ; Cond: $z2 == 0 
(define-const var962 String "}") ; Statement: $r17 = "}" 
(assert true) ; Non Conditional
(assert true)
(define-const var170 String (append/672562846 var3777 var962)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3777!1 String)
(assert (= var3777!1 (str.++ var3777 var962)))
(assert true)
(define-const var3924 String (toString/-2075883882 var170)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var1621=([java.lang.String], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1621-to-var2291=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var2560-to-var1621=([org.apache.lucene.util.BytesRef], java.lang.Comparable), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var654=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var233=r1, var2370=r2, var3245=null_type, var1590=$r0, var2459=$r3, var3485=$z0, var21=$z1, var3166=$r14, var2411=$r5, var2560=org.apache.lucene.util.BytesRef, var531=$r4, var1621=java.lang.Comparable, var3517=$r15, var2291=java.lang.Object, var201=$r6, var416=$r8, var1194=$r7, var1032=$r16, var3777=$r9, var3825=$z2, var962=$r17, var170=$r10, var3924=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var654, r1=var233, r2=var2370, null_type=var3245, $r0=var1590, $r3=var2459, $z0=var3485, $z1=var21, $r14=var3166, $r5=var2411, org.apache.lucene.util.BytesRef=var2560, $r4=var531, java.lang.Comparable=var1621, $r15=var3517, java.lang.Object=var2291, $r6=var201, $r8=var416, $r7=var1194, $r16=var1032, $r9=var3777, $z2=var3825, $r17=var962, $r10=var170, $r11=var3924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = "*";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "}";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10