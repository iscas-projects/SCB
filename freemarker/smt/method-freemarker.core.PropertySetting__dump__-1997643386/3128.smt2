(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var1423 0)
(declare-sort var2801 0)
(declare-sort var146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/733243312 (var1827) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun key/1841118612 (var1827) String)
(declare-fun var1423_toFTLTopLevelTragetIdentifier/1974505572 (String) String)
(declare-fun value/1841118612 (var1827) var2801)
(declare-fun getCanonicalForm/-1714059646 (var146) String)
(declare-fun cast-from-var2801-to-var146 (var2801) var146)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1827 var1827)
(declare-const null-Bool Bool)
(declare-const var696 var1827) ; Statement: r1 := @this: freemarker.core.PropertySetting 
(assert (not (= var696 null-var1827)))
(declare-const var2089 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2089 null-Bool)))
(define-const var1030 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1030)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1030!1 String)
(assert (= var1030!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.PropertySetting: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2089 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1653 String (getNodeTypeSymbol/733243312 var696)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.PropertySetting: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1030!1 var1653)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1030!2 String)
(assert (= var1030!2 (str.++ var1030!1 var1653)))
(assert true)
;(assert (append/-1166366385 var1030!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1030!3 String)
(assert (str.prefixof var1030!2 var1030!3))
(define-const var1778 String (key/1841118612 var696)) ; Statement: $r3 = r1.<freemarker.core.PropertySetting: java.lang.String key> 
(define-const var468 String (var1423_toFTLTopLevelTragetIdentifier/1974505572 var1778)) ; Statement: $r4 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r3) 
(assert true)
;(assert (append/672562846 var1030!3 var468)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1030!4 String)
(assert (= var1030!4 (str.++ var1030!3 var468)))
(assert true)
;(assert (append/-1166366385 var1030!4 61)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1030!5 String)
(assert (str.prefixof var1030!4 var1030!5))
(define-const var3766 var2801 (value/1841118612 var696)) ; Statement: $r5 = r1.<freemarker.core.PropertySetting: freemarker.core.Expression value> 
(assert true)
(define-const var3362 String (getCanonicalForm/-1714059646 (cast-from-var2801-to-var146 var3766))) ; Statement: $r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var1030!5 var3362)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1030!6 String)
(assert (= var1030!6 (str.++ var1030!5 var3362)))
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2089 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3080 String (toString/-2075883882 var1030!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/733243312=([freemarker.core.PropertySetting], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), key/1841118612=([freemarker.core.PropertySetting], java.lang.String), var1423_toFTLTopLevelTragetIdentifier/1974505572=([java.lang.String], java.lang.String), value/1841118612=([freemarker.core.PropertySetting], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2801-to-var146=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1827=freemarker.core.PropertySetting, var696=r1, var2089=z0, var1030=$r0, var1653=$r2, var1778=$r3, var1423=freemarker.core._CoreStringUtils, var468=$r4, var2801=freemarker.core.Expression, var3766=$r5, var146=freemarker.core.TemplateObject, var3362=$r6, var3080=$r7}
; {freemarker.core.PropertySetting=var1827, r1=var696, z0=var2089, $r0=var1030, $r2=var1653, $r3=var1778, freemarker.core._CoreStringUtils=var1423, $r4=var468, freemarker.core.Expression=var2801, $r5=var3766, freemarker.core.TemplateObject=var146, $r6=var3362, $r7=var3080}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.PropertySetting;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.PropertySetting: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.PropertySetting: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.PropertySetting: java.lang.String key>;	$r4 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r5 = r1.<freemarker.core.PropertySetting: freemarker.core.Expression value>;	$r6 = virtualinvoke $r5.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3