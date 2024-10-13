(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2461 0)
(declare-sort var2062 0)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/-1934921635 (var3551) var2062)
(declare-fun cast-from-var2461-to-var3551 (var2461) var3551)
(declare-fun pattern/755430130 (var2062) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2461 var2461)
(declare-const var1639 var2461) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate 
(assert (not (= var1639 null-var2461)))
(define-const var2042 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2042)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2042!1 String)
(assert (= var2042!1 ""))
(assert true)
(define-const var1694 String (append/672562846 var2042!1 "Predicates.containsPattern(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.containsPattern(") 
(declare-const var2042!2 String)
(assert (= var2042!2 (str.++ var2042!1 "Predicates.containsPattern(")))
(define-const var2120 var2062 (pattern/-1934921635 (cast-from-var2461-to-var3551 var1639))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern> 
(assert true)
(define-const var1514 String (pattern/755430130 var2120)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: java.lang.String pattern()>() 
(assert true)
(define-const var2886 String (append/672562846 var1694 var1514)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1694!1 String)
(assert (= var1694!1 (str.++ var1694 var1514)))
(assert true)
(define-const var904 String (append/672562846 var2886 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2886!1 String)
(assert (= var2886!1 (str.++ var2886 ")")))
(assert true)
(define-const var3724 String (toString/-2075883882 var904)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/-1934921635=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern), cast-from-var2461-to-var3551=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate), pattern/755430130=([com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2461=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate, var1639=r1, var2042=$r0, var1694=$r4, var2062=com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern, var3551=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate, var2120=$r2, var1514=$r3, var2886=$r5, var904=$r6, var3724=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate=var2461, r1=var1639, $r0=var2042, $r4=var1694, com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern=var2062, com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate=var3551, $r2=var2120, $r3=var1514, $r5=var2886, $r6=var904, $r7=var3724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.containsPattern(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternFromStringPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: java.lang.String pattern()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1