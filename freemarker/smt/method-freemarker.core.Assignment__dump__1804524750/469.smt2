(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort var3804 0)
(declare-sort var3462 0)
(declare-sort var1512 0)
(declare-sort var1983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getParentElement/1193049911 (var3804) var3804)
(declare-fun cast-from-var3905-to-var3804 (var3905) var3804)
(declare-fun getNodeTypeSymbol/361581816 (var3905) String)
(declare-fun variableName/-630709164 (var3905) String)
(declare-fun var1512_toFTLTopLevelTragetIdentifier/1974505572 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun valueExp/-630709164 (var3905) var1983)
(declare-fun getOperatorTypeAsString/-410358613 (var3905) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3905 var3905)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var1983 var1983)
(declare-const var2503 var3905) ; Statement: r1 := @this: freemarker.core.Assignment 
(assert (not (= var2503 null-var3905)))
(declare-const var3554 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3554 null-Bool)))
(define-const var2136 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2136)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2136!1 String)
(assert (= var2136!1 ""))
(assert true)
(define-const var1859 var3804 (getParentElement/1193049911 (cast-from-var3905-to-var3804 var2503))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Assignment: freemarker.core.TemplateElement getParentElement()>() 
(define-const var3718 Bool false) ; Statement: $z0 = $r2 instanceof freemarker.core.AssignmentInstruction 
 ; Statement: if $z0 == 0 goto $r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3718 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var372 String (getNodeTypeSymbol/361581816 var2503)) ; Statement: $r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>() 
(assert true) ; Non Conditional
(define-const var2645 String var372) ; Statement: r3 = $r11 
 ; Statement: if $r11 == null goto $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName> 
(assert (= var372 null-String)) ; Cond: $r11 == null 
(define-const var1401 String (variableName/-630709164 var2503)) ; Statement: $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName> 
(define-const var1680 String (var1512_toFTLTopLevelTragetIdentifier/1974505572 var1401)) ; Statement: $r13 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r12) 
(assert true)
;(assert (append/672562846 var2136!1 var1680)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2136!2 String)
(assert (= var2136!2 (str.++ var2136!1 var1680)))
(define-const var3258 var1983 (valueExp/-630709164 var2503)) ; Statement: $r14 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp> 
 ; Statement: if $r14 == null goto $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>() 
(assert (= var3258 null-var1983)) ; Cond: $r14 == null 
(assert true)
(define-const var3737 String (getOperatorTypeAsString/-410358613 var2503)) ; Statement: $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>() 
(assert true)
;(assert (append/672562846 var2136!2 var3737)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2136!3 String)
(assert (= var2136!3 (str.++ var2136!2 var3737)))
(define-const var497 var1983 (valueExp/-630709164 var2503)) ; Statement: $r5 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp> 
 ; Statement: if $r5 == null goto (branch) 
(assert (= var497 null-var1983)) ; Cond: $r5 == null 
 ; Statement: if r3 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2645 null-String)) ; Cond: r3 == null 
(assert true)
(define-const var1925 String (toString/-2075883882 var2136!3)) ; Statement: $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getParentElement/1193049911=([freemarker.core.TemplateElement], freemarker.core.TemplateElement), cast-from-var3905-to-var3804=([freemarker.core.Assignment], freemarker.core.TemplateElement), getNodeTypeSymbol/361581816=([freemarker.core.Assignment], java.lang.String), variableName/-630709164=([freemarker.core.Assignment], java.lang.String), var1512_toFTLTopLevelTragetIdentifier/1974505572=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), valueExp/-630709164=([freemarker.core.Assignment], freemarker.core.Expression), getOperatorTypeAsString/-410358613=([freemarker.core.Assignment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3905=freemarker.core.Assignment, var2503=r1, var3554=z1, var2136=$r0, var3804=freemarker.core.TemplateElement, var1859=$r2, var3718=$z0, var372=$r11, var2645=r3, var3462=null_type, var1401=$r12, var1512=freemarker.core._CoreStringUtils, var1680=$r13, var1983=freemarker.core.Expression, var3258=$r14, var3737=$r4, var497=$r5, var1925=$r15}
; {freemarker.core.Assignment=var3905, r1=var2503, z1=var3554, $r0=var2136, freemarker.core.TemplateElement=var3804, $r2=var1859, $z0=var3718, $r11=var372, r3=var2645, null_type=var3462, $r12=var1401, freemarker.core._CoreStringUtils=var1512, $r13=var1680, freemarker.core.Expression=var1983, $r14=var3258, $r4=var3737, $r5=var497, $r15=var1925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Assignment;	z1 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.Assignment: freemarker.core.TemplateElement getParentElement()>();	$z0 = $r2 instanceof freemarker.core.AssignmentInstruction;	if $z0 == 0 goto $r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>();	$r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>();	r3 = $r11;	if $r11 == null goto $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName>;	$r12 = r1.<freemarker.core.Assignment: java.lang.String variableName>;	$r13 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp>;	if $r14 == null goto $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>();	$r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp>;	if $r5 == null goto (branch);	if r3 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 7