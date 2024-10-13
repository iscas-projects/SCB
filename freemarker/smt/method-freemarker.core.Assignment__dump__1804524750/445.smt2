(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var3025 0)
(declare-sort var2526 0)
(declare-sort var2304 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getParentElement/1193049911 (var3025) var3025)
(declare-fun cast-from-var55-to-var3025 (var55) var3025)
(declare-fun variableName/-630709164 (var55) String)
(declare-fun var2304_toFTLTopLevelTragetIdentifier/1974505572 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun valueExp/-630709164 (var55) var2574)
(declare-fun getOperatorTypeAsString/-410358613 (var55) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var55 var55)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var2574 var2574)
(declare-const var1031 var55) ; Statement: r1 := @this: freemarker.core.Assignment 
(assert (not (= var1031 null-var55)))
(declare-const var3162 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3162 null-Bool)))
(define-const var1490 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var2469 var3025 (getParentElement/1193049911 (cast-from-var55-to-var3025 var1031))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Assignment: freemarker.core.TemplateElement getParentElement()>() 
(define-const var2034 Bool false) ; Statement: $z0 = $r2 instanceof freemarker.core.AssignmentInstruction 
 ; Statement: if $z0 == 0 goto $r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var2034 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3037 String null-String) ; Statement: $r11 = null 
 ; Statement: goto [?= r3 = $r11] 
(assert true) ; Non Conditional
(define-const var3602 String var3037) ; Statement: r3 = $r11 
 ; Statement: if $r11 == null goto $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName> 
(assert (= var3037 null-String)) ; Cond: $r11 == null 
(define-const var2662 String (variableName/-630709164 var1031)) ; Statement: $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName> 
(define-const var1534 String (var2304_toFTLTopLevelTragetIdentifier/1974505572 var2662)) ; Statement: $r13 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r12) 
(assert true)
;(assert (append/672562846 var1490!1 var1534)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 var1534)))
(define-const var3548 var2574 (valueExp/-630709164 var1031)) ; Statement: $r14 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp> 
 ; Statement: if $r14 == null goto $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>() 
(assert (= var3548 null-var2574)) ; Cond: $r14 == null 
(assert true)
(define-const var2598 String (getOperatorTypeAsString/-410358613 var1031)) ; Statement: $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>() 
(assert true)
;(assert (append/672562846 var1490!2 var2598)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1490!3 String)
(assert (= var1490!3 (str.++ var1490!2 var2598)))
(define-const var2617 var2574 (valueExp/-630709164 var1031)) ; Statement: $r5 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp> 
 ; Statement: if $r5 == null goto (branch) 
(assert (= var2617 null-var2574)) ; Cond: $r5 == null 
 ; Statement: if r3 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3602 null-String)) ; Cond: r3 == null 
(assert true)
(define-const var880 String (toString/-2075883882 var1490!3)) ; Statement: $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getParentElement/1193049911=([freemarker.core.TemplateElement], freemarker.core.TemplateElement), cast-from-var55-to-var3025=([freemarker.core.Assignment], freemarker.core.TemplateElement), variableName/-630709164=([freemarker.core.Assignment], java.lang.String), var2304_toFTLTopLevelTragetIdentifier/1974505572=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), valueExp/-630709164=([freemarker.core.Assignment], freemarker.core.Expression), getOperatorTypeAsString/-410358613=([freemarker.core.Assignment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var55=freemarker.core.Assignment, var1031=r1, var3162=z1, var1490=$r0, var3025=freemarker.core.TemplateElement, var2469=$r2, var2034=$z0, var2526=null_type, var3037=$r11, var3602=r3, var2662=$r12, var2304=freemarker.core._CoreStringUtils, var1534=$r13, var2574=freemarker.core.Expression, var3548=$r14, var2598=$r4, var2617=$r5, var880=$r15}
; {freemarker.core.Assignment=var55, r1=var1031, z1=var3162, $r0=var1490, freemarker.core.TemplateElement=var3025, $r2=var2469, $z0=var2034, null_type=var2526, $r11=var3037, r3=var3602, $r12=var2662, freemarker.core._CoreStringUtils=var2304, $r13=var1534, freemarker.core.Expression=var2574, $r14=var3548, $r4=var2598, $r5=var2617, $r15=var880}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Assignment;	z1 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.Assignment: freemarker.core.TemplateElement getParentElement()>();	$z0 = $r2 instanceof freemarker.core.AssignmentInstruction;	if $z0 == 0 goto $r11 = virtualinvoke r1.<freemarker.core.Assignment: java.lang.String getNodeTypeSymbol()>();	$r11 = null;	goto [?= r3 = $r11];	r3 = $r11;	if $r11 == null goto $r12 = r1.<freemarker.core.Assignment: java.lang.String variableName>;	$r12 = r1.<freemarker.core.Assignment: java.lang.String variableName>;	$r13 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp>;	if $r14 == null goto $r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>();	$r4 = specialinvoke r1.<freemarker.core.Assignment: java.lang.String getOperatorTypeAsString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.Assignment: freemarker.core.Expression valueExp>;	if $r5 == null goto (branch);	if r3 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 7