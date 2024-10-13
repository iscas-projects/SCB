(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var1100 0)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun target/749210194 (var555) var1100)
(declare-fun getCanonicalForm/-1714059646 (var3055) String)
(declare-fun cast-from-var1100-to-var3055 (var1100) var3055)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun keyExpression/749210194 (var555) var1100)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var555 var555)
(declare-const var2696 var555) ; Statement: r1 := @this: freemarker.core.DynamicKeyName 
(assert (not (= var2696 null-var555)))
(define-const var523 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var523)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var523!1 String)
(assert (= var523!1 ""))
(define-const var1142 var1100 (target/749210194 var2696)) ; Statement: $r2 = r1.<freemarker.core.DynamicKeyName: freemarker.core.Expression target> 
(assert true)
(define-const var579 String (getCanonicalForm/-1714059646 (cast-from-var1100-to-var3055 var1142))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2116 String (append/672562846 var523!1 var579)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var523!2 String)
(assert (= var523!2 (str.++ var523!1 var579)))
(assert true)
(define-const var128 String (append/672562846 var2116 "[")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2116!1 String)
(assert (= var2116!1 (str.++ var2116 "[")))
(define-const var2529 var1100 (keyExpression/749210194 var2696)) ; Statement: $r5 = r1.<freemarker.core.DynamicKeyName: freemarker.core.Expression keyExpression> 
(assert true)
(define-const var3602 String (getCanonicalForm/-1714059646 (cast-from-var1100-to-var3055 var2529))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var495 String (append/672562846 var128 var3602)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var128!1 String)
(assert (= var128!1 (str.++ var128 var3602)))
(assert true)
(define-const var2157 String (append/672562846 var495 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var495!1 String)
(assert (= var495!1 (str.++ var495 "]")))
(assert true)
(define-const var3096 String (toString/-2075883882 var2157)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), target/749210194=([freemarker.core.DynamicKeyName], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1100-to-var3055=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), keyExpression/749210194=([freemarker.core.DynamicKeyName], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var555=freemarker.core.DynamicKeyName, var2696=r1, var523=$r0, var1100=freemarker.core.Expression, var1142=$r2, var3055=freemarker.core.TemplateObject, var579=$r3, var2116=$r4, var128=$r7, var2529=$r5, var3602=$r6, var495=$r8, var2157=$r9, var3096=$r10}
; {freemarker.core.DynamicKeyName=var555, r1=var2696, $r0=var523, freemarker.core.Expression=var1100, $r2=var1142, freemarker.core.TemplateObject=var3055, $r3=var579, $r4=var2116, $r7=var128, $r5=var2529, $r6=var3602, $r8=var495, $r9=var2157, $r10=var3096}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DynamicKeyName;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.DynamicKeyName: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r5 = r1.<freemarker.core.DynamicKeyName: freemarker.core.Expression keyExpression>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1