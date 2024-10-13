(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var3715 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/110837874 (var40) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun searched/-2019127022 (var40) var3715)
(declare-fun getCanonicalForm/-1714059646 (var2948) String)
(declare-fun cast-from-var3715-to-var2948 (var3715) var2948)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var40 var40)
(declare-const null-Bool Bool)
(declare-const var9 var40) ; Statement: r1 := @this: freemarker.core.SwitchBlock 
(assert (not (= var9 null-var40)))
(declare-const var167 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var167 null-Bool)))
(define-const var1358 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1358)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1358!1 String)
(assert (= var1358!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.SwitchBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3623 String (getNodeTypeSymbol/110837874 var9)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.SwitchBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1358!1 var3623)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1358!2 String)
(assert (= var1358!2 (str.++ var1358!1 var3623)))
(assert true)
;(assert (append/-1166366385 var1358!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1358!3 String)
(assert (str.prefixof var1358!2 var1358!3))
(define-const var3825 var3715 (searched/-2019127022 var9)) ; Statement: $r3 = r1.<freemarker.core.SwitchBlock: freemarker.core.Expression searched> 
(assert true)
(define-const var1610 String (getCanonicalForm/-1714059646 (cast-from-var3715-to-var2948 var3825))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var1358!3 var1610)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1358!4 String)
(assert (= var1358!4 (str.++ var1358!3 var1610)))
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2475 String (toString/-2075883882 var1358!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/110837874=([freemarker.core.SwitchBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), searched/-2019127022=([freemarker.core.SwitchBlock], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3715-to-var2948=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var40=freemarker.core.SwitchBlock, var9=r1, var167=z0, var1358=$r0, var3623=$r2, var3715=freemarker.core.Expression, var3825=$r3, var2948=freemarker.core.TemplateObject, var1610=$r4, var2475=$r5}
; {freemarker.core.SwitchBlock=var40, r1=var9, z0=var167, $r0=var1358, $r2=var3623, freemarker.core.Expression=var3715, $r3=var3825, freemarker.core.TemplateObject=var2948, $r4=var1610, $r5=var2475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.SwitchBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.SwitchBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.SwitchBlock: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.SwitchBlock: freemarker.core.Expression searched>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3