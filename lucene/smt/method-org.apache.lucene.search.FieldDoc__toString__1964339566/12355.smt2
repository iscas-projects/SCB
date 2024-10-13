(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1114 0)
(declare-sort var1953 0)
(declare-sort var1375 0)
(declare-sort var1619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/553969366 (var1953) String)
(declare-fun cast-from-var1114-to-var1953 (var1114) var1953)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fields/994230094 (var1114) (Array Int var1375))
(declare-fun var1619_toString/-575966009 ((Array Int var1375)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1114 var1114)
(declare-const var1141 var1114) ; Statement: r1 := @this: org.apache.lucene.search.FieldDoc 
(assert (not (= var1141 null-var1114)))
(define-const var3982 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2116 String (toString/553969366 (cast-from-var1114-to-var1953 var1141))) ; Statement: $r2 = specialinvoke r1.<org.apache.lucene.search.ScoreDoc: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var3982 var2116)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3982!1 String)
(assert (= var3982!1 var2116))
(assert true)
;(assert (append/672562846 var3982!1 " fields=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fields=") 
(declare-const var3982!2 String)
(assert (= var3982!2 (str.++ var3982!1 " fields=")))
(define-const var1796 (Array Int var1375) (fields/994230094 var1141)) ; Statement: $r3 = r1.<org.apache.lucene.search.FieldDoc: java.lang.Object[] fields> 
(define-const var3678 String (var1619_toString/-575966009 var1796)) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r3) 
(assert true)
;(assert (append/672562846 var3982!2 var3678)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3982!3 String)
(assert (= var3982!3 (str.++ var3982!2 var3678)))
(assert true)
(define-const var2644 String (toString/-2075883882 var3982!3)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/553969366=([org.apache.lucene.search.ScoreDoc], java.lang.String), cast-from-var1114-to-var1953=([org.apache.lucene.search.FieldDoc], org.apache.lucene.search.ScoreDoc), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fields/994230094=([org.apache.lucene.search.FieldDoc], java.lang.Object[]), var1619_toString/-575966009=([java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1114=org.apache.lucene.search.FieldDoc, var1141=r1, var3982=$r0, var1953=org.apache.lucene.search.ScoreDoc, var2116=$r2, var1375=java.lang.Object, var1796=$r3, var1619=java.util.Arrays, var3678=$r4, var2644=$r5}
; {org.apache.lucene.search.FieldDoc=var1114, r1=var1141, $r0=var3982, org.apache.lucene.search.ScoreDoc=var1953, $r2=var2116, java.lang.Object=var1375, $r3=var1796, java.util.Arrays=var1619, $r4=var3678, $r5=var2644}
;seq <org.apache.lucene.search.ScoreDoc: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.FieldDoc;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<org.apache.lucene.search.ScoreDoc: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fields=");	$r3 = r1.<org.apache.lucene.search.FieldDoc: java.lang.Object[] fields>;	$r4 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1