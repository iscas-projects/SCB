(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var202 0)
(declare-sort var3248 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/1830812585 (var202) var3248)
(declare-fun getCanonicalForm/-1714059646 (var524) String)
(declare-fun cast-from-var3248-to-var524 (var3248) var524)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun operator/1830812585 (var202) Int)
(declare-fun var202_getOperatorSymbol/1950100367 (Int) Int)
(declare-fun rho/1830812585 (var202) var3248)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var202 var202)
(declare-const var1950 var202) ; Statement: r1 := @this: freemarker.core.ArithmeticExpression 
(assert (not (= var1950 null-var202)))
(define-const var3972 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3972)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3972!1 String)
(assert (= var3972!1 ""))
(define-const var140 var3248 (lho/1830812585 var1950)) ; Statement: $r2 = r1.<freemarker.core.ArithmeticExpression: freemarker.core.Expression lho> 
(assert true)
(define-const var700 String (getCanonicalForm/-1714059646 (cast-from-var3248-to-var524 var140))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3787 String (append/672562846 var3972!1 var700)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3972!2 String)
(assert (= var3972!2 (str.++ var3972!1 var700)))
(assert true)
(define-const var2190 String (append/-1166366385 var3787 32)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3787!1 String)
(assert (str.prefixof var3787 var3787!1))
(define-const var1298 Int (operator/1830812585 var1950)) ; Statement: $i0 = r1.<freemarker.core.ArithmeticExpression: int operator> 
(define-const var334 Int (var202_getOperatorSymbol/1950100367 var1298)) ; Statement: $c1 = staticinvoke <freemarker.core.ArithmeticExpression: char getOperatorSymbol(int)>($i0) 
(assert true)
(define-const var681 String (append/-1166366385 var2190 var334)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2190!1 String)
(assert (str.prefixof var2190 var2190!1))
(assert true)
(define-const var2258 String (append/-1166366385 var681 32)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var681!1 String)
(assert (str.prefixof var681 var681!1))
(define-const var3671 var3248 (rho/1830812585 var1950)) ; Statement: $r7 = r1.<freemarker.core.ArithmeticExpression: freemarker.core.Expression rho> 
(assert true)
(define-const var519 String (getCanonicalForm/-1714059646 (cast-from-var3248-to-var524 var3671))) ; Statement: $r8 = virtualinvoke $r7.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3602 String (append/672562846 var2258 var519)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2258!1 String)
(assert (= var2258!1 (str.++ var2258 var519)))
(assert true)
(define-const var1194 String (toString/-2075883882 var3602)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/1830812585=([freemarker.core.ArithmeticExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3248-to-var524=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), operator/1830812585=([freemarker.core.ArithmeticExpression], int), var202_getOperatorSymbol/1950100367=([int], char), rho/1830812585=([freemarker.core.ArithmeticExpression], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var202=freemarker.core.ArithmeticExpression, var1950=r1, var3972=$r0, var3248=freemarker.core.Expression, var140=$r2, var524=freemarker.core.TemplateObject, var700=$r3, var3787=$r4, var2190=$r5, var1298=$i0, var334=$c1, var681=$r6, var2258=$r9, var3671=$r7, var519=$r8, var3602=$r10, var1194=$r11}
; {freemarker.core.ArithmeticExpression=var202, r1=var1950, $r0=var3972, freemarker.core.Expression=var3248, $r2=var140, freemarker.core.TemplateObject=var524, $r3=var700, $r4=var3787, $r5=var2190, $i0=var1298, $c1=var334, $r6=var681, $r9=var2258, $r7=var3671, $r8=var519, $r10=var3602, $r11=var1194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ArithmeticExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.ArithmeticExpression: freemarker.core.Expression lho>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$i0 = r1.<freemarker.core.ArithmeticExpression: int operator>;	$c1 = staticinvoke <freemarker.core.ArithmeticExpression: char getOperatorSymbol(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = r1.<freemarker.core.ArithmeticExpression: freemarker.core.Expression rho>;	$r8 = virtualinvoke $r7.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1