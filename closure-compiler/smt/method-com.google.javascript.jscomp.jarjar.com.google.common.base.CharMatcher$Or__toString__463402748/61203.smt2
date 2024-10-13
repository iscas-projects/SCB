(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var1904 0)
(declare-sort var1463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun first/-512465572 (var1444) var1904)
(declare-fun append/-1031950772 (String var1463) String)
(declare-fun cast-from-var1904-to-var1463 (var1904) var1463)
(declare-fun second/-512465572 (var1444) var1904)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1444 var1444)
(declare-const var59 var1444) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or 
(assert (not (= var59 null-var1444)))
(define-const var3177 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3177)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3177!1 String)
(assert (= var3177!1 ""))
(assert true)
(define-const var114 String (append/672562846 var3177!1 "CharMatcher.or(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.or(") 
(declare-const var3177!2 String)
(assert (= var3177!2 (str.++ var3177!1 "CharMatcher.or(")))
(define-const var315 var1904 (first/-512465572 var59)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher first> 
(assert true)
(define-const var1730 String (append/-1031950772 var114 (cast-from-var1904-to-var1463 var315))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var114!1 String)
(assert (str.prefixof var114 var114!1))
(assert true)
(define-const var3578 String (append/672562846 var1730 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1730!1 String)
(assert (= var1730!1 (str.++ var1730 ", ")))
(define-const var2578 var1904 (second/-512465572 var59)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher second> 
(assert true)
(define-const var3829 String (append/-1031950772 var3578 (cast-from-var1904-to-var1463 var2578))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3578!1 String)
(assert (str.prefixof var3578 var3578!1))
(assert true)
(define-const var1908 String (append/672562846 var3829 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 ")")))
(assert true)
(define-const var3343 String (toString/-2075883882 var1908)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), first/-512465572=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1904-to-var1463=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], java.lang.Object), second/-512465572=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1444=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or, var59=r1, var3177=$r0, var114=$r3, var1904=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var315=$r2, var1463=java.lang.Object, var1730=$r4, var3578=$r6, var2578=$r5, var3829=$r7, var1908=$r8, var3343=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or=var1444, r1=var59, $r0=var3177, $r3=var114, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1904, $r2=var315, java.lang.Object=var1463, $r4=var1730, $r6=var3578, $r5=var2578, $r7=var3829, $r8=var1908, $r9=var3343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.or(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher first>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Or: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher second>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1