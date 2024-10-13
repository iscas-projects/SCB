(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var977 0)
(declare-sort var1632 0)
(declare-sort var832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun predicate/-1027211595 (var977) var1632)
(declare-fun append/-1031950772 (String var832) String)
(declare-fun cast-from-var1632-to-var832 (var1632) var832)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var977 var977)
(declare-const var3502 var977) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction 
(assert (not (= var3502 null-var977)))
(define-const var852 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var852)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var852!1 String)
(assert (= var852!1 ""))
(assert true)
(define-const var3678 String (append/672562846 var852!1 "Functions.forPredicate(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forPredicate(") 
(declare-const var852!2 String)
(assert (= var852!2 (str.++ var852!1 "Functions.forPredicate(")))
(define-const var3408 var1632 (predicate/-1027211595 var3502)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate> 
(assert true)
(define-const var2451 String (append/-1031950772 var3678 (cast-from-var1632-to-var832 var3408))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3678!1 String)
(assert (str.prefixof var3678 var3678!1))
(assert true)
(define-const var3948 String (append/672562846 var2451 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2451!1 String)
(assert (= var2451!1 (str.++ var2451 ")")))
(assert true)
(define-const var3765 String (toString/-2075883882 var3948)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), predicate/-1027211595=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction], com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1632-to-var832=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var977=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction, var3502=r1, var852=$r0, var3678=$r3, var1632=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate, var3408=$r2, var832=java.lang.Object, var2451=$r4, var3948=$r5, var3765=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction=var977, r1=var3502, $r0=var852, $r3=var3678, com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate=var1632, $r2=var3408, java.lang.Object=var832, $r4=var2451, $r5=var3948, $r6=var3765}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forPredicate(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$PredicateFunction: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicate predicate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1