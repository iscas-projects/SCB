(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var97 0)
(declare-sort var3851 0)
(declare-sort var2430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun first/1293422974 (var97) var3851)
(declare-fun append/-1031950772 (String var2430) String)
(declare-fun cast-from-var3851-to-var2430 (var3851) var2430)
(declare-fun second/1293422974 (var97) var3851)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var97 var97)
(declare-const var1497 var97) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And 
(assert (not (= var1497 null-var97)))
(define-const var3121 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3121)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3121!1 String)
(assert (= var3121!1 ""))
(assert true)
(define-const var2311 String (append/672562846 var3121!1 "CharMatcher.and(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.and(") 
(declare-const var3121!2 String)
(assert (= var3121!2 (str.++ var3121!1 "CharMatcher.and(")))
(define-const var2804 var3851 (first/1293422974 var1497)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher first> 
(assert true)
(define-const var956 String (append/-1031950772 var2311 (cast-from-var3851-to-var2430 var2804))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2311!1 String)
(assert (str.prefixof var2311 var2311!1))
(assert true)
(define-const var1934 String (append/672562846 var956 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var956!1 String)
(assert (= var956!1 (str.++ var956 ", ")))
(define-const var3540 var3851 (second/1293422974 var1497)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher second> 
(assert true)
(define-const var946 String (append/-1031950772 var1934 (cast-from-var3851-to-var2430 var3540))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1934!1 String)
(assert (str.prefixof var1934 var1934!1))
(assert true)
(define-const var3045 String (append/672562846 var946 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var946!1 String)
(assert (= var946!1 (str.++ var946 ")")))
(assert true)
(define-const var2278 String (toString/-2075883882 var3045)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), first/1293422974=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3851-to-var2430=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], java.lang.Object), second/1293422974=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var97=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And, var1497=r1, var3121=$r0, var2311=$r3, var3851=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2804=$r2, var2430=java.lang.Object, var956=$r4, var1934=$r6, var3540=$r5, var946=$r7, var3045=$r8, var2278=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And=var97, r1=var1497, $r0=var3121, $r3=var2311, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3851, $r2=var2804, java.lang.Object=var2430, $r4=var956, $r6=var1934, $r5=var3540, $r7=var946, $r8=var3045, $r9=var2278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.and(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher first>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$And: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher second>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1