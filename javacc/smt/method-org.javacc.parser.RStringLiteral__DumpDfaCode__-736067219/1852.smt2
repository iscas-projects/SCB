(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1794 0)
(declare-sort var2056 0)
(declare-sort var1948 0)
(declare-sort var749 0)
(declare-sort var3140 0)
(declare-sort var1160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3140_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var3140_getOutputLanguage/-1523304050 () String)
(declare-fun var1160-init () var1160)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1160 String) void)
(declare-const null-var1794 var1794)
(declare-const var2056-maxStrKind Int)
(declare-const var749-lg var1948)
(declare-const var1948-maxLongsReqd (Array Int Int))
(declare-const var1948-lexStateIndex Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2056-maxLen Int)
(declare-const var3669 var1794) ; Statement: r6 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3669 null-var1794)))
(define-const var1509 Int var2056-maxStrKind) ; Statement: $i0 = <org.javacc.parser.RStringLiteral: int maxStrKind> 
(define-const var2424 Int (div var1509 64)) ; Statement: $i1 = $i0 / 64 
(define-const var194 Int (+ var2424 1)) ; Statement: i2 = $i1 + 1 
(define-const var1217 var1948 var749-lg) ; Statement: $r0 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var2774 (Array Int Int) var1948-maxLongsReqd) ; Statement: $r2 = <org.javacc.parser.LexGen: int[] maxLongsReqd> 
(define-const var228 var1948 var749-lg) ; Statement: $r1 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var363 Int var1948-lexStateIndex) ; Statement: $i3 = <org.javacc.parser.LexGen: int lexStateIndex> 
(declare-const var2774!1 (Array Int Int))
(assert (not (= var2774!1 null-__Array__Int__Int__)))
(assert (= (select var2774!1 var363) var194)) ; Statement: $r2[$i3] = i2 
(define-const var644 Int var2056-maxLen) ; Statement: $i4 = <org.javacc.parser.RStringLiteral: int maxLen> 
 ; Statement: if $i4 != 0 goto $z0 = <org.javacc.parser.RStringLiteral: boolean boilerPlateDumped> 
(assert (not (not (= var644 0)))) ; Negate: Cond: $i4 != 0  
(define-const var2926 Bool var3140_isOutputLanguageJava/1735442213) ; Statement: $z29 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z29 == 0 goto $r626 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var2926 1 0) 0)) ; Cond: $z29 == 0 
(define-const var3065 String var3140_getOutputLanguage/-1523304050) ; Statement: $r626 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1326 Bool (= var3065 "c++")) ; Statement: $z30 = virtualinvoke $r626.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z30 == 0 goto $r682 = new java.lang.RuntimeException 
(assert (= (ite var1326 1 0) 0)) ; Cond: $z30 == 0 
(define-const var2876 var1160 var1160-init) ; Statement: $r682 = new java.lang.RuntimeException 
(define-const var3768 String String-init) ; Statement: $r681 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3768)) ; Statement: specialinvoke $r681.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3768!1 String)
(assert (= var3768!1 ""))
(assert true)
(define-const var3779 String (append/672562846 var3768!1 "Output language type not fully implemented : ")) ; Statement: $r630 = virtualinvoke $r681.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ") 
(declare-const var3768!2 String)
(assert (= var3768!2 (str.++ var3768!1 "Output language type not fully implemented : ")))
(define-const var2301 String var3140_getOutputLanguage/-1523304050) ; Statement: $r629 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var470 String (append/672562846 var3779 var2301)) ; Statement: $r631 = virtualinvoke $r630.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r629) 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 var2301)))
(assert true)
(define-const var3623 String (toString/-2075883882 var470)) ; Statement: $r632 = virtualinvoke $r631.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2876 var3623)) ; Statement: specialinvoke $r682.<java.lang.RuntimeException: void <init>(java.lang.String)>($r632) 

(declare-const var2876!1 var1160)
(declare-const var3623!1 String)
 ; Statement: throw $r682 
(check-sat)
(get-model)
(get-unsat-core)
; {var3140_isOutputLanguageJava/1735442213=([], boolean), var3140_getOutputLanguage/-1523304050=([], java.lang.String), var1160-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1794=org.javacc.parser.CodeGenerator, var3669=r6, var2056=org.javacc.parser.RStringLiteral, var1509=$i0, var2424=$i1, var194=i2, var1948=org.javacc.parser.LexGen, var749=org.javacc.parser.Main, var1217=$r0, var2774=$r2, var228=$r1, var363=$i3, var644=$i4, var3140=org.javacc.parser.Options, var2926=$z29, var3065=$r626, var1326=$z30, var1160=java.lang.RuntimeException, var2876=$r682, var3768=$r681, var3779=$r630, var2301=$r629, var470=$r631, var3623=$r632}
; {org.javacc.parser.CodeGenerator=var1794, r6=var3669, org.javacc.parser.RStringLiteral=var2056, $i0=var1509, $i1=var2424, i2=var194, org.javacc.parser.LexGen=var1948, org.javacc.parser.Main=var749, $r0=var1217, $r2=var2774, $r1=var228, $i3=var363, $i4=var644, org.javacc.parser.Options=var3140, $z29=var2926, $r626=var3065, $z30=var1326, java.lang.RuntimeException=var1160, $r682=var2876, $r681=var3768, $r630=var3779, $r629=var2301, $r631=var470, $r632=var3623}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: org.javacc.parser.CodeGenerator;	$i0 = <org.javacc.parser.RStringLiteral: int maxStrKind>;	$i1 = $i0 / 64;	i2 = $i1 + 1;	$r0 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r2 = <org.javacc.parser.LexGen: int[] maxLongsReqd>;	$r1 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i3 = <org.javacc.parser.LexGen: int lexStateIndex>;	$r2[$i3] = i2;	$i4 = <org.javacc.parser.RStringLiteral: int maxLen>;	if $i4 != 0 goto $z0 = <org.javacc.parser.RStringLiteral: boolean boilerPlateDumped>;	$z29 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z29 == 0 goto $r626 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r626 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z30 = virtualinvoke $r626.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z30 == 0 goto $r682 = new java.lang.RuntimeException;	$r682 = new java.lang.RuntimeException;	$r681 = new java.lang.StringBuilder;	specialinvoke $r681.<java.lang.StringBuilder: void <init>()>();	$r630 = virtualinvoke $r681.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ");	$r629 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r631 = virtualinvoke $r630.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r629);	$r632 = virtualinvoke $r631.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r682.<java.lang.RuntimeException: void <init>(java.lang.String)>($r632);	throw $r682
;block_num 4