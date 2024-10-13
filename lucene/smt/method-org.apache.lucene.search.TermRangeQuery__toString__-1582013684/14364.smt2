(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var3210 0)
(declare-sort var3735 0)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var3735) String)
(declare-fun cast-from-var184-to-var3735 (var184) var3735)
(declare-fun includeLower/2054197383 (var184) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lowerTerm/2054197383 (var184) var3139)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun upperTerm/2054197383 (var184) var3139)
(declare-fun includeUpper/2054197383 (var184) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var184 var184)
(declare-const null-String String)
(declare-const null-var3139 var3139)
(declare-const var426 var184) ; Statement: r1 := @this: org.apache.lucene.search.TermRangeQuery 
(assert (not (= var426 null-var184)))
(declare-const var1817 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1817 null-String)))
(define-const var2312 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2312)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2312!1 String)
(assert (= var2312!1 ""))
(assert true)
(define-const var1858 String (getField/-569116549 (cast-from-var184-to-var3735 var426))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>() 
(assert true)
(define-const var2705 Bool (= var1858 var1817)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
(assert (not (= (ite var2705 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2303 Bool (includeLower/2054197383 var426)) ; Statement: $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
 ; Statement: if $z1 == 0 goto $c0 = 123 
(assert (not (= (ite var2303 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3732 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2312!1 var3732)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2312!2 String)
(assert (str.prefixof var2312!1 var2312!2))
(define-const var947 var3139 (lowerTerm/2054197383 var426)) ; Statement: $r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm> 
 ; Statement: if $r4 == null goto $r15 = "*" 
(assert (= var947 null-var3139)) ; Cond: $r4 == null 
(define-const var2747 String "*") ; Statement: $r15 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2312!2 var2747)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2312!3 String)
(assert (= var2312!3 (str.++ var2312!2 var2747)))
(assert true)
;(assert (append/672562846 var2312!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var2312!4 String)
(assert (= var2312!4 (str.++ var2312!3 " TO ")))
(define-const var1653 var3139 (upperTerm/2054197383 var426)) ; Statement: $r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm> 
 ; Statement: if $r16 == null goto $r17 = "*" 
(assert (= var1653 null-var3139)) ; Cond: $r16 == null 
(define-const var3610 String "*") ; Statement: $r17 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2312!4 var3610)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2312!5 String)
(assert (= var2312!5 (str.++ var2312!4 var3610)))
(define-const var1152 Bool (includeUpper/2054197383 var426)) ; Statement: $z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper> 
 ; Statement: if $z4 == 0 goto $c1 = 125 
(assert (not (= (ite var1152 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2611 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2312!5 var2611)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2312!6 String)
(assert (str.prefixof var2312!5 var2312!6))
(assert true)
(define-const var2914 String (toString/-2075883882 var2312!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var184-to-var3735=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.search.MultiTermQuery), includeLower/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lowerTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), upperTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), includeUpper/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var184=org.apache.lucene.search.TermRangeQuery, var426=r1, var1817=r2, var3210=null_type, var2312=$r0, var3735=org.apache.lucene.search.MultiTermQuery, var1858=$r3, var2705=$z0, var2303=$z1, var3732=$c0, var3139=org.apache.lucene.util.BytesRef, var947=$r4, var2747=$r15, var1653=$r16, var3610=$r17, var1152=$z4, var2611=$c1, var2914=$r5}
; {org.apache.lucene.search.TermRangeQuery=var184, r1=var426, r2=var1817, null_type=var3210, $r0=var2312, org.apache.lucene.search.MultiTermQuery=var3735, $r3=var1858, $z0=var2705, $z1=var2303, $c0=var3732, org.apache.lucene.util.BytesRef=var3139, $r4=var947, $r15=var2747, $r16=var1653, $r17=var3610, $z4=var1152, $c1=var2611, $r5=var2914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	$z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	if $z1 == 0 goto $c0 = 123;	$c0 = 91;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm>;	if $r4 == null goto $r15 = "*";	$r15 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm>;	if $r16 == null goto $r17 = "*";	$r17 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper>;	if $z4 == 0 goto $c1 = 125;	$c1 = 93;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10