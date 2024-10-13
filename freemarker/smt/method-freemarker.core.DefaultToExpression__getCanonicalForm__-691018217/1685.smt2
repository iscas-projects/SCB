(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var450 0)
(declare-sort var1756 0)
(declare-sort var3100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rho/1927764653 (var450) var1756)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/1927764653 (var450) var1756)
(declare-fun getCanonicalForm/-1714059646 (var3100) String)
(declare-fun cast-from-var1756-to-var3100 (var1756) var3100)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var450 var450)
(declare-const null-var1756 var1756)
(declare-const var3121 var450) ; Statement: r0 := @this: freemarker.core.DefaultToExpression 
(assert (not (= var3121 null-var450)))
(define-const var1880 var1756 (rho/1927764653 var3121)) ; Statement: $r1 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1880 null-var1756))) ; Cond: $r1 != null 
(define-const var293 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(define-const var367 var1756 (lho/1927764653 var3121)) ; Statement: $r3 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression lho> 
(assert true)
(define-const var2549 String (getCanonicalForm/-1714059646 (cast-from-var1756-to-var3100 var367))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2147 String (append/672562846 var293!1 var2549)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 var2549)))
(assert true)
(define-const var961 String (append/-1166366385 var2147 33)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(33) 
(declare-const var2147!1 String)
(assert (str.prefixof var2147 var2147!1))
(define-const var3087 var1756 (rho/1927764653 var3121)) ; Statement: $r6 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho> 
(assert true)
(define-const var2532 String (getCanonicalForm/-1714059646 (cast-from-var1756-to-var3100 var3087))) ; Statement: $r7 = virtualinvoke $r6.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3055 String (append/672562846 var961 var2532)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var961!1 String)
(assert (= var961!1 (str.++ var961 var2532)))
(assert true)
(define-const var726 String (toString/-2075883882 var3055)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {rho/1927764653=([freemarker.core.DefaultToExpression], freemarker.core.Expression), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/1927764653=([freemarker.core.DefaultToExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1756-to-var3100=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var450=freemarker.core.DefaultToExpression, var3121=r0, var1756=freemarker.core.Expression, var1880=$r1, var293=$r2, var367=$r3, var3100=freemarker.core.TemplateObject, var2549=$r4, var2147=$r5, var961=$r8, var3087=$r6, var2532=$r7, var3055=$r9, var726=$r10}
; {freemarker.core.DefaultToExpression=var450, r0=var3121, freemarker.core.Expression=var1756, $r1=var1880, $r2=var293, $r3=var367, freemarker.core.TemplateObject=var3100, $r4=var2549, $r5=var2147, $r8=var961, $r6=var3087, $r7=var2532, $r9=var3055, $r10=var726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.DefaultToExpression;	$r1 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression lho>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(33);	$r6 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho>;	$r7 = virtualinvoke $r6.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2