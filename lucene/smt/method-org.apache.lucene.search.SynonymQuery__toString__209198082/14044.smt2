(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort var2375 0)
(declare-sort var2168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun terms/1443800829 (var3236) (Array Int var2168))
(declare-fun getLength-Arr-var2168-1 ((Array Int var2168)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3236 var3236)
(declare-const null-String String)
(declare-const var2926 var3236) ; Statement: r1 := @this: org.apache.lucene.search.SynonymQuery 
(assert (not (= var2926 null-var3236)))
(declare-const var3204 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3204 null-String)))
(define-const var3322 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3322 "Synonym(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Synonym(") 
(declare-const var3322!1 String)
(assert (= var3322!1 "Synonym("))
(define-const var478 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var573 (Array Int var2168) (terms/1443800829 var2926)) ; Statement: $r2 = r1.<org.apache.lucene.search.SynonymQuery: org.apache.lucene.search.SynonymQuery$TermAndBoost[] terms> 
(define-const var3275 Int (getLength-Arr-var2168-1 var573)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (>= var478 var3275)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/672562846 var3322!1 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3322!2 String)
(assert (= var3322!2 (str.++ var3322!1 ")")))
(assert true)
(define-const var3174 String (toString/-2075883882 var3322!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), terms/1443800829=([org.apache.lucene.search.SynonymQuery], org.apache.lucene.search.SynonymQuery$TermAndBoost[]), getLength-Arr-var2168-1=([org.apache.lucene.search.SynonymQuery$TermAndBoost[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3236=org.apache.lucene.search.SynonymQuery, var2926=r1, var3204=r10, var2375=null_type, var3322=$r0, var478=i2, var2168=org.apache.lucene.search.SynonymQuery$TermAndBoost, var573=$r2, var3275=$i0, var3174=$r3}
; {org.apache.lucene.search.SynonymQuery=var3236, r1=var2926, r10=var3204, null_type=var2375, $r0=var3322, i2=var478, org.apache.lucene.search.SynonymQuery$TermAndBoost=var2168, $r2=var573, $i0=var3275, $r3=var3174}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SynonymQuery;	r10 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Synonym(");	i2 = 0;	$r2 = r1.<org.apache.lucene.search.SynonymQuery: org.apache.lucene.search.SynonymQuery$TermAndBoost[] terms>;	$i0 = lengthof $r2;	if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3