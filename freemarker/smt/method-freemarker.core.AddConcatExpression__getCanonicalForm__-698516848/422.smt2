(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var3572 0)
(declare-sort var1790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun left/1397432806 (var541) var3572)
(declare-fun getCanonicalForm/-1714059646 (var1790) String)
(declare-fun cast-from-var3572-to-var1790 (var3572) var1790)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun right/1397432806 (var541) var3572)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var541 var541)
(declare-const var2911 var541) ; Statement: r1 := @this: freemarker.core.AddConcatExpression 
(assert (not (= var2911 null-var541)))
(define-const var3469 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3469)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3469!1 String)
(assert (= var3469!1 ""))
(define-const var167 var3572 (left/1397432806 var2911)) ; Statement: $r2 = r1.<freemarker.core.AddConcatExpression: freemarker.core.Expression left> 
(assert true)
(define-const var1183 String (getCanonicalForm/-1714059646 (cast-from-var3572-to-var1790 var167))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var773 String (append/672562846 var3469!1 var1183)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3469!2 String)
(assert (= var3469!2 (str.++ var3469!1 var1183)))
(assert true)
(define-const var2610 String (append/672562846 var773 " + ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" + ") 
(declare-const var773!1 String)
(assert (= var773!1 (str.++ var773 " + ")))
(define-const var2139 var3572 (right/1397432806 var2911)) ; Statement: $r5 = r1.<freemarker.core.AddConcatExpression: freemarker.core.Expression right> 
(assert true)
(define-const var193 String (getCanonicalForm/-1714059646 (cast-from-var3572-to-var1790 var2139))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3541 String (append/672562846 var2610 var193)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2610!1 String)
(assert (= var2610!1 (str.++ var2610 var193)))
(assert true)
(define-const var1187 String (toString/-2075883882 var3541)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), left/1397432806=([freemarker.core.AddConcatExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3572-to-var1790=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), right/1397432806=([freemarker.core.AddConcatExpression], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var541=freemarker.core.AddConcatExpression, var2911=r1, var3469=$r0, var3572=freemarker.core.Expression, var167=$r2, var1790=freemarker.core.TemplateObject, var1183=$r3, var773=$r4, var2610=$r7, var2139=$r5, var193=$r6, var3541=$r8, var1187=$r9}
; {freemarker.core.AddConcatExpression=var541, r1=var2911, $r0=var3469, freemarker.core.Expression=var3572, $r2=var167, freemarker.core.TemplateObject=var1790, $r3=var1183, $r4=var773, $r7=var2610, $r5=var2139, $r6=var193, $r8=var3541, $r9=var1187}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AddConcatExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.AddConcatExpression: freemarker.core.Expression left>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" + ");	$r5 = r1.<freemarker.core.AddConcatExpression: freemarker.core.Expression right>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1