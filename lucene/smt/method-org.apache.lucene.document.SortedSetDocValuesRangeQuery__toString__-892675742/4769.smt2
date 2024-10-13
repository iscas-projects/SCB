(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2718 0)
(declare-sort var1301 0)
(declare-sort var2086 0)
(declare-sort var2383 0)
(declare-sort var2576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var2718) String)
(declare-fun lowerInclusive/-395504291 (var2718) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var2718) var2086)
(declare-fun cast-from-var2086-to-var2383 (var2086) var2383)
(declare-fun append/-1031950772 (String var2576) String)
(declare-fun cast-from-var2383-to-var2576 (var2383) var2576)
(declare-fun upperValue/-395504291 (var2718) var2086)
(declare-fun cast-from-String-to-var2383 (String) var2383)
(declare-fun upperInclusive/-395504291 (var2718) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2718 var2718)
(declare-const null-String String)
(declare-const null-var2086 var2086)
(declare-const var2932 var2718) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var2932 null-var2718)))
(declare-const var2621 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2621 null-String)))
(define-const var2322 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2322)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2322!1 String)
(assert (= var2322!1 ""))
(define-const var1033 String (field/-395504291 var2932)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var3614 Bool (= var1033 var2621)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var3614 1 0) 0))) ; Cond: $z0 != 0 
(define-const var928 Bool (lowerInclusive/-395504291 var2932)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (= (ite var928 1 0) 0)) ; Cond: $z1 == 0 
(define-const var17 String "{") ; Statement: $r14 = "{" 
(assert true) ; Non Conditional
(assert true)
(define-const var1742 String (append/672562846 var2322!1 var17)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2322!2 String)
(assert (= var2322!2 (str.++ var2322!1 var17)))
(define-const var2312 var2086 (lowerValue/-395504291 var2932)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (= var2312 null-var2086))) ; Cond: $r4 != null 
(define-const var3063 var2383 (cast-from-var2086-to-var2383 (lowerValue/-395504291 var2932))) ; Statement: $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var3878 String (append/-1031950772 var1742 (cast-from-var2383-to-var2576 var3063))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1742!1 String)
(assert (str.prefixof var1742 var1742!1))
(assert true)
(define-const var154 String (append/672562846 var3878 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var3878!1 String)
(assert (= var3878!1 (str.++ var3878 " TO ")))
(define-const var2829 var2086 (upperValue/-395504291 var2932)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (not (= var2829 null-var2086)))) ; Negate: Cond: $r7 != null  
(define-const var822 var2383 (cast-from-String-to-var2383 "*")) ; Statement: $r16 = "*" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3408 String (append/-1031950772 var154 (cast-from-var2383-to-var2576 var822))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var154!1 String)
(assert (str.prefixof var154 var154!1))
(define-const var598 Bool (upperInclusive/-395504291 var2932)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (= (ite var598 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2234 String "}") ; Statement: $r17 = "}" 
(assert true) ; Non Conditional
(assert true)
(define-const var3012 String (append/672562846 var3408 var2234)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3408!1 String)
(assert (= var3408!1 (str.++ var3408 var2234)))
(assert true)
(define-const var2154 String (toString/-2075883882 var3012)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var2086-to-var2383=([org.apache.lucene.util.BytesRef], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2383-to-var2576=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-String-to-var2383=([java.lang.String], java.lang.Comparable), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2718=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var2932=r1, var2621=r2, var1301=null_type, var2322=$r0, var1033=$r3, var3614=$z0, var928=$z1, var17=$r14, var1742=$r5, var2086=org.apache.lucene.util.BytesRef, var2312=$r4, var2383=java.lang.Comparable, var3063=$r15, var2576=java.lang.Object, var3878=$r6, var154=$r8, var2829=$r7, var822=$r16, var3408=$r9, var598=$z2, var2234=$r17, var3012=$r10, var2154=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var2718, r1=var2932, r2=var2621, null_type=var1301, $r0=var2322, $r3=var1033, $z0=var3614, $z1=var928, $r14=var17, $r5=var1742, org.apache.lucene.util.BytesRef=var2086, $r4=var2312, java.lang.Comparable=var2383, $r15=var3063, java.lang.Object=var2576, $r6=var3878, $r8=var154, $r7=var2829, $r16=var822, $r9=var3408, $z2=var598, $r17=var2234, $r10=var3012, $r11=var2154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "{";	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = "*";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "}";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10