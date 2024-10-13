(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2144 0)
(declare-sort var2313 0)
(declare-sort var3203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun term/1505675340 (var2144) var3203)
(declare-fun field/-597557634 (var3203) String)
(declare-fun text/-1961388715 (var3203) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2144 var2144)
(declare-const null-String String)
(declare-const var3636 var2144) ; Statement: r1 := @this: org.apache.lucene.search.TermQuery 
(assert (not (= var3636 null-var2144)))
(declare-const var287 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var287 null-String)))
(define-const var2789 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2789)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2789!1 String)
(assert (= var2789!1 ""))
(define-const var1494 var3203 (term/1505675340 var3636)) ; Statement: $r2 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var2364 String (field/-597557634 var1494)) ; Statement: $r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var1592 Bool (= var2364 var287)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $r5 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term> 
(assert (not (= (ite var1592 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2306 var3203 (term/1505675340 var3636)) ; Statement: $r5 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var2929 String (text/-1961388715 var2306)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>() 
(assert true)
;(assert (append/672562846 var2789!1 var2929)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2789!2 String)
(assert (= var2789!2 (str.++ var2789!1 var2929)))
(assert true)
(define-const var305 String (toString/-2075883882 var2789!2)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), term/1505675340=([org.apache.lucene.search.TermQuery], org.apache.lucene.index.Term), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2144=org.apache.lucene.search.TermQuery, var3636=r1, var287=r3, var2313=null_type, var2789=$r0, var3203=org.apache.lucene.index.Term, var1494=$r2, var2364=$r4, var1592=$z0, var2306=$r5, var2929=$r6, var305=$r7}
; {org.apache.lucene.search.TermQuery=var2144, r1=var3636, r3=var287, null_type=var2313, $r0=var2789, org.apache.lucene.index.Term=var3203, $r2=var1494, $r4=var2364, $z0=var1592, $r5=var2306, $r6=var2929, $r7=var305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.TermQuery;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term>;	$r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $r5 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term>;	$r5 = r1.<org.apache.lucene.search.TermQuery: org.apache.lucene.index.Term term>;	$r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2