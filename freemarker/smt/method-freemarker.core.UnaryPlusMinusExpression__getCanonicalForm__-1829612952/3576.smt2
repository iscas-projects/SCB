(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var3554 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isMinus/-732348986 (var233) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/-732348986 (var233) var3554)
(declare-fun getCanonicalForm/-1714059646 (var1536) String)
(declare-fun cast-from-var3554-to-var1536 (var3554) var1536)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var233 var233)
(declare-const var2342 var233) ; Statement: r0 := @this: freemarker.core.UnaryPlusMinusExpression 
(assert (not (= var2342 null-var233)))
(define-const var345 Bool (isMinus/-732348986 var2342)) ; Statement: $z0 = r0.<freemarker.core.UnaryPlusMinusExpression: boolean isMinus> 
 ; Statement: if $z0 == 0 goto $r7 = "+" 
(assert (= (ite var345 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2766 String "+") ; Statement: $r7 = "+" 
(assert true) ; Non Conditional
(define-const var3824 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3824)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3824!1 String)
(assert (= var3824!1 ""))
(assert true)
(define-const var670 String (append/672562846 var3824!1 var2766)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3824!2 String)
(assert (= var3824!2 (str.++ var3824!1 var2766)))
(define-const var983 var3554 (target/-732348986 var2342)) ; Statement: $r2 = r0.<freemarker.core.UnaryPlusMinusExpression: freemarker.core.Expression target> 
(assert true)
(define-const var139 String (getCanonicalForm/-1714059646 (cast-from-var3554-to-var1536 var983))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var58 String (append/672562846 var670 var139)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 var139)))
(assert true)
(define-const var1356 String (toString/-2075883882 var58)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isMinus/-732348986=([freemarker.core.UnaryPlusMinusExpression], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/-732348986=([freemarker.core.UnaryPlusMinusExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3554-to-var1536=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var233=freemarker.core.UnaryPlusMinusExpression, var2342=r0, var345=$z0, var2766=$r7, var3824=$r1, var670=$r4, var3554=freemarker.core.Expression, var983=$r2, var1536=freemarker.core.TemplateObject, var139=$r3, var58=$r5, var1356=$r6}
; {freemarker.core.UnaryPlusMinusExpression=var233, r0=var2342, $z0=var345, $r7=var2766, $r1=var3824, $r4=var670, freemarker.core.Expression=var3554, $r2=var983, freemarker.core.TemplateObject=var1536, $r3=var139, $r5=var58, $r6=var1356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.UnaryPlusMinusExpression;	$z0 = r0.<freemarker.core.UnaryPlusMinusExpression: boolean isMinus>;	if $z0 == 0 goto $r7 = "+";	$r7 = "+";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r2 = r0.<freemarker.core.UnaryPlusMinusExpression: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3