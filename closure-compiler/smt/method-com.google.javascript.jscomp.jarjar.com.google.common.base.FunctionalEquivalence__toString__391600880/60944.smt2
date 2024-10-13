(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3578 0)
(declare-sort var2224 0)
(declare-sort var1556 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun resultEquivalence/111585112 (var3578) var2224)
(declare-fun append/-1031950772 (String var1556) String)
(declare-fun cast-from-var2224-to-var1556 (var2224) var1556)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun function/111585112 (var3578) var3497)
(declare-fun cast-from-var3497-to-var1556 (var3497) var1556)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3578 var3578)
(declare-const var2940 var3578) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence 
(assert (not (= var2940 null-var3578)))
(define-const var50 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var50!1 String)
(assert (= var50!1 ""))
(define-const var71 var2224 (resultEquivalence/111585112 var2940)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence resultEquivalence> 
(assert true)
(define-const var1346 String (append/-1031950772 var50!1 (cast-from-var2224-to-var1556 var71))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var50!2 String)
(assert (str.prefixof var50!1 var50!2))
(assert true)
(define-const var2413 String (append/672562846 var1346 ".onResultOf(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".onResultOf(") 
(declare-const var1346!1 String)
(assert (= var1346!1 (str.++ var1346 ".onResultOf(")))
(define-const var570 var3497 (function/111585112 var2940)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function> 
(assert true)
(define-const var355 String (append/-1031950772 var2413 (cast-from-var3497-to-var1556 var570))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2413!1 String)
(assert (str.prefixof var2413 var2413!1))
(assert true)
(define-const var2677 String (append/672562846 var355 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var355!1 String)
(assert (= var355!1 (str.++ var355 ")")))
(assert true)
(define-const var1981 String (toString/-2075883882 var2677)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), resultEquivalence/111585112=([com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence], com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2224-to-var1556=([com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), function/111585112=([com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), cast-from-var3497-to-var1556=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3578=com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence, var2940=r1, var50=$r0, var2224=com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence, var71=$r2, var1556=java.lang.Object, var1346=$r3, var2413=$r5, var3497=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var570=$r4, var355=$r6, var2677=$r7, var1981=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence=var3578, r1=var2940, $r0=var50, com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence=var2224, $r2=var71, java.lang.Object=var1556, $r3=var1346, $r5=var2413, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var3497, $r4=var570, $r6=var355, $r7=var2677, $r8=var1981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Equivalence resultEquivalence>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".onResultOf(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.FunctionalEquivalence: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1