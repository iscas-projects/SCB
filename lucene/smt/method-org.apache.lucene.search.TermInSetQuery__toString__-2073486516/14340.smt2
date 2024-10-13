(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3009 0)
(declare-sort var3255 0)
(declare-sort var2766 0)
(declare-sort var2844 0)
(declare-sort var2579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/643938503 (var3009) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun termData/643938503 (var3009) var2766)
(declare-fun iterator/-604119293 (var2766) var2844)
(declare-fun next/1597558740 (var2844) var2579)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3009 var3009)
(declare-const null-String String)
(declare-const null-var2579 var2579)
(declare-const var1632 var3009) ; Statement: r1 := @this: org.apache.lucene.search.TermInSetQuery 
(assert (not (= var1632 null-var3009)))
(declare-const var1526 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1526 null-String)))
(define-const var2149 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2149)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2149!1 String)
(assert (= var2149!1 ""))
(define-const var2095 String (field/643938503 var1632)) ; Statement: $r2 = r1.<org.apache.lucene.search.TermInSetQuery: java.lang.String field> 
(assert true)
;(assert (append/672562846 var2149!1 var2095)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2149!2 String)
(assert (= var2149!2 (str.++ var2149!1 var2095)))
(assert true)
;(assert (append/672562846 var2149!2 ":(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":(") 
(declare-const var2149!3 String)
(assert (= var2149!3 (str.++ var2149!2 ":(")))
(define-const var1937 var2766 (termData/643938503 var1632)) ; Statement: $r3 = r1.<org.apache.lucene.search.TermInSetQuery: org.apache.lucene.index.PrefixCodedTerms termData> 
(assert true)
(define-const var15 var2844 (iterator/-604119293 var1937)) ; Statement: r4 = virtualinvoke $r3.<org.apache.lucene.index.PrefixCodedTerms: org.apache.lucene.index.PrefixCodedTerms$TermIterator iterator()>() 
(define-const var988 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(assert true)
(define-const var1198 var2579 (next/1597558740 var15)) ; Statement: r8 = virtualinvoke r4.<org.apache.lucene.index.PrefixCodedTerms$TermIterator: org.apache.lucene.util.BytesRef next()>() 
(assert true) ; Non Conditional
 ; Statement: if r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= var1198 null-var2579)) ; Cond: r8 == null 
(assert true)
;(assert (append/-1166366385 var2149!3 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2149!4 String)
(assert (str.prefixof var2149!3 var2149!4))
(assert true)
(define-const var767 String (toString/-2075883882 var2149!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/643938503=([org.apache.lucene.search.TermInSetQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), termData/643938503=([org.apache.lucene.search.TermInSetQuery], org.apache.lucene.index.PrefixCodedTerms), iterator/-604119293=([org.apache.lucene.index.PrefixCodedTerms], org.apache.lucene.index.PrefixCodedTerms$TermIterator), next/1597558740=([org.apache.lucene.index.PrefixCodedTerms$TermIterator], org.apache.lucene.util.BytesRef), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3009=org.apache.lucene.search.TermInSetQuery, var1632=r1, var1526=r7, var3255=null_type, var2149=$r0, var2095=$r2, var2766=org.apache.lucene.index.PrefixCodedTerms, var1937=$r3, var2844=org.apache.lucene.index.PrefixCodedTerms$TermIterator, var15=r4, var988=z0, var2579=org.apache.lucene.util.BytesRef, var1198=r8, var767=$r5}
; {org.apache.lucene.search.TermInSetQuery=var3009, r1=var1632, r7=var1526, null_type=var3255, $r0=var2149, $r2=var2095, org.apache.lucene.index.PrefixCodedTerms=var2766, $r3=var1937, org.apache.lucene.index.PrefixCodedTerms$TermIterator=var2844, r4=var15, z0=var988, org.apache.lucene.util.BytesRef=var2579, r8=var1198, $r5=var767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermInSetQuery;	r7 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.TermInSetQuery: java.lang.String field>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":(");	$r3 = r1.<org.apache.lucene.search.TermInSetQuery: org.apache.lucene.index.PrefixCodedTerms termData>;	r4 = virtualinvoke $r3.<org.apache.lucene.index.PrefixCodedTerms: org.apache.lucene.index.PrefixCodedTerms$TermIterator iterator()>();	z0 = 1;	r8 = virtualinvoke r4.<org.apache.lucene.index.PrefixCodedTerms$TermIterator: org.apache.lucene.util.BytesRef next()>();	if r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3