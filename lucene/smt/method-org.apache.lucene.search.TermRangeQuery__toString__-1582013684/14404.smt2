(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2454 0)
(declare-sort var2744 0)
(declare-sort var3058 0)
(declare-sort var802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var3058) String)
(declare-fun cast-from-var2454-to-var3058 (var2454) var3058)
(declare-fun includeLower/2054197383 (var2454) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lowerTerm/2054197383 (var2454) var802)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun upperTerm/2054197383 (var2454) var802)
(declare-fun includeUpper/2054197383 (var2454) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2454 var2454)
(declare-const null-String String)
(declare-const null-var802 var802)
(declare-const var1658 var2454) ; Statement: r1 := @this: org.apache.lucene.search.TermRangeQuery 
(assert (not (= var1658 null-var2454)))
(declare-const var3354 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3354 null-String)))
(define-const var1101 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1101)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1101!1 String)
(assert (= var1101!1 ""))
(assert true)
(define-const var2923 String (getField/-569116549 (cast-from-var2454-to-var3058 var1658))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>() 
(assert true)
(define-const var2855 Bool (= var2923 var3354)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
(assert (not (= (ite var2855 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2628 Bool (includeLower/2054197383 var1658)) ; Statement: $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
 ; Statement: if $z1 == 0 goto $c0 = 123 
(assert (= (ite var2628 1 0) 0)) ; Cond: $z1 == 0 
(define-const var513 Int 123) ; Statement: $c0 = 123 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1101!1 var513)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var1101!2 String)
(assert (str.prefixof var1101!1 var1101!2))
(define-const var58 var802 (lowerTerm/2054197383 var1658)) ; Statement: $r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm> 
 ; Statement: if $r4 == null goto $r15 = "*" 
(assert (= var58 null-var802)) ; Cond: $r4 == null 
(define-const var3718 String "*") ; Statement: $r15 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1101!2 var3718)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1101!3 String)
(assert (= var1101!3 (str.++ var1101!2 var3718)))
(assert true)
;(assert (append/672562846 var1101!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1101!4 String)
(assert (= var1101!4 (str.++ var1101!3 " TO ")))
(define-const var3429 var802 (upperTerm/2054197383 var1658)) ; Statement: $r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm> 
 ; Statement: if $r16 == null goto $r17 = "*" 
(assert (= var3429 null-var802)) ; Cond: $r16 == null 
(define-const var808 String "*") ; Statement: $r17 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1101!4 var808)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1101!5 String)
(assert (= var1101!5 (str.++ var1101!4 var808)))
(define-const var3205 Bool (includeUpper/2054197383 var1658)) ; Statement: $z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper> 
 ; Statement: if $z4 == 0 goto $c1 = 125 
(assert (not (= (ite var3205 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2569 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1101!5 var2569)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1101!6 String)
(assert (str.prefixof var1101!5 var1101!6))
(assert true)
(define-const var3829 String (toString/-2075883882 var1101!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var2454-to-var3058=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.search.MultiTermQuery), includeLower/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lowerTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), upperTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), includeUpper/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2454=org.apache.lucene.search.TermRangeQuery, var1658=r1, var3354=r2, var2744=null_type, var1101=$r0, var3058=org.apache.lucene.search.MultiTermQuery, var2923=$r3, var2855=$z0, var2628=$z1, var513=$c0, var802=org.apache.lucene.util.BytesRef, var58=$r4, var3718=$r15, var3429=$r16, var808=$r17, var3205=$z4, var2569=$c1, var3829=$r5}
; {org.apache.lucene.search.TermRangeQuery=var2454, r1=var1658, r2=var3354, null_type=var2744, $r0=var1101, org.apache.lucene.search.MultiTermQuery=var3058, $r3=var2923, $z0=var2855, $z1=var2628, $c0=var513, org.apache.lucene.util.BytesRef=var802, $r4=var58, $r15=var3718, $r16=var3429, $r17=var808, $z4=var3205, $c1=var2569, $r5=var3829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	$z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	if $z1 == 0 goto $c0 = 123;	$c0 = 123;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm>;	if $r4 == null goto $r15 = "*";	$r15 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm>;	if $r16 == null goto $r17 = "*";	$r17 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper>;	if $z4 == 0 goto $c1 = 125;	$c1 = 93;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10