(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var1266 0)
(declare-sort var2496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun exp/691977307 (var774) var1266)
(declare-fun getCanonicalForm/-1714059646 (var2496) String)
(declare-fun cast-from-var1266-to-var2496 (var1266) var2496)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/824952849 (var774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var774 var774)
(declare-const var543 var774) ; Statement: r1 := @this: freemarker.core.ExistsExpression 
(assert (not (= var543 null-var774)))
(define-const var3952 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3952)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3952!1 String)
(assert (= var3952!1 ""))
(define-const var2089 var1266 (exp/691977307 var543)) ; Statement: $r2 = r1.<freemarker.core.ExistsExpression: freemarker.core.Expression exp> 
(assert true)
(define-const var3155 String (getCanonicalForm/-1714059646 (cast-from-var1266-to-var2496 var2089))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2026 String (append/672562846 var3952!1 var3155)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3952!2 String)
(assert (= var3952!2 (str.++ var3952!1 var3155)))
(assert true)
(define-const var1808 String (getNodeTypeSymbol/824952849 var543)) ; Statement: $r4 = virtualinvoke r1.<freemarker.core.ExistsExpression: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var7 String (append/672562846 var2026 var1808)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2026!1 String)
(assert (= var2026!1 (str.++ var2026 var1808)))
(assert true)
(define-const var2532 String (toString/-2075883882 var7)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), exp/691977307=([freemarker.core.ExistsExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1266-to-var2496=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/824952849=([freemarker.core.ExistsExpression], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var774=freemarker.core.ExistsExpression, var543=r1, var3952=$r0, var1266=freemarker.core.Expression, var2089=$r2, var2496=freemarker.core.TemplateObject, var3155=$r3, var2026=$r5, var1808=$r4, var7=$r6, var2532=$r7}
; {freemarker.core.ExistsExpression=var774, r1=var543, $r0=var3952, freemarker.core.Expression=var1266, $r2=var2089, freemarker.core.TemplateObject=var2496, $r3=var3155, $r5=var2026, $r4=var1808, $r6=var7, $r7=var2532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ExistsExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.ExistsExpression: freemarker.core.Expression exp>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<freemarker.core.ExistsExpression: java.lang.String getNodeTypeSymbol()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1