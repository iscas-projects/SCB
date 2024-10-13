(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3435 0)
(declare-sort var655 0)
(declare-sort var2299 0)
(declare-sort var1678 0)
(declare-sort var246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var2299) String)
(declare-fun cast-from-var3435-to-var2299 (var3435) var2299)
(declare-fun term/-1041554136 (var246) var1678)
(declare-fun cast-from-var3435-to-var246 (var3435) var246)
(declare-fun text/-1961388715 (var1678) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3435 var3435)
(declare-const null-String String)
(declare-const var1022 var3435) ; Statement: r1 := @this: org.apache.lucene.search.PrefixQuery 
(assert (not (= var1022 null-var3435)))
(declare-const var1697 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1697 null-String)))
(define-const var2187 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2187)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2187!1 String)
(assert (= var2187!1 ""))
(assert true)
(define-const var906 String (getField/-569116549 (cast-from-var3435-to-var2299 var1022))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.PrefixQuery: java.lang.String getField()>() 
(assert true)
(define-const var2987 Bool (= var906 var1697)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = r1.<org.apache.lucene.search.PrefixQuery: org.apache.lucene.index.Term term> 
(assert (not (= (ite var2987 1 0) 0))) ; Cond: $z0 != 0 
(define-const var646 var1678 (term/-1041554136 (cast-from-var3435-to-var246 var1022))) ; Statement: $r4 = r1.<org.apache.lucene.search.PrefixQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var3416 String (text/-1961388715 var646)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.lucene.index.Term: java.lang.String text()>() 
(assert true)
;(assert (append/672562846 var2187!1 var3416)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2187!2 String)
(assert (= var2187!2 (str.++ var2187!1 var3416)))
(assert true)
;(assert (append/-1166366385 var2187!2 42)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42) 
(declare-const var2187!3 String)
(assert (str.prefixof var2187!2 var2187!3))
(assert true)
(define-const var714 String (toString/-2075883882 var2187!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var3435-to-var2299=([org.apache.lucene.search.PrefixQuery], org.apache.lucene.search.MultiTermQuery), term/-1041554136=([org.apache.lucene.search.AutomatonQuery], org.apache.lucene.index.Term), cast-from-var3435-to-var246=([org.apache.lucene.search.PrefixQuery], org.apache.lucene.search.AutomatonQuery), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3435=org.apache.lucene.search.PrefixQuery, var1022=r1, var1697=r2, var655=null_type, var2187=$r0, var2299=org.apache.lucene.search.MultiTermQuery, var906=$r3, var2987=$z0, var1678=org.apache.lucene.index.Term, var246=org.apache.lucene.search.AutomatonQuery, var646=$r4, var3416=$r5, var714=$r6}
; {org.apache.lucene.search.PrefixQuery=var3435, r1=var1022, r2=var1697, null_type=var655, $r0=var2187, org.apache.lucene.search.MultiTermQuery=var2299, $r3=var906, $z0=var2987, org.apache.lucene.index.Term=var1678, org.apache.lucene.search.AutomatonQuery=var246, $r4=var646, $r5=var3416, $r6=var714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.PrefixQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.PrefixQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = r1.<org.apache.lucene.search.PrefixQuery: org.apache.lucene.index.Term term>;	$r4 = r1.<org.apache.lucene.search.PrefixQuery: org.apache.lucene.index.Term term>;	$r5 = virtualinvoke $r4.<org.apache.lucene.index.Term: java.lang.String text()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2