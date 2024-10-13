(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1241 0)
(declare-sort var2711 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isMinus/-732348986 (var1241) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/-732348986 (var1241) var2711)
(declare-fun getCanonicalForm/-1714059646 (var247) String)
(declare-fun cast-from-var2711-to-var247 (var2711) var247)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1241 var1241)
(declare-const var1537 var1241) ; Statement: r0 := @this: freemarker.core.UnaryPlusMinusExpression 
(assert (not (= var1537 null-var1241)))
(define-const var2217 Bool (isMinus/-732348986 var1537)) ; Statement: $z0 = r0.<freemarker.core.UnaryPlusMinusExpression: boolean isMinus> 
 ; Statement: if $z0 == 0 goto $r7 = "+" 
(assert (not (= (ite var2217 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3884 String "-") ; Statement: $r7 = "-" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3733 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3733)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3733!1 String)
(assert (= var3733!1 ""))
(assert true)
(define-const var1451 String (append/672562846 var3733!1 var3884)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3733!2 String)
(assert (= var3733!2 (str.++ var3733!1 var3884)))
(define-const var3608 var2711 (target/-732348986 var1537)) ; Statement: $r2 = r0.<freemarker.core.UnaryPlusMinusExpression: freemarker.core.Expression target> 
(assert true)
(define-const var1833 String (getCanonicalForm/-1714059646 (cast-from-var2711-to-var247 var3608))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var2637 String (append/672562846 var1451 var1833)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1451!1 String)
(assert (= var1451!1 (str.++ var1451 var1833)))
(assert true)
(define-const var1706 String (toString/-2075883882 var2637)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isMinus/-732348986=([freemarker.core.UnaryPlusMinusExpression], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/-732348986=([freemarker.core.UnaryPlusMinusExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2711-to-var247=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1241=freemarker.core.UnaryPlusMinusExpression, var1537=r0, var2217=$z0, var3884=$r7, var3733=$r1, var1451=$r4, var2711=freemarker.core.Expression, var3608=$r2, var247=freemarker.core.TemplateObject, var1833=$r3, var2637=$r5, var1706=$r6}
; {freemarker.core.UnaryPlusMinusExpression=var1241, r0=var1537, $z0=var2217, $r7=var3884, $r1=var3733, $r4=var1451, freemarker.core.Expression=var2711, $r2=var3608, freemarker.core.TemplateObject=var247, $r3=var1833, $r5=var2637, $r6=var1706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.UnaryPlusMinusExpression;	$z0 = r0.<freemarker.core.UnaryPlusMinusExpression: boolean isMinus>;	if $z0 == 0 goto $r7 = "+";	$r7 = "-";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r2 = r0.<freemarker.core.UnaryPlusMinusExpression: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3