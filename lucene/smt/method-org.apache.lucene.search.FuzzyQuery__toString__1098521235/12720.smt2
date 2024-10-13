(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var1855 0)
(declare-sort var2739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun term/-144373170 (var692) var2739)
(declare-fun field/-597557634 (var2739) String)
(declare-fun text/-1961388715 (var2739) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun maxEdits/-144373170 (var692) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var692 var692)
(declare-const null-String String)
(declare-const var1131 var692) ; Statement: r1 := @this: org.apache.lucene.search.FuzzyQuery 
(assert (not (= var1131 null-var692)))
(declare-const var3839 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3839 null-String)))
(define-const var180 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var180)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var180!1 String)
(assert (= var180!1 ""))
(define-const var3776 var2739 (term/-144373170 var1131)) ; Statement: $r2 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var1424 String (field/-597557634 var3776)) ; Statement: $r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var2812 Bool (= var1424 var3839)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $r5 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term> 
(assert (not (= (ite var2812 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2874 var2739 (term/-144373170 var1131)) ; Statement: $r5 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var2093 String (text/-1961388715 var2874)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>() 
(assert true)
;(assert (append/672562846 var180!1 var2093)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var180!2 String)
(assert (= var180!2 (str.++ var180!1 var2093)))
(assert true)
;(assert (append/-1166366385 var180!2 126)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126) 
(declare-const var180!3 String)
(assert (str.prefixof var180!2 var180!3))
(define-const var519 Int (maxEdits/-144373170 var1131)) ; Statement: $i0 = r1.<org.apache.lucene.search.FuzzyQuery: int maxEdits> 
(assert true)
;(assert (append/-1001720160 var180!3 var519)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var180!4 String)
(assert (str.prefixof var180!3 var180!4))
(assert true)
(define-const var3065 String (toString/-2075883882 var180!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), term/-144373170=([org.apache.lucene.search.FuzzyQuery], org.apache.lucene.index.Term), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), maxEdits/-144373170=([org.apache.lucene.search.FuzzyQuery], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var692=org.apache.lucene.search.FuzzyQuery, var1131=r1, var3839=r3, var1855=null_type, var180=$r0, var2739=org.apache.lucene.index.Term, var3776=$r2, var1424=$r4, var2812=$z0, var2874=$r5, var2093=$r6, var519=$i0, var3065=$r7}
; {org.apache.lucene.search.FuzzyQuery=var692, r1=var1131, r3=var3839, null_type=var1855, $r0=var180, org.apache.lucene.index.Term=var2739, $r2=var3776, $r4=var1424, $z0=var2812, $r5=var2874, $r6=var2093, $i0=var519, $r7=var3065}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.FuzzyQuery;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term>;	$r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $r5 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term>;	$r5 = r1.<org.apache.lucene.search.FuzzyQuery: org.apache.lucene.index.Term term>;	$r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126);	$i0 = r1.<org.apache.lucene.search.FuzzyQuery: int maxEdits>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2