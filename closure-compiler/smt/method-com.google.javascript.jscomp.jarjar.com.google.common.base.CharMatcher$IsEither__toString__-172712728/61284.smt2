(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1988 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun match1/334328648 (var1988) Int)
(declare-fun var1572_access$100/-1827419724 (Int) String)
(declare-fun match2/334328648 (var1988) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1988 var1988)
(declare-const var1509 var1988) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither 
(assert (not (= var1509 null-var1988)))
(define-const var1709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1709!1 String)
(assert (= var1709!1 ""))
(assert true)
(define-const var3528 String (append/672562846 var1709!1 "CharMatcher.anyOf(\u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.anyOf(\"") 
(declare-const var1709!2 String)
(assert (= var1709!2 (str.++ var1709!1 "CharMatcher.anyOf(\u0022")))
(define-const var1344 Int (match1/334328648 var1509)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither: char match1> 
(define-const var3254 String (var1572_access$100/-1827419724 var1344)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0) 
(assert true)
(define-const var2971 String (append/672562846 var3528 var3254)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3528!1 String)
(assert (= var3528!1 (str.++ var3528 var3254)))
(define-const var2515 Int (match2/334328648 var1509)) ; Statement: $c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither: char match2> 
(define-const var3998 String (var1572_access$100/-1827419724 var2515)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c1) 
(assert true)
(define-const var2871 String (append/672562846 var2971 var3998)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2971!1 String)
(assert (= var2971!1 (str.++ var2971 var3998)))
(assert true)
(define-const var1703 String (append/672562846 var2871 "\u0022)")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 "\u0022)")))
(assert true)
(define-const var1314 String (toString/-2075883882 var1703)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), match1/334328648=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither], char), var1572_access$100/-1827419724=([char], java.lang.String), match2/334328648=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1988=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither, var1509=r1, var1709=$r0, var3528=$r3, var1344=$c0, var1572=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3254=$r2, var2971=$r5, var2515=$c1, var3998=$r4, var2871=$r6, var1703=$r7, var1314=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither=var1988, r1=var1509, $r0=var1709, $r3=var3528, $c0=var1344, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1572, $r2=var3254, $r5=var2971, $c1=var2515, $r4=var3998, $r6=var2871, $r7=var1703, $r8=var1314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.anyOf(\"");	$c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither: char match1>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither: char match2>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1