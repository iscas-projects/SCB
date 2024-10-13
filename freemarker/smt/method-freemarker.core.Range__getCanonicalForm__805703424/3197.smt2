(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1661 0)
(declare-sort var435 0)
(declare-sort var3438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rho/-1760623786 (var1661) var435)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/-1760623786 (var1661) var435)
(declare-fun getCanonicalForm/-1714059646 (var3438) String)
(declare-fun cast-from-var435-to-var3438 (var435) var3438)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-1650252114 (var1661) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1661 var1661)
(declare-const null-var435 var435)
(declare-const var3830 var1661) ; Statement: r0 := @this: freemarker.core.Range 
(assert (not (= var3830 null-var1661)))
(define-const var1077 var435 (rho/-1760623786 var3830)) ; Statement: $r1 = r0.<freemarker.core.Range: freemarker.core.Expression rho> 
 ; Statement: if $r1 == null goto $r11 = "" 
(assert (= var1077 null-var435)) ; Cond: $r1 == null 
(define-const var1295 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(define-const var3215 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3215)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3215!1 String)
(assert (= var3215!1 ""))
(define-const var1569 var435 (lho/-1760623786 var3830)) ; Statement: $r3 = r0.<freemarker.core.Range: freemarker.core.Expression lho> 
(assert true)
(define-const var1359 String (getCanonicalForm/-1714059646 (cast-from-var435-to-var3438 var1569))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1731 String (append/672562846 var3215!1 var1359)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3215!2 String)
(assert (= var3215!2 (str.++ var3215!1 var1359)))
(assert true)
(define-const var485 String (getNodeTypeSymbol/-1650252114 var3830)) ; Statement: $r5 = virtualinvoke r0.<freemarker.core.Range: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var2363 String (append/672562846 var1731 var485)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 var485)))
(assert true)
(define-const var3805 String (append/672562846 var2363 var1295)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2363!1 String)
(assert (= var2363!1 (str.++ var2363 var1295)))
(assert true)
(define-const var2124 String (toString/-2075883882 var3805)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {rho/-1760623786=([freemarker.core.Range], freemarker.core.Expression), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/-1760623786=([freemarker.core.Range], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var435-to-var3438=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-1650252114=([freemarker.core.Range], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1661=freemarker.core.Range, var3830=r0, var435=freemarker.core.Expression, var1077=$r1, var1295=$r11, var3215=$r2, var1569=$r3, var3438=freemarker.core.TemplateObject, var1359=$r4, var1731=$r6, var485=$r5, var2363=$r7, var3805=$r8, var2124=$r9}
; {freemarker.core.Range=var1661, r0=var3830, freemarker.core.Expression=var435, $r1=var1077, $r11=var1295, $r2=var3215, $r3=var1569, freemarker.core.TemplateObject=var3438, $r4=var1359, $r6=var1731, $r5=var485, $r7=var2363, $r8=var3805, $r9=var2124}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.Range;	$r1 = r0.<freemarker.core.Range: freemarker.core.Expression rho>;	if $r1 == null goto $r11 = "";	$r11 = "";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<freemarker.core.Range: freemarker.core.Expression lho>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke r0.<freemarker.core.Range: java.lang.String getNodeTypeSymbol()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3