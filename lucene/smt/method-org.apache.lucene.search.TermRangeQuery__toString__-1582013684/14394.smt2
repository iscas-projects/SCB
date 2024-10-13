(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var1760 0)
(declare-sort var332 0)
(declare-sort var3259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var332) String)
(declare-fun cast-from-var1619-to-var332 (var1619) var332)
(declare-fun includeLower/2054197383 (var1619) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lowerTerm/2054197383 (var1619) var3259)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun upperTerm/2054197383 (var1619) var3259)
(declare-fun includeUpper/2054197383 (var1619) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1619 var1619)
(declare-const null-String String)
(declare-const null-var3259 var3259)
(declare-const var1402 var1619) ; Statement: r1 := @this: org.apache.lucene.search.TermRangeQuery 
(assert (not (= var1402 null-var1619)))
(declare-const var982 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var982 null-String)))
(define-const var2601 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2601)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2601!1 String)
(assert (= var2601!1 ""))
(assert true)
(define-const var3656 String (getField/-569116549 (cast-from-var1619-to-var332 var1402))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>() 
(assert true)
(define-const var2171 Bool (= var3656 var982)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
(assert (not (= (ite var2171 1 0) 0))) ; Cond: $z0 != 0 
(define-const var161 Bool (includeLower/2054197383 var1402)) ; Statement: $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
 ; Statement: if $z1 == 0 goto $c0 = 123 
(assert (not (= (ite var161 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1845 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2601!1 var1845)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2601!2 String)
(assert (str.prefixof var2601!1 var2601!2))
(define-const var410 var3259 (lowerTerm/2054197383 var1402)) ; Statement: $r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm> 
 ; Statement: if $r4 == null goto $r15 = "*" 
(assert (= var410 null-var3259)) ; Cond: $r4 == null 
(define-const var43 String "*") ; Statement: $r15 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2601!2 var43)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2601!3 String)
(assert (= var2601!3 (str.++ var2601!2 var43)))
(assert true)
;(assert (append/672562846 var2601!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var2601!4 String)
(assert (= var2601!4 (str.++ var2601!3 " TO ")))
(define-const var1160 var3259 (upperTerm/2054197383 var1402)) ; Statement: $r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm> 
 ; Statement: if $r16 == null goto $r17 = "*" 
(assert (= var1160 null-var3259)) ; Cond: $r16 == null 
(define-const var2640 String "*") ; Statement: $r17 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2601!4 var2640)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2601!5 String)
(assert (= var2601!5 (str.++ var2601!4 var2640)))
(define-const var3235 Bool (includeUpper/2054197383 var1402)) ; Statement: $z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper> 
 ; Statement: if $z4 == 0 goto $c1 = 125 
(assert (= (ite var3235 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1997 Int 125) ; Statement: $c1 = 125 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2601!5 var1997)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2601!6 String)
(assert (str.prefixof var2601!5 var2601!6))
(assert true)
(define-const var1268 String (toString/-2075883882 var2601!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var1619-to-var332=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.search.MultiTermQuery), includeLower/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lowerTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), upperTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), includeUpper/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1619=org.apache.lucene.search.TermRangeQuery, var1402=r1, var982=r2, var1760=null_type, var2601=$r0, var332=org.apache.lucene.search.MultiTermQuery, var3656=$r3, var2171=$z0, var161=$z1, var1845=$c0, var3259=org.apache.lucene.util.BytesRef, var410=$r4, var43=$r15, var1160=$r16, var2640=$r17, var3235=$z4, var1997=$c1, var1268=$r5}
; {org.apache.lucene.search.TermRangeQuery=var1619, r1=var1402, r2=var982, null_type=var1760, $r0=var2601, org.apache.lucene.search.MultiTermQuery=var332, $r3=var3656, $z0=var2171, $z1=var161, $c0=var1845, org.apache.lucene.util.BytesRef=var3259, $r4=var410, $r15=var43, $r16=var1160, $r17=var2640, $z4=var3235, $c1=var1997, $r5=var1268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	$z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	if $z1 == 0 goto $c0 = 123;	$c0 = 91;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm>;	if $r4 == null goto $r15 = "*";	$r15 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm>;	if $r16 == null goto $r17 = "*";	$r17 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper>;	if $z4 == 0 goto $c1 = 125;	$c1 = 125;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10