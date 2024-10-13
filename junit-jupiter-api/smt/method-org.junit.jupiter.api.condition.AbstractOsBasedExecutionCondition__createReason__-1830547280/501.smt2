(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var763 var763)
(declare-const null-Bool Bool)
(declare-const var763-CURRENT_OS String)
(declare-const var2362 var763) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2362 null-var763)))
(declare-const var771 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var771 null-Bool)))
(declare-const var863 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var863 null-Bool)))
(declare-const var2495 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2495 null-Bool)))
(define-const var1480 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1480)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1480!1 String)
(assert (= var1480!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var771 1 0) 0)) ; Cond: z0 == 0 
(define-const var2260 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var272 String (append/672562846 var1480!1 var2260)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1480!2 String)
(assert (= var1480!2 (str.++ var1480!1 var2260)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (not (= (ite var863 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1323 String " on operating system: ") ; Statement: $r11 = " on operating system: " 
 ; Statement: goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2882 String (append/672562846 var272 var1323)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var272!1 String)
(assert (= var272!1 (str.++ var272 var1323)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var863 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (not (= (ite var863 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var756 String var763-CURRENT_OS) ; Statement: $r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(assert true)
;(assert (append/672562846 var2882 var756)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2882!1 String)
(assert (= var2882!1 (str.++ var2882 var756)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1307 String (toString/-2075883882 var2882!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var763=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2362=r9, var771=z0, var863=z1, var2495=z2, var1480=$r0, var2260=$r10, var272=$r1, var1323=$r11, var2882=$r8, var756=$r3, var1307=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var763, r9=var2362, z0=var771, z1=var863, z2=var2495, $r0=var1480, $r10=var2260, $r1=var272, $r11=var1323, $r8=var2882, $r3=var756, $r12=var1307}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on operating system: ";	goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8