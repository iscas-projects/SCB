(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var1973 0)
(declare-sort var3291 0)
(declare-sort var3136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun endpoint/-1106376398 (var3291) var1973)
(declare-fun cast-from-var1277-to-var3291 (var1277) var3291)
(declare-fun append/-1031950772 (String var3136) String)
(declare-fun cast-from-var1973-to-var3136 (var1973) var3136)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1277 var1277)
(declare-const var2681 var1277) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue 
(assert (not (= var2681 null-var1277)))
(define-const var2595 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2595)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2595!1 String)
(assert (= var2595!1 ""))
(assert true)
(define-const var2508 String (append/672562846 var2595!1 "/")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var2595!2 String)
(assert (= var2595!2 (str.++ var2595!1 "/")))
(define-const var2847 var1973 (endpoint/-1106376398 (cast-from-var1277-to-var3291 var2681))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint> 
(assert true)
(define-const var2256 String (append/-1031950772 var2508 (cast-from-var1973-to-var3136 var2847))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2508!1 String)
(assert (str.prefixof var2508 var2508!1))
(assert true)
(define-const var2445 String (append/672562846 var2256 "\u005c")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var2256!1 String)
(assert (= var2256!1 (str.++ var2256 "\u005c")))
(assert true)
(define-const var3146 String (toString/-2075883882 var2445)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var1277-to-var3291=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1973-to-var3136=([java.lang.Comparable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1277=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue, var2681=r1, var2595=$r0, var2508=$r3, var1973=java.lang.Comparable, var3291=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var2847=$r2, var3136=java.lang.Object, var2256=$r4, var2445=$r5, var3146=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue=var1277, r1=var2681, $r0=var2595, $r3=var2508, java.lang.Comparable=var1973, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var3291, $r2=var2847, java.lang.Object=var3136, $r4=var2256, $r5=var2445, $r6=var3146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1