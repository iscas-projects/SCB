(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1423 0)
(declare-sort var582 0)
(declare-sort var2343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rho/-1760623786 (var1423) var582)
(declare-fun getCanonicalForm/-1714059646 (var2343) String)
(declare-fun cast-from-var582-to-var2343 (var582) var2343)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/-1760623786 (var1423) var582)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-1650252114 (var1423) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1423 var1423)
(declare-const null-var582 var582)
(declare-const var3257 var1423) ; Statement: r0 := @this: freemarker.core.Range 
(assert (not (= var3257 null-var1423)))
(define-const var617 var582 (rho/-1760623786 var3257)) ; Statement: $r1 = r0.<freemarker.core.Range: freemarker.core.Expression rho> 
 ; Statement: if $r1 == null goto $r11 = "" 
(assert (not (= var617 null-var582))) ; Negate: Cond: $r1 == null  
(define-const var1949 var582 (rho/-1760623786 var3257)) ; Statement: $r10 = r0.<freemarker.core.Range: freemarker.core.Expression rho> 
(assert true)
(define-const var3313 String (getCanonicalForm/-1714059646 (cast-from-var582-to-var2343 var1949))) ; Statement: $r11 = virtualinvoke $r10.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1144 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1144)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1144!1 String)
(assert (= var1144!1 ""))
(define-const var373 var582 (lho/-1760623786 var3257)) ; Statement: $r3 = r0.<freemarker.core.Range: freemarker.core.Expression lho> 
(assert true)
(define-const var788 String (getCanonicalForm/-1714059646 (cast-from-var582-to-var2343 var373))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1642 String (append/672562846 var1144!1 var788)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1144!2 String)
(assert (= var1144!2 (str.++ var1144!1 var788)))
(assert true)
(define-const var2640 String (getNodeTypeSymbol/-1650252114 var3257)) ; Statement: $r5 = virtualinvoke r0.<freemarker.core.Range: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var768 String (append/672562846 var1642 var2640)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1642!1 String)
(assert (= var1642!1 (str.++ var1642 var2640)))
(assert true)
(define-const var3675 String (append/672562846 var768 var3313)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var768!1 String)
(assert (= var768!1 (str.++ var768 var3313)))
(assert true)
(define-const var1712 String (toString/-2075883882 var3675)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {rho/-1760623786=([freemarker.core.Range], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var582-to-var2343=([freemarker.core.Expression], freemarker.core.TemplateObject), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/-1760623786=([freemarker.core.Range], freemarker.core.Expression), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-1650252114=([freemarker.core.Range], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1423=freemarker.core.Range, var3257=r0, var582=freemarker.core.Expression, var617=$r1, var1949=$r10, var2343=freemarker.core.TemplateObject, var3313=$r11, var1144=$r2, var373=$r3, var788=$r4, var1642=$r6, var2640=$r5, var768=$r7, var3675=$r8, var1712=$r9}
; {freemarker.core.Range=var1423, r0=var3257, freemarker.core.Expression=var582, $r1=var617, $r10=var1949, freemarker.core.TemplateObject=var2343, $r11=var3313, $r2=var1144, $r3=var373, $r4=var788, $r6=var1642, $r5=var2640, $r7=var768, $r8=var3675, $r9=var1712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.Range;	$r1 = r0.<freemarker.core.Range: freemarker.core.Expression rho>;	if $r1 == null goto $r11 = "";	$r10 = r0.<freemarker.core.Range: freemarker.core.Expression rho>;	$r11 = virtualinvoke $r10.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<freemarker.core.Range: freemarker.core.Expression lho>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke r0.<freemarker.core.Range: java.lang.String getNodeTypeSymbol()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3