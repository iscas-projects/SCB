(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3661 0)
(declare-sort var2933 0)
(declare-sort var3391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/-1275238168 (var3661) var2933)
(declare-fun getCanonicalForm/-1714059646 (var3391) String)
(declare-fun cast-from-var2933-to-var3391 (var2933) var3391)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rho/-1275238168 (var3661) var2933)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3661 var3661)
(declare-const var3072 var3661) ; Statement: r1 := @this: freemarker.core.AndExpression 
(assert (not (= var3072 null-var3661)))
(define-const var1558 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1558)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1558!1 String)
(assert (= var1558!1 ""))
(define-const var667 var2933 (lho/-1275238168 var3072)) ; Statement: $r2 = r1.<freemarker.core.AndExpression: freemarker.core.Expression lho> 
(assert true)
(define-const var1300 String (getCanonicalForm/-1714059646 (cast-from-var2933-to-var3391 var667))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2234 String (append/672562846 var1558!1 var1300)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1558!2 String)
(assert (= var1558!2 (str.++ var1558!1 var1300)))
(assert true)
(define-const var2401 String (append/672562846 var2234 " && ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" && ") 
(declare-const var2234!1 String)
(assert (= var2234!1 (str.++ var2234 " && ")))
(define-const var3779 var2933 (rho/-1275238168 var3072)) ; Statement: $r5 = r1.<freemarker.core.AndExpression: freemarker.core.Expression rho> 
(assert true)
(define-const var1641 String (getCanonicalForm/-1714059646 (cast-from-var2933-to-var3391 var3779))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2092 String (append/672562846 var2401 var1641)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 var1641)))
(assert true)
(define-const var396 String (toString/-2075883882 var2092)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/-1275238168=([freemarker.core.AndExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2933-to-var3391=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rho/-1275238168=([freemarker.core.AndExpression], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3661=freemarker.core.AndExpression, var3072=r1, var1558=$r0, var2933=freemarker.core.Expression, var667=$r2, var3391=freemarker.core.TemplateObject, var1300=$r3, var2234=$r4, var2401=$r7, var3779=$r5, var1641=$r6, var2092=$r8, var396=$r9}
; {freemarker.core.AndExpression=var3661, r1=var3072, $r0=var1558, freemarker.core.Expression=var2933, $r2=var667, freemarker.core.TemplateObject=var3391, $r3=var1300, $r4=var2234, $r7=var2401, $r5=var3779, $r6=var1641, $r8=var2092, $r9=var396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AndExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.AndExpression: freemarker.core.Expression lho>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" && ");	$r5 = r1.<freemarker.core.AndExpression: freemarker.core.Expression rho>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1