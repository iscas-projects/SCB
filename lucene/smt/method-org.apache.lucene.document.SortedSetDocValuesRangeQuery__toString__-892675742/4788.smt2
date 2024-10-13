(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort var2384 0)
(declare-sort var817 0)
(declare-sort var1200 0)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var3952) String)
(declare-fun lowerInclusive/-395504291 (var3952) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var3952) var817)
(declare-fun cast-from-var817-to-var1200 (var817) var1200)
(declare-fun append/-1031950772 (String var142) String)
(declare-fun cast-from-var1200-to-var142 (var1200) var142)
(declare-fun upperValue/-395504291 (var3952) var817)
(declare-fun upperInclusive/-395504291 (var3952) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3952 var3952)
(declare-const null-String String)
(declare-const null-var817 var817)
(declare-const var3441 var3952) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var3441 null-var3952)))
(declare-const var3307 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3307 null-String)))
(define-const var3210 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3210)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3210!1 String)
(assert (= var3210!1 ""))
(define-const var3061 String (field/-395504291 var3441)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var151 Bool (= var3061 var3307)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var151 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1756 Bool (lowerInclusive/-395504291 var3441)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var1756 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3860 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var2705 String (append/672562846 var3210!1 var3860)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3210!2 String)
(assert (= var3210!2 (str.++ var3210!1 var3860)))
(define-const var2110 var817 (lowerValue/-395504291 var3441)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (= var2110 null-var817))) ; Cond: $r4 != null 
(define-const var3125 var1200 (cast-from-var817-to-var1200 (lowerValue/-395504291 var3441))) ; Statement: $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var1831 String (append/-1031950772 var2705 (cast-from-var1200-to-var142 var3125))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2705!1 String)
(assert (str.prefixof var2705 var2705!1))
(assert true)
(define-const var432 String (append/672562846 var1831 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1831!1 String)
(assert (= var1831!1 (str.++ var1831 " TO ")))
(define-const var1093 var817 (upperValue/-395504291 var3441)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (= var1093 null-var817))) ; Cond: $r7 != null 
(define-const var3327 var1200 (cast-from-var817-to-var1200 (upperValue/-395504291 var3441))) ; Statement: $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var1127 String (append/-1031950772 var432 (cast-from-var1200-to-var142 var3327))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var432!1 String)
(assert (str.prefixof var432 var432!1))
(define-const var1003 Bool (upperInclusive/-395504291 var3441)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (= (ite var1003 1 0) 0)) ; Cond: $z2 == 0 
(define-const var939 String "}") ; Statement: $r17 = "}" 
(assert true) ; Non Conditional
(assert true)
(define-const var3867 String (append/672562846 var1127 var939)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1127!1 String)
(assert (= var1127!1 (str.++ var1127 var939)))
(assert true)
(define-const var3918 String (toString/-2075883882 var3867)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var817-to-var1200=([org.apache.lucene.util.BytesRef], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1200-to-var142=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3952=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var3441=r1, var3307=r2, var2384=null_type, var3210=$r0, var3061=$r3, var151=$z0, var1756=$z1, var3860=$r14, var2705=$r5, var817=org.apache.lucene.util.BytesRef, var2110=$r4, var1200=java.lang.Comparable, var3125=$r15, var142=java.lang.Object, var1831=$r6, var432=$r8, var1093=$r7, var3327=$r16, var1127=$r9, var1003=$z2, var939=$r17, var3867=$r10, var3918=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var3952, r1=var3441, r2=var3307, null_type=var2384, $r0=var3210, $r3=var3061, $z0=var151, $z1=var1756, $r14=var3860, $r5=var2705, org.apache.lucene.util.BytesRef=var817, $r4=var2110, java.lang.Comparable=var1200, $r15=var3125, java.lang.Object=var142, $r6=var1831, $r8=var432, $r7=var1093, $r16=var3327, $r9=var1127, $z2=var1003, $r17=var939, $r10=var3867, $r11=var3918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "}";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10