(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2011 var2011)
(declare-const null-Bool Bool)
(declare-const var2011-CURRENT_OS String)
(declare-const var683 var2011) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var683 null-var2011)))
(declare-const var3998 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3998 null-Bool)))
(declare-const var3137 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3137 null-Bool)))
(declare-const var722 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var722 null-Bool)))
(define-const var1300 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1300)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1300!1 String)
(assert (= var1300!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var3998 1 0) 0)) ; Cond: z0 == 0 
(define-const var3095 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var48 String (append/672562846 var1300!1 var3095)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1300!2 String)
(assert (= var1300!2 (str.++ var1300!1 var3095)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var3137 1 0) 0)) ; Cond: z1 == 0 
(define-const var3447 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var60 String (append/672562846 var48 var3447)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var48!1 String)
(assert (= var48!1 (str.++ var48 var3447)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var3137 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (not (= (ite var3137 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var534 String var2011-CURRENT_OS) ; Statement: $r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(assert true)
;(assert (append/672562846 var60 var534)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var60!1 String)
(assert (= var60!1 (str.++ var60 var534)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2137 String (toString/-2075883882 var60!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2011=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var683=r9, var3998=z0, var3137=z1, var722=z2, var1300=$r0, var3095=$r10, var48=$r1, var3447=$r11, var60=$r8, var534=$r3, var2137=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var2011, r9=var683, z0=var3998, z1=var3137, z2=var722, $r0=var1300, $r10=var3095, $r1=var48, $r11=var3447, $r8=var60, $r3=var534, $r12=var2137}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8