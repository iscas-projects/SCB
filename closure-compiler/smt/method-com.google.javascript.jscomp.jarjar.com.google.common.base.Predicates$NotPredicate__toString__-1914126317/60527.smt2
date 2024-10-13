(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3273 0)
(declare-sort var272 0)
(declare-sort var825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun predicate/1748941499 (var3273) var272)
(declare-fun append/-1031950772 (String var825) String)
(declare-fun cast-from-var272-to-var825 (var272) var825)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3273 var3273)
(declare-const var41 var3273) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate 
(assert (not (= var41 null-var3273)))
(define-const var3192 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3192)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3192!1 String)
(assert (= var3192!1 ""))
(assert true)
(define-const var3813 String (append/672562846 var3192!1 "Predicates.not(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.not(") 
(declare-const var3192!2 String)
(assert (= var3192!2 (str.++ var3192!1 "Predicates.not(")))
(define-const var455 var272 (predicate/1748941499 var41)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate> 
(assert true)
(define-const var3869 String (append/-1031950772 var3813 (cast-from-var272-to-var825 var455))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3813!1 String)
(assert (str.prefixof var3813 var3813!1))
(assert true)
(define-const var2056 String (append/672562846 var3869 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3869!1 String)
(assert (= var3869!1 (str.++ var3869 ")")))
(assert true)
(define-const var681 String (toString/-2075883882 var2056)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), predicate/1748941499=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var272-to-var825=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3273=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate, var41=r1, var3192=$r0, var3813=$r3, var272=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate, var455=$r2, var825=java.lang.Object, var3869=$r4, var2056=$r5, var681=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate=var3273, r1=var41, $r0=var3192, $r3=var3813, com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate=var272, $r2=var455, java.lang.Object=var825, $r4=var3869, $r5=var2056, $r6=var681}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.not(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$NotPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1