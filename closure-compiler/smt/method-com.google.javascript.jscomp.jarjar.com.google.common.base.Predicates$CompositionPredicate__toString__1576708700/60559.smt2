(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2788 0)
(declare-sort var2065 0)
(declare-sort var894 0)
(declare-sort var3862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun p/1098421956 (var2788) var2065)
(declare-fun append/-1031950772 (String var894) String)
(declare-fun cast-from-var2065-to-var894 (var2065) var894)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun f/1098421956 (var2788) var3862)
(declare-fun cast-from-var3862-to-var894 (var3862) var894)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2788 var2788)
(declare-const var521 var2788) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate 
(assert (not (= var521 null-var2788)))
(define-const var3128 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3128!1 String)
(assert (= var3128!1 ""))
(define-const var1120 var2065 (p/1098421956 var521)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate p> 
(assert true)
(define-const var1063 String (append/-1031950772 var3128!1 (cast-from-var2065-to-var894 var1120))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3128!2 String)
(assert (str.prefixof var3128!1 var3128!2))
(assert true)
(define-const var377 String (append/672562846 var1063 "(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1063!1 String)
(assert (= var1063!1 (str.++ var1063 "(")))
(define-const var692 var3862 (f/1098421956 var521)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Function f> 
(assert true)
(define-const var1409 String (append/-1031950772 var377 (cast-from-var3862-to-var894 var692))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var377!1 String)
(assert (str.prefixof var377 var377!1))
(assert true)
(define-const var52 String (append/672562846 var1409 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1409!1 String)
(assert (= var1409!1 (str.++ var1409 ")")))
(assert true)
(define-const var2697 String (toString/-2075883882 var52)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), p/1098421956=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2065-to-var894=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), f/1098421956=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), cast-from-var3862-to-var894=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2788=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate, var521=r1, var3128=$r0, var2065=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate, var1120=$r2, var894=java.lang.Object, var1063=$r3, var377=$r5, var3862=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var692=$r4, var1409=$r6, var52=$r7, var2697=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate=var2788, r1=var521, $r0=var3128, com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate=var2065, $r2=var1120, java.lang.Object=var894, $r3=var1063, $r5=var377, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var3862, $r4=var692, $r6=var1409, $r7=var52, $r8=var2697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate p>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$CompositionPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Function f>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1