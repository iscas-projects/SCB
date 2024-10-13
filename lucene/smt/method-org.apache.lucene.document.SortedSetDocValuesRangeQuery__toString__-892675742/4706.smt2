(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3697 0)
(declare-sort var1180 0)
(declare-sort var1417 0)
(declare-sort var761 0)
(declare-sort var909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-395504291 (var3697) String)
(declare-fun lowerInclusive/-395504291 (var3697) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerValue/-395504291 (var3697) var1417)
(declare-fun cast-from-var1417-to-var761 (var1417) var761)
(declare-fun append/-1031950772 (String var909) String)
(declare-fun cast-from-var761-to-var909 (var761) var909)
(declare-fun upperValue/-395504291 (var3697) var1417)
(declare-fun upperInclusive/-395504291 (var3697) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3697 var3697)
(declare-const null-String String)
(declare-const null-var1417 var1417)
(declare-const var727 var3697) ; Statement: r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery 
(assert (not (= var727 null-var3697)))
(declare-const var939 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var939 null-String)))
(define-const var2801 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2801)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2801!1 String)
(assert (= var2801!1 ""))
(define-const var832 String (field/-395504291 var727)) ; Statement: $r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field> 
(assert true)
(define-const var3940 Bool (= var832 var939)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
(assert (not (= (ite var3940 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3251 Bool (lowerInclusive/-395504291 var727)) ; Statement: $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive> 
 ; Statement: if $z1 == 0 goto $r14 = "{" 
(assert (not (= (ite var3251 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var794 String "[") ; Statement: $r14 = "[" 
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3278 String (append/672562846 var2801!1 var794)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2801!2 String)
(assert (= var2801!2 (str.++ var2801!1 var794)))
(define-const var2817 var1417 (lowerValue/-395504291 var727)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
 ; Statement: if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert (not (= var2817 null-var1417))) ; Cond: $r4 != null 
(define-const var1546 var761 (cast-from-var1417-to-var761 (lowerValue/-395504291 var727))) ; Statement: $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var3404 String (append/-1031950772 var3278 (cast-from-var761-to-var909 var1546))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3278!1 String)
(assert (str.prefixof var3278 var3278!1))
(assert true)
(define-const var852 String (append/672562846 var3404 " TO ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var3404!1 String)
(assert (= var3404!1 (str.++ var3404 " TO ")))
(define-const var3064 var1417 (upperValue/-395504291 var727)) ; Statement: $r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
 ; Statement: if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert (not (= var3064 null-var1417))) ; Cond: $r7 != null 
(define-const var2541 var761 (cast-from-var1417-to-var761 (upperValue/-395504291 var727))) ; Statement: $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue> 
(assert true) ; Non Conditional
(assert true)
(define-const var1289 String (append/-1031950772 var852 (cast-from-var761-to-var909 var2541))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var852!1 String)
(assert (str.prefixof var852 var852!1))
(define-const var2922 Bool (upperInclusive/-395504291 var727)) ; Statement: $z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive> 
 ; Statement: if $z2 == 0 goto $r17 = "}" 
(assert (not (= (ite var2922 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2126 String "]") ; Statement: $r17 = "]" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1982 String (append/672562846 var1289 var2126)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1289!1 String)
(assert (= var1289!1 (str.++ var1289 var2126)))
(assert true)
(define-const var1238 String (toString/-2075883882 var1982)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], java.lang.String), lowerInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), cast-from-var1417-to-var761=([org.apache.lucene.util.BytesRef], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var761-to-var909=([java.lang.Comparable], java.lang.Object), upperValue/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], org.apache.lucene.util.BytesRef), upperInclusive/-395504291=([org.apache.lucene.document.SortedSetDocValuesRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3697=org.apache.lucene.document.SortedSetDocValuesRangeQuery, var727=r1, var939=r2, var1180=null_type, var2801=$r0, var832=$r3, var3940=$z0, var3251=$z1, var794=$r14, var3278=$r5, var1417=org.apache.lucene.util.BytesRef, var2817=$r4, var761=java.lang.Comparable, var1546=$r15, var909=java.lang.Object, var3404=$r6, var852=$r8, var3064=$r7, var2541=$r16, var1289=$r9, var2922=$z2, var2126=$r17, var1982=$r10, var1238=$r11}
; {org.apache.lucene.document.SortedSetDocValuesRangeQuery=var3697, r1=var727, r2=var939, null_type=var1180, $r0=var2801, $r3=var832, $z0=var3940, $z1=var3251, $r14=var794, $r5=var3278, org.apache.lucene.util.BytesRef=var1417, $r4=var2817, java.lang.Comparable=var761, $r15=var1546, java.lang.Object=var909, $r6=var3404, $r8=var852, $r7=var3064, $r16=var2541, $r9=var1289, $z2=var2922, $r17=var2126, $r10=var1982, $r11=var1238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedSetDocValuesRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	$z1 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean lowerInclusive>;	if $z1 == 0 goto $r14 = "{";	$r14 = "[";	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	if $r4 != null goto $r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r15 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef lowerValue>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r7 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	if $r7 != null goto $r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r16 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: org.apache.lucene.util.BytesRef upperValue>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$z2 = r1.<org.apache.lucene.document.SortedSetDocValuesRangeQuery: boolean upperInclusive>;	if $z2 == 0 goto $r17 = "}";	$r17 = "]";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 10