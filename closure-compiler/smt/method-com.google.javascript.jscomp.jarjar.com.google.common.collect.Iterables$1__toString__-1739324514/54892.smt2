(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2830 0)
(declare-sort var978 0)
(declare-sort var933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun val$iterable/21092734 (var2830) var978)
(declare-fun toString/-522406933 (var933) String)
(declare-fun cast-from-var978-to-var933 (var978) var933)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2830 var2830)
(declare-const var3267 var2830) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1 
(assert (not (= var3267 null-var2830)))
(define-const var3302 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3302)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3302!1 String)
(assert (= var3302!1 ""))
(define-const var3226 var978 (val$iterable/21092734 var3267)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1: java.lang.Iterable val$iterable> 
(assert true)
(define-const var3552 String (toString/-522406933 (cast-from-var978-to-var933 var3226))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var862 String (append/672562846 var3302!1 var3552)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3302!2 String)
(assert (= var3302!2 (str.++ var3302!1 var3552)))
(assert true)
(define-const var2950 String (append/672562846 var862 " (cycled)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (cycled)") 
(declare-const var862!1 String)
(assert (= var862!1 (str.++ var862 " (cycled)")))
(assert true)
(define-const var2575 String (toString/-2075883882 var2950)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), val$iterable/21092734=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1], java.lang.Iterable), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var978-to-var933=([java.lang.Iterable], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2830=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1, var3267=r1, var3302=$r0, var978=java.lang.Iterable, var3226=$r2, var933=java.lang.Object, var3552=$r3, var862=$r4, var2950=$r5, var2575=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1=var2830, r1=var3267, $r0=var3302, java.lang.Iterable=var978, $r2=var3226, java.lang.Object=var933, $r3=var3552, $r4=var862, $r5=var2950, $r6=var2575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables$1: java.lang.Iterable val$iterable>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (cycled)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1