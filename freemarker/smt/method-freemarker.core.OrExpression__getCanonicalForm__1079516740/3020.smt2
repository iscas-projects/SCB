(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3382 0)
(declare-sort var2049 0)
(declare-sort var729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/-264825694 (var3382) var2049)
(declare-fun getCanonicalForm/-1714059646 (var729) String)
(declare-fun cast-from-var2049-to-var729 (var2049) var729)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rho/-264825694 (var3382) var2049)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3382 var3382)
(declare-const var833 var3382) ; Statement: r1 := @this: freemarker.core.OrExpression 
(assert (not (= var833 null-var3382)))
(define-const var879 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(define-const var233 var2049 (lho/-264825694 var833)) ; Statement: $r2 = r1.<freemarker.core.OrExpression: freemarker.core.Expression lho> 
(assert true)
(define-const var1313 String (getCanonicalForm/-1714059646 (cast-from-var2049-to-var729 var233))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3325 String (append/672562846 var879!1 var1313)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var879!2 String)
(assert (= var879!2 (str.++ var879!1 var1313)))
(assert true)
(define-const var525 String (append/672562846 var3325 " || ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" || ") 
(declare-const var3325!1 String)
(assert (= var3325!1 (str.++ var3325 " || ")))
(define-const var3287 var2049 (rho/-264825694 var833)) ; Statement: $r5 = r1.<freemarker.core.OrExpression: freemarker.core.Expression rho> 
(assert true)
(define-const var2467 String (getCanonicalForm/-1714059646 (cast-from-var2049-to-var729 var3287))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var97 String (append/672562846 var525 var2467)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var525!1 String)
(assert (= var525!1 (str.++ var525 var2467)))
(assert true)
(define-const var1329 String (toString/-2075883882 var97)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/-264825694=([freemarker.core.OrExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2049-to-var729=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rho/-264825694=([freemarker.core.OrExpression], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3382=freemarker.core.OrExpression, var833=r1, var879=$r0, var2049=freemarker.core.Expression, var233=$r2, var729=freemarker.core.TemplateObject, var1313=$r3, var3325=$r4, var525=$r7, var3287=$r5, var2467=$r6, var97=$r8, var1329=$r9}
; {freemarker.core.OrExpression=var3382, r1=var833, $r0=var879, freemarker.core.Expression=var2049, $r2=var233, freemarker.core.TemplateObject=var729, $r3=var1313, $r4=var3325, $r7=var525, $r5=var3287, $r6=var2467, $r8=var97, $r9=var1329}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.OrExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.OrExpression: freemarker.core.Expression lho>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" || ");	$r5 = r1.<freemarker.core.OrExpression: freemarker.core.Expression rho>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1