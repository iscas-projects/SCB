(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var3914 0)
(declare-sort var1330 0)
(declare-sort var1924 0)
(declare-sort var803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getField/-569116549 (var1330) String)
(declare-fun cast-from-var687-to-var1330 (var687) var1330)
(declare-fun term/-1041554136 (var803) var1924)
(declare-fun cast-from-var687-to-var803 (var687) var803)
(declare-fun text/-1961388715 (var1924) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var687 var687)
(declare-const null-String String)
(declare-const var3685 var687) ; Statement: r1 := @this: org.apache.lucene.search.WildcardQuery 
(assert (not (= var3685 null-var687)))
(declare-const var1040 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1040 null-String)))
(define-const var1125 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1125)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1125!1 String)
(assert (= var1125!1 ""))
(assert true)
(define-const var1867 String (getField/-569116549 (cast-from-var687-to-var1330 var3685))) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.search.WildcardQuery: java.lang.String getField()>() 
(assert true)
(define-const var3299 Bool (= var1867 var1040)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = r1.<org.apache.lucene.search.WildcardQuery: org.apache.lucene.index.Term term> 
(assert (not (= (ite var3299 1 0) 0))) ; Cond: $z0 != 0 
(define-const var22 var1924 (term/-1041554136 (cast-from-var687-to-var803 var3685))) ; Statement: $r4 = r1.<org.apache.lucene.search.WildcardQuery: org.apache.lucene.index.Term term> 
(assert true)
(define-const var3756 String (text/-1961388715 var22)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.lucene.index.Term: java.lang.String text()>() 
(assert true)
;(assert (append/672562846 var1125!1 var3756)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1125!2 String)
(assert (= var1125!2 (str.++ var1125!1 var3756)))
(assert true)
(define-const var3577 String (toString/-2075883882 var1125!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getField/-569116549=([org.apache.lucene.search.MultiTermQuery], java.lang.String), cast-from-var687-to-var1330=([org.apache.lucene.search.WildcardQuery], org.apache.lucene.search.MultiTermQuery), term/-1041554136=([org.apache.lucene.search.AutomatonQuery], org.apache.lucene.index.Term), cast-from-var687-to-var803=([org.apache.lucene.search.WildcardQuery], org.apache.lucene.search.AutomatonQuery), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var687=org.apache.lucene.search.WildcardQuery, var3685=r1, var1040=r2, var3914=null_type, var1125=$r0, var1330=org.apache.lucene.search.MultiTermQuery, var1867=$r3, var3299=$z0, var1924=org.apache.lucene.index.Term, var803=org.apache.lucene.search.AutomatonQuery, var22=$r4, var3756=$r5, var3577=$r6}
; {org.apache.lucene.search.WildcardQuery=var687, r1=var3685, r2=var1040, null_type=var3914, $r0=var1125, org.apache.lucene.search.MultiTermQuery=var1330, $r3=var1867, $z0=var3299, org.apache.lucene.index.Term=var1924, org.apache.lucene.search.AutomatonQuery=var803, $r4=var22, $r5=var3756, $r6=var3577}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.WildcardQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.apache.lucene.search.WildcardQuery: java.lang.String getField()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = r1.<org.apache.lucene.search.WildcardQuery: org.apache.lucene.index.Term term>;	$r4 = r1.<org.apache.lucene.search.WildcardQuery: org.apache.lucene.index.Term term>;	$r5 = virtualinvoke $r4.<org.apache.lucene.index.Term: java.lang.String text()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2