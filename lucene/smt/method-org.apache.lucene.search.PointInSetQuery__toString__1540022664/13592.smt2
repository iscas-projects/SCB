(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1473 0)
(declare-sort var1808 0)
(declare-sort var1832 0)
(declare-sort var3529 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-543217653 (var1473) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sortedPackedPoints/-543217653 (var1473) var1832)
(declare-fun iterator/-604119293 (var1832) var3529)
(declare-fun numDims/-543217653 (var1473) Int)
(declare-fun bytesPerDim/-543217653 (var1473) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun next/1597558740 (var3529) var2253)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1473 var1473)
(declare-const null-String String)
(declare-const null-var2253 var2253)
(declare-const var1563 var1473) ; Statement: r1 := @this: org.apache.lucene.search.PointInSetQuery 
(assert (not (= var1563 null-var1473)))
(declare-const var3120 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3120 null-String)))
(define-const var3322 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3322)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3322!1 String)
(assert (= var3322!1 ""))
(define-const var3932 String (field/-543217653 var1563)) ; Statement: $r3 = r1.<org.apache.lucene.search.PointInSetQuery: java.lang.String field> 
(assert true)
(define-const var1715 Bool (= var3932 var3120)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(assert (not (= (ite var1715 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var3322!1 "{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3322!2 String)
(assert (= var3322!2 (str.++ var3322!1 "{")))
(define-const var848 var1832 (sortedPackedPoints/-543217653 var1563)) ; Statement: $r4 = r1.<org.apache.lucene.search.PointInSetQuery: org.apache.lucene.index.PrefixCodedTerms sortedPackedPoints> 
(assert true)
(define-const var2702 var3529 (iterator/-604119293 var848)) ; Statement: $r9 = virtualinvoke $r4.<org.apache.lucene.index.PrefixCodedTerms: org.apache.lucene.index.PrefixCodedTerms$TermIterator iterator()>() 
(define-const var181 Int (numDims/-543217653 var1563)) ; Statement: $i1 = r1.<org.apache.lucene.search.PointInSetQuery: int numDims> 
(define-const var305 Int (bytesPerDim/-543217653 var1563)) ; Statement: $i0 = r1.<org.apache.lucene.search.PointInSetQuery: int bytesPerDim> 
(define-const var1973 Int (* var181 var305)) ; Statement: $i2 = $i1 * $i0 
(define-const var3993 (Array Int Int) arr-Int-init) ; Statement: $r10 = newarray (byte)[$i2] 
(define-const var3707 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var1922 var2253 (next/1597558740 var2702)) ; Statement: r11 = virtualinvoke $r9.<org.apache.lucene.index.PrefixCodedTerms$TermIterator: org.apache.lucene.util.BytesRef next()>() 
(assert true) ; Non Conditional
 ; Statement: if r11 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var1922 null-var2253)) ; Cond: r11 == null 
(assert true)
;(assert (append/672562846 var3322!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3322!3 String)
(assert (= var3322!3 (str.++ var3322!2 "}")))
(assert true)
(define-const var2844 String (toString/-2075883882 var3322!3)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-543217653=([org.apache.lucene.search.PointInSetQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sortedPackedPoints/-543217653=([org.apache.lucene.search.PointInSetQuery], org.apache.lucene.index.PrefixCodedTerms), iterator/-604119293=([org.apache.lucene.index.PrefixCodedTerms], org.apache.lucene.index.PrefixCodedTerms$TermIterator), numDims/-543217653=([org.apache.lucene.search.PointInSetQuery], int), bytesPerDim/-543217653=([org.apache.lucene.search.PointInSetQuery], int), arr-Int-init=([], byte[]), next/1597558740=([org.apache.lucene.index.PrefixCodedTerms$TermIterator], org.apache.lucene.util.BytesRef), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1473=org.apache.lucene.search.PointInSetQuery, var1563=r1, var3120=r2, var1808=null_type, var3322=$r0, var3932=$r3, var1715=$z0, var1832=org.apache.lucene.index.PrefixCodedTerms, var848=$r4, var3529=org.apache.lucene.index.PrefixCodedTerms$TermIterator, var2702=$r9, var181=$i1, var305=$i0, var1973=$i2, var3993=$r10, var3707=z1, var2253=org.apache.lucene.util.BytesRef, var1922=r11, var2844=$r5}
; {org.apache.lucene.search.PointInSetQuery=var1473, r1=var1563, r2=var3120, null_type=var1808, $r0=var3322, $r3=var3932, $z0=var1715, org.apache.lucene.index.PrefixCodedTerms=var1832, $r4=var848, org.apache.lucene.index.PrefixCodedTerms$TermIterator=var3529, $r9=var2702, $i1=var181, $i0=var305, $i2=var1973, $r10=var3993, z1=var3707, org.apache.lucene.util.BytesRef=var2253, r11=var1922, $r5=var2844}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.PointInSetQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.search.PointInSetQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r4 = r1.<org.apache.lucene.search.PointInSetQuery: org.apache.lucene.index.PrefixCodedTerms sortedPackedPoints>;	$r9 = virtualinvoke $r4.<org.apache.lucene.index.PrefixCodedTerms: org.apache.lucene.index.PrefixCodedTerms$TermIterator iterator()>();	$i1 = r1.<org.apache.lucene.search.PointInSetQuery: int numDims>;	$i0 = r1.<org.apache.lucene.search.PointInSetQuery: int bytesPerDim>;	$i2 = $i1 * $i0;	$r10 = newarray (byte)[$i2];	z1 = 1;	r11 = virtualinvoke $r9.<org.apache.lucene.index.PrefixCodedTerms$TermIterator: org.apache.lucene.util.BytesRef next()>();	if r11 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4