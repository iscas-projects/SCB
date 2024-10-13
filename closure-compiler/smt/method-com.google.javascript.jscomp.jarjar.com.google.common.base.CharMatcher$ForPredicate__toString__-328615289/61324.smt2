(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3377 0)
(declare-sort var3331 0)
(declare-sort var1241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun predicate/1225433895 (var3377) var3331)
(declare-fun append/-1031950772 (String var1241) String)
(declare-fun cast-from-var3331-to-var1241 (var3331) var1241)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3377 var3377)
(declare-const var104 var3377) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate 
(assert (not (= var104 null-var3377)))
(define-const var3610 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3610)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3610!1 String)
(assert (= var3610!1 ""))
(assert true)
(define-const var2420 String (append/672562846 var3610!1 "CharMatcher.forPredicate(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.forPredicate(") 
(declare-const var3610!2 String)
(assert (= var3610!2 (str.++ var3610!1 "CharMatcher.forPredicate(")))
(define-const var2852 var3331 (predicate/1225433895 var104)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate> 
(assert true)
(define-const var895 String (append/-1031950772 var2420 (cast-from-var3331-to-var1241 var2852))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2420!1 String)
(assert (str.prefixof var2420 var2420!1))
(assert true)
(define-const var2517 String (append/672562846 var895 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 ")")))
(assert true)
(define-const var1256 String (toString/-2075883882 var2517)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), predicate/1225433895=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3331-to-var1241=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3377=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate, var104=r1, var3610=$r0, var2420=$r3, var3331=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate, var2852=$r2, var1241=java.lang.Object, var895=$r4, var2517=$r5, var1256=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate=var3377, r1=var104, $r0=var3610, $r3=var2420, com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate=var3331, $r2=var2852, java.lang.Object=var1241, $r4=var895, $r5=var2517, $r6=var1256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.forPredicate(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$ForPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1