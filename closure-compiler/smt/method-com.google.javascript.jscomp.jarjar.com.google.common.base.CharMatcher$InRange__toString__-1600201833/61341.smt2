(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var833 0)
(declare-sort var992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun startInclusive/-1644619969 (var833) Int)
(declare-fun var992_access$100/-1827419724 (Int) String)
(declare-fun endInclusive/-1644619969 (var833) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var833 var833)
(declare-const var3272 var833) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange 
(assert (not (= var3272 null-var833)))
(define-const var1690 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1690)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1690!1 String)
(assert (= var1690!1 ""))
(assert true)
(define-const var3568 String (append/672562846 var1690!1 "CharMatcher.inRange(\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.inRange(\'") 
(declare-const var1690!2 String)
(assert (= var1690!2 (str.++ var1690!1 "CharMatcher.inRange(\u0027")))
(define-const var3448 Int (startInclusive/-1644619969 var3272)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange: char startInclusive> 
(define-const var2606 String (var992_access$100/-1827419724 var3448)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0) 
(assert true)
(define-const var2080 String (append/672562846 var3568 var2606)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3568!1 String)
(assert (= var3568!1 (str.++ var3568 var2606)))
(assert true)
(define-const var2652 String (append/672562846 var2080 "\u0027, \u0027")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', \'") 
(declare-const var2080!1 String)
(assert (= var2080!1 (str.++ var2080 "\u0027, \u0027")))
(define-const var3659 Int (endInclusive/-1644619969 var3272)) ; Statement: $c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange: char endInclusive> 
(define-const var1234 String (var992_access$100/-1827419724 var3659)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c1) 
(assert true)
(define-const var660 String (append/672562846 var2652 var1234)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2652!1 String)
(assert (= var2652!1 (str.++ var2652 var1234)))
(assert true)
(define-const var559 String (append/672562846 var660 "\u0027)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var660!1 String)
(assert (= var660!1 (str.++ var660 "\u0027)")))
(assert true)
(define-const var1670 String (toString/-2075883882 var559)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), startInclusive/-1644619969=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange], char), var992_access$100/-1827419724=([char], java.lang.String), endInclusive/-1644619969=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var833=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange, var3272=r1, var1690=$r0, var3568=$r3, var3448=$c0, var992=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2606=$r2, var2080=$r4, var2652=$r6, var3659=$c1, var1234=$r5, var660=$r7, var559=$r8, var1670=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange=var833, r1=var3272, $r0=var1690, $r3=var3568, $c0=var3448, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var992, $r2=var2606, $r4=var2080, $r6=var2652, $c1=var3659, $r5=var1234, $r7=var660, $r8=var559, $r9=var1670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.inRange(\'");	$c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange: char startInclusive>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', \'");	$c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$InRange: char endInclusive>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1