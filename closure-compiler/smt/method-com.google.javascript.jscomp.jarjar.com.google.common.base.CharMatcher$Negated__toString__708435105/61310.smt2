(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var1871 0)
(declare-sort var3210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun original/-1740331575 (var2022) var1871)
(declare-fun append/-1031950772 (String var3210) String)
(declare-fun cast-from-var1871-to-var3210 (var1871) var3210)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2022 var2022)
(declare-const var1379 var2022) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated 
(assert (not (= var1379 null-var2022)))
(define-const var2790 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2790)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2790!1 String)
(assert (= var2790!1 ""))
(define-const var232 var1871 (original/-1740331575 var1379)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher original> 
(assert true)
(define-const var3658 String (append/-1031950772 var2790!1 (cast-from-var1871-to-var3210 var232))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2790!2 String)
(assert (str.prefixof var2790!1 var2790!2))
(assert true)
(define-const var1118 String (append/672562846 var3658 ".negate()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".negate()") 
(declare-const var3658!1 String)
(assert (= var3658!1 (str.++ var3658 ".negate()")))
(assert true)
(define-const var2525 String (toString/-2075883882 var1118)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), original/-1740331575=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1871-to-var3210=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2022=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated, var1379=r1, var2790=$r0, var1871=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var232=$r2, var3210=java.lang.Object, var3658=$r3, var1118=$r4, var2525=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated=var2022, r1=var1379, $r0=var2790, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1871, $r2=var232, java.lang.Object=var3210, $r3=var3658, $r4=var1118, $r5=var2525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher original>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".negate()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1