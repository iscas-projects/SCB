(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var855 0)
(declare-sort var43 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getField/665941068 (var43) String)
(declare-fun cast-from-var855-to-var43 (var855) var43)
(declare-fun featureName/-924212349 (var855) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var855 var855)
(declare-const var1884 var855) ; Statement: r1 := @this: org.apache.lucene.document.FeatureSortField 
(assert (not (= var1884 null-var855)))
(define-const var3665 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3665)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3665!1 String)
(assert (= var3665!1 ""))
(assert true)
;(assert (append/672562846 var3665!1 "<feature:")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<feature:") 
(declare-const var3665!2 String)
(assert (= var3665!2 (str.++ var3665!1 "<feature:")))
(assert true)
;(assert (append/-1166366385 var3665!2 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3665!3 String)
(assert (str.prefixof var3665!2 var3665!3))
(assert true)
(define-const var373 String (getField/665941068 (cast-from-var855-to-var43 var1884))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.document.FeatureSortField: java.lang.String getField()>() 
(assert true)
;(assert (append/672562846 var3665!3 var373)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3665!4 String)
(assert (= var3665!4 (str.++ var3665!3 var373)))
(assert true)
;(assert (append/-1166366385 var3665!4 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3665!5 String)
(assert (str.prefixof var3665!4 var3665!5))
(assert true)
;(assert (append/672562846 var3665!5 " featureName=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" featureName=") 
(declare-const var3665!6 String)
(assert (= var3665!6 (str.++ var3665!5 " featureName=")))
(define-const var2789 String (featureName/-924212349 var1884)) ; Statement: $r3 = r1.<org.apache.lucene.document.FeatureSortField: java.lang.String featureName> 
(assert true)
;(assert (append/672562846 var3665!6 var2789)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3665!7 String)
(assert (= var3665!7 (str.++ var3665!6 var2789)))
(assert true)
;(assert (append/-1166366385 var3665!7 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3665!8 String)
(assert (str.prefixof var3665!7 var3665!8))
(assert true)
(define-const var2421 String (toString/-2075883882 var3665!8)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var855-to-var43=([org.apache.lucene.document.FeatureSortField], org.apache.lucene.search.SortField), featureName/-924212349=([org.apache.lucene.document.FeatureSortField], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var855=org.apache.lucene.document.FeatureSortField, var1884=r1, var3665=$r0, var43=org.apache.lucene.search.SortField, var373=$r2, var2789=$r3, var2421=$r4}
; {org.apache.lucene.document.FeatureSortField=var855, r1=var1884, $r0=var3665, org.apache.lucene.search.SortField=var43, $r2=var373, $r3=var2789, $r4=var2421}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.FeatureSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<feature:");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke r1.<org.apache.lucene.document.FeatureSortField: java.lang.String getField()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" featureName=");	$r3 = r1.<org.apache.lucene.document.FeatureSortField: java.lang.String featureName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1