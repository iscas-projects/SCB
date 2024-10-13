(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1337 0)
(declare-sort var1035 0)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elementEquivalence/790933437 (var1337) var1035)
(declare-fun append/-1031950772 (String var588) String)
(declare-fun cast-from-var1035-to-var588 (var1035) var588)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1337 var1337)
(declare-const var1116 var1337) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence 
(assert (not (= var1116 null-var1337)))
(define-const var3603 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3603)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3603!1 String)
(assert (= var3603!1 ""))
(define-const var102 var1035 (elementEquivalence/790933437 var1116)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence elementEquivalence> 
(assert true)
(define-const var476 String (append/-1031950772 var3603!1 (cast-from-var1035-to-var588 var102))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3603!2 String)
(assert (str.prefixof var3603!1 var3603!2))
(assert true)
(define-const var1650 String (append/672562846 var476 ".pairwise()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".pairwise()") 
(declare-const var476!1 String)
(assert (= var476!1 (str.++ var476 ".pairwise()")))
(assert true)
(define-const var1713 String (toString/-2075883882 var1650)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elementEquivalence/790933437=([com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence], com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1035-to-var588=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1337=com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence, var1116=r1, var3603=$r0, var1035=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence, var102=$r2, var588=java.lang.Object, var476=$r3, var1650=$r4, var1713=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence=var1337, r1=var1116, $r0=var3603, com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence=var1035, $r2=var102, java.lang.Object=var588, $r3=var476, $r4=var1650, $r5=var1713}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.PairwiseEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence elementEquivalence>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".pairwise()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1