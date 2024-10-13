(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var1736 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun left/1715618888 (var1942) var1736)
(declare-fun getCanonicalForm/-1714059646 (var3061) String)
(declare-fun cast-from-var1736-to-var3061 (var1736) var3061)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun opString/1715618888 (var1942) String)
(declare-fun right/1715618888 (var1942) var1736)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1942 var1942)
(declare-const var3017 var1942) ; Statement: r1 := @this: freemarker.core.ComparisonExpression 
(assert (not (= var3017 null-var1942)))
(define-const var2973 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2973)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2973!1 String)
(assert (= var2973!1 ""))
(define-const var3263 var1736 (left/1715618888 var3017)) ; Statement: $r2 = r1.<freemarker.core.ComparisonExpression: freemarker.core.Expression left> 
(assert true)
(define-const var2858 String (getCanonicalForm/-1714059646 (cast-from-var1736-to-var3061 var3263))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1686 String (append/672562846 var2973!1 var2858)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2973!2 String)
(assert (= var2973!2 (str.++ var2973!1 var2858)))
(assert true)
(define-const var1855 String (append/-1166366385 var1686 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1686!1 String)
(assert (str.prefixof var1686 var1686!1))
(define-const var346 String (opString/1715618888 var3017)) ; Statement: $r5 = r1.<freemarker.core.ComparisonExpression: java.lang.String opString> 
(assert true)
(define-const var3167 String (append/672562846 var1855 var346)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1855!1 String)
(assert (= var1855!1 (str.++ var1855 var346)))
(assert true)
(define-const var606 String (append/-1166366385 var3167 32)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3167!1 String)
(assert (str.prefixof var3167 var3167!1))
(define-const var3334 var1736 (right/1715618888 var3017)) ; Statement: $r8 = r1.<freemarker.core.ComparisonExpression: freemarker.core.Expression right> 
(assert true)
(define-const var3049 String (getCanonicalForm/-1714059646 (cast-from-var1736-to-var3061 var3334))) ; Statement: $r9 = virtualinvoke $r8.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1156 String (append/672562846 var606 var3049)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var606!1 String)
(assert (= var606!1 (str.++ var606 var3049)))
(assert true)
(define-const var3814 String (toString/-2075883882 var1156)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), left/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1736-to-var3061=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), opString/1715618888=([freemarker.core.ComparisonExpression], java.lang.String), right/1715618888=([freemarker.core.ComparisonExpression], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1942=freemarker.core.ComparisonExpression, var3017=r1, var2973=$r0, var1736=freemarker.core.Expression, var3263=$r2, var3061=freemarker.core.TemplateObject, var2858=$r3, var1686=$r4, var1855=$r6, var346=$r5, var3167=$r7, var606=$r10, var3334=$r8, var3049=$r9, var1156=$r11, var3814=$r12}
; {freemarker.core.ComparisonExpression=var1942, r1=var3017, $r0=var2973, freemarker.core.Expression=var1736, $r2=var3263, freemarker.core.TemplateObject=var3061, $r3=var2858, $r4=var1686, $r6=var1855, $r5=var346, $r7=var3167, $r10=var606, $r8=var3334, $r9=var3049, $r11=var1156, $r12=var3814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ComparisonExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.ComparisonExpression: freemarker.core.Expression left>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = r1.<freemarker.core.ComparisonExpression: java.lang.String opString>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = r1.<freemarker.core.ComparisonExpression: freemarker.core.Expression right>;	$r9 = virtualinvoke $r8.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1