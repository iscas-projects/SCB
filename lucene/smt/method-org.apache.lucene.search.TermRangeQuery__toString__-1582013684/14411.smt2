(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var158 0)
(declare-sort var2188 0)
(declare-sort var1458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var2188) String)
(declare-fun cast-from-var3437-to-var2188 (var3437) var2188)
(declare-fun includeLower/2054197383 (var3437) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lowerTerm/2054197383 (var3437) var1458)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun upperTerm/2054197383 (var3437) var1458)
(declare-fun includeUpper/2054197383 (var3437) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3437 var3437)
(declare-const null-String String)
(declare-const null-var1458 var1458)
(declare-const var3182 var3437) ; Statement: r1 := @this: org.apache.lucene.search.TermRangeQuery 
(assert (not (= var3182 null-var3437)))
(declare-const var223 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var223 null-String)))
(define-const var626 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var626)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var626!1 String)
(assert (= var626!1 ""))
(assert true)
(define-const var842 String (getField/-569116549 (cast-from-var3437-to-var2188 var3182))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>() 
(assert true)
(define-const var948 Bool (= var842 var223)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
(assert (not (= (ite var948 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1051 Bool (includeLower/2054197383 var3182)) ; Statement: $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower> 
 ; Statement: if $z1 == 0 goto $c0 = 123 
(assert (= (ite var1051 1 0) 0)) ; Cond: $z1 == 0 
(define-const var502 Int 123) ; Statement: $c0 = 123 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var626!1 var502)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var626!2 String)
(assert (str.prefixof var626!1 var626!2))
(define-const var475 var1458 (lowerTerm/2054197383 var3182)) ; Statement: $r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm> 
 ; Statement: if $r4 == null goto $r15 = "*" 
(assert (= var475 null-var1458)) ; Cond: $r4 == null 
(define-const var2296 String "*") ; Statement: $r15 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var626!2 var2296)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var626!3 String)
(assert (= var626!3 (str.++ var626!2 var2296)))
(assert true)
;(assert (append/672562846 var626!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var626!4 String)
(assert (= var626!4 (str.++ var626!3 " TO ")))
(define-const var337 var1458 (upperTerm/2054197383 var3182)) ; Statement: $r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm> 
 ; Statement: if $r16 == null goto $r17 = "*" 
(assert (= var337 null-var1458)) ; Cond: $r16 == null 
(define-const var1857 String "*") ; Statement: $r17 = "*" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var626!4 var1857)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var626!5 String)
(assert (= var626!5 (str.++ var626!4 var1857)))
(define-const var1259 Bool (includeUpper/2054197383 var3182)) ; Statement: $z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper> 
 ; Statement: if $z4 == 0 goto $c1 = 125 
(assert (= (ite var1259 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3958 Int 125) ; Statement: $c1 = 125 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var626!5 var3958)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var626!6 String)
(assert (str.prefixof var626!5 var626!6))
(assert true)
(define-const var1257 String (toString/-2075883882 var626!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var3437-to-var2188=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.search.MultiTermQuery), includeLower/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lowerTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), upperTerm/2054197383=([org.apache.lucene.search.TermRangeQuery], org.apache.lucene.util.BytesRef), includeUpper/2054197383=([org.apache.lucene.search.TermRangeQuery], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3437=org.apache.lucene.search.TermRangeQuery, var3182=r1, var223=r2, var158=null_type, var626=$r0, var2188=org.apache.lucene.search.MultiTermQuery, var842=$r3, var948=$z0, var1051=$z1, var502=$c0, var1458=org.apache.lucene.util.BytesRef, var475=$r4, var2296=$r15, var337=$r16, var1857=$r17, var1259=$z4, var3958=$c1, var1257=$r5}
; {org.apache.lucene.search.TermRangeQuery=var3437, r1=var3182, r2=var223, null_type=var158, $r0=var626, org.apache.lucene.search.MultiTermQuery=var2188, $r3=var842, $z0=var948, $z1=var1051, $c0=var502, org.apache.lucene.util.BytesRef=var1458, $r4=var475, $r15=var2296, $r16=var337, $r17=var1857, $z4=var1259, $c1=var3958, $r5=var1257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.TermRangeQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	$z1 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeLower>;	if $z1 == 0 goto $c0 = 123;	$c0 = 123;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef lowerTerm>;	if $r4 == null goto $r15 = "*";	$r15 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r16 = r1.<org.apache.lucene.search.TermRangeQuery: org.apache.lucene.util.BytesRef upperTerm>;	if $r16 == null goto $r17 = "*";	$r17 = "*";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$z4 = r1.<org.apache.lucene.search.TermRangeQuery: boolean includeUpper>;	if $z4 == 0 goto $c1 = 125;	$c1 = 125;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 10