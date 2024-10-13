(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1845 var1845)
(declare-const null-Bool Bool)
(declare-const var1845-CURRENT_ARCHITECTURE String)
(declare-const var3849 var1845) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var3849 null-var1845)))
(declare-const var3806 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3806 null-Bool)))
(declare-const var2430 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2430 null-Bool)))
(declare-const var543 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var543 null-Bool)))
(define-const var2235 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2235)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2235!1 String)
(assert (= var2235!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var3806 1 0) 0)) ; Cond: z0 == 0 
(define-const var1548 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var462 String (append/672562846 var2235!1 var1548)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2235!2 String)
(assert (= var2235!2 (str.++ var2235!1 var1548)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var2430 1 0) 0)) ; Cond: z1 == 0 
(define-const var60 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var309 String (append/672562846 var462 var60)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var462!1 String)
(assert (= var462!1 (str.++ var462 var60)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var2430 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (= (ite var2430 1 0) 0)) ; Cond: z1 == 0 
(define-const var2840 String var1845-CURRENT_ARCHITECTURE) ; Statement: $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert true)
;(assert (append/672562846 var309 var2840)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var309!1 String)
(assert (= var309!1 (str.++ var309 var2840)))
(assert true) ; Non Conditional
(assert true)
(define-const var1679 String (toString/-2075883882 var309!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1845=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var3849=r9, var3806=z0, var2430=z1, var543=z2, var2235=$r0, var1548=$r10, var462=$r1, var60=$r11, var309=$r8, var2840=$r2, var1679=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var1845, r9=var3849, z0=var3806, z1=var2430, z2=var543, $r0=var2235, $r10=var1548, $r1=var462, $r11=var60, $r8=var309, $r2=var2840, $r12=var1679}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8