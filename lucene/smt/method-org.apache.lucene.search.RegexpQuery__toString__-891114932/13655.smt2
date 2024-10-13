(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3453 0)
(declare-sort var934 0)
(declare-sort var3542 0)
(declare-sort var3510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun term/-1041554136 (var3510) var3542)
(declare-fun cast-from-var3453-to-var3510 (var3453) var3510)
(declare-fun field/-597557634 (var3542) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun text/-1961388715 (var3542) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3453 var3453)
(declare-const null-String String)
(declare-const var2757 var3453) ; Statement: r1 := @this: org.apache.lucene.search.RegexpQuery 
(assert (not (= var2757 null-var3453)))
(declare-const var1444 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1444 null-String)))
(define-const var581 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var581)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var581!1 String)
(assert (= var581!1 ""))
(define-const var569 var3542 (term/-1041554136 (cast-from-var3453-to-var3510 var2757))) ; Statement: $r2 = r1.<org.apache.lucene.search.RegexpQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var1992 String (field/-597557634 var569)) ; Statement: $r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var1982 Bool (= var1992 var1444)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(assert (not (= (ite var1982 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/-1166366385 var581!1 47)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var581!2 String)
(assert (str.prefixof var581!1 var581!2))
(define-const var2158 var3542 (term/-1041554136 (cast-from-var3453-to-var3510 var2757))) ; Statement: $r5 = r1.<org.apache.lucene.search.RegexpQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var538 String (text/-1961388715 var2158)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>() 
(assert true)
;(assert (append/672562846 var581!2 var538)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var581!3 String)
(assert (= var581!3 (str.++ var581!2 var538)))
(assert true)
;(assert (append/-1166366385 var581!3 47)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var581!4 String)
(assert (str.prefixof var581!3 var581!4))
(assert true)
(define-const var570 String (toString/-2075883882 var581!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), term/-1041554136=([org.apache.lucene.search.AutomatonQuery], org.apache.lucene.index.Term), cast-from-var3453-to-var3510=([org.apache.lucene.search.RegexpQuery], org.apache.lucene.search.AutomatonQuery), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3453=org.apache.lucene.search.RegexpQuery, var2757=r1, var1444=r3, var934=null_type, var581=$r0, var3542=org.apache.lucene.index.Term, var3510=org.apache.lucene.search.AutomatonQuery, var569=$r2, var1992=$r4, var1982=$z0, var2158=$r5, var538=$r6, var570=$r7}
; {org.apache.lucene.search.RegexpQuery=var3453, r1=var2757, r3=var1444, null_type=var934, $r0=var581, org.apache.lucene.index.Term=var3542, org.apache.lucene.search.AutomatonQuery=var3510, $r2=var569, $r4=var1992, $z0=var1982, $r5=var2158, $r6=var538, $r7=var570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.RegexpQuery;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.RegexpQuery: org.apache.lucene.index.Term term>;	$r4 = virtualinvoke $r2.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r5 = r1.<org.apache.lucene.search.RegexpQuery: org.apache.lucene.index.Term term>;	$r6 = virtualinvoke $r5.<org.apache.lucene.index.Term: java.lang.String text()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2