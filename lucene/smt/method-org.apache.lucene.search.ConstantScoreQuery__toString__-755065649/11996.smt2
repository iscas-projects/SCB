(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1159 0)
(declare-sort var1316 0)
(declare-sort var312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun query/1541167498 (var1159) var312)
(declare-fun toString/2128869141 (var312 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1159 var1159)
(declare-const null-String String)
(declare-const var2990 var1159) ; Statement: r1 := @this: org.apache.lucene.search.ConstantScoreQuery 
(assert (not (= var2990 null-var1159)))
(declare-const var2816 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2816 null-String)))
(define-const var3130 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3130 "ConstantScore(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ConstantScore(") 
(declare-const var3130!1 String)
(assert (= var3130!1 "ConstantScore("))
(define-const var949 var312 (query/1541167498 var2990)) ; Statement: $r3 = r1.<org.apache.lucene.search.ConstantScoreQuery: org.apache.lucene.search.Query query> 
(assert true)
(define-const var2710 String (toString/2128869141 var949 var2816)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>(r2) 
(assert true)
(define-const var1692 String (append/672562846 var3130!1 var2710)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3130!2 String)
(assert (= var3130!2 (str.++ var3130!1 var2710)))
(assert true)
(define-const var3055 String (append/-1166366385 var1692 41)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1692!1 String)
(assert (str.prefixof var1692 var1692!1))
(assert true)
(define-const var1207 String (toString/-2075883882 var3055)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), query/1541167498=([org.apache.lucene.search.ConstantScoreQuery], org.apache.lucene.search.Query), toString/2128869141=([org.apache.lucene.search.Query, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1159=org.apache.lucene.search.ConstantScoreQuery, var2990=r1, var2816=r2, var1316=null_type, var3130=$r0, var312=org.apache.lucene.search.Query, var949=$r3, var2710=$r4, var1692=$r5, var3055=$r6, var1207=$r7}
; {org.apache.lucene.search.ConstantScoreQuery=var1159, r1=var2990, r2=var2816, null_type=var1316, $r0=var3130, org.apache.lucene.search.Query=var312, $r3=var949, $r4=var2710, $r5=var1692, $r6=var3055, $r7=var1207}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.ConstantScoreQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ConstantScore(");	$r3 = r1.<org.apache.lucene.search.ConstantScoreQuery: org.apache.lucene.search.Query query>;	$r4 = virtualinvoke $r3.<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>(r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1