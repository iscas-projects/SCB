(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var1773 0)
(declare-sort var1785 0)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/-960013469 (var3301) var1773)
(declare-fun getCanonicalForm/-741400727 (var1773) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rho/-960013469 (var3301) var1785)
(declare-fun getCanonicalForm/-1714059646 (var656) String)
(declare-fun cast-from-var1785-to-var656 (var1785) var656)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3301 var3301)
(declare-const var1254 var3301) ; Statement: r1 := @this: freemarker.core.LocalLambdaExpression 
(assert (not (= var1254 null-var3301)))
(define-const var1674 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1674)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1674!1 String)
(assert (= var1674!1 ""))
(define-const var3808 var1773 (lho/-960013469 var1254)) ; Statement: $r2 = r1.<freemarker.core.LocalLambdaExpression: freemarker.core.LocalLambdaExpression$LambdaParameterList lho> 
(assert true)
(define-const var579 String (getCanonicalForm/-741400727 var3808)) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.LocalLambdaExpression$LambdaParameterList: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var483 String (append/672562846 var1674!1 var579)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1674!2 String)
(assert (= var1674!2 (str.++ var1674!1 var579)))
(assert true)
(define-const var507 String (append/672562846 var483 " -> ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var483!1 String)
(assert (= var483!1 (str.++ var483 " -> ")))
(define-const var3243 var1785 (rho/-960013469 var1254)) ; Statement: $r5 = r1.<freemarker.core.LocalLambdaExpression: freemarker.core.Expression rho> 
(assert true)
(define-const var2193 String (getCanonicalForm/-1714059646 (cast-from-var1785-to-var656 var3243))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3602 String (append/672562846 var507 var2193)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var507!1 String)
(assert (= var507!1 (str.++ var507 var2193)))
(assert true)
(define-const var537 String (toString/-2075883882 var3602)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/-960013469=([freemarker.core.LocalLambdaExpression], freemarker.core.LocalLambdaExpression$LambdaParameterList), getCanonicalForm/-741400727=([freemarker.core.LocalLambdaExpression$LambdaParameterList], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rho/-960013469=([freemarker.core.LocalLambdaExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1785-to-var656=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3301=freemarker.core.LocalLambdaExpression, var1254=r1, var1674=$r0, var1773=freemarker.core.LocalLambdaExpression$LambdaParameterList, var3808=$r2, var579=$r3, var483=$r4, var507=$r7, var1785=freemarker.core.Expression, var3243=$r5, var656=freemarker.core.TemplateObject, var2193=$r6, var3602=$r8, var537=$r9}
; {freemarker.core.LocalLambdaExpression=var3301, r1=var1254, $r0=var1674, freemarker.core.LocalLambdaExpression$LambdaParameterList=var1773, $r2=var3808, $r3=var579, $r4=var483, $r7=var507, freemarker.core.Expression=var1785, $r5=var3243, freemarker.core.TemplateObject=var656, $r6=var2193, $r8=var3602, $r9=var537}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.LocalLambdaExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.LocalLambdaExpression: freemarker.core.LocalLambdaExpression$LambdaParameterList lho>;	$r3 = virtualinvoke $r2.<freemarker.core.LocalLambdaExpression$LambdaParameterList: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r5 = r1.<freemarker.core.LocalLambdaExpression: freemarker.core.Expression rho>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1