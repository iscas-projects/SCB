(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var710 var710)
(declare-const null-Bool Bool)
(declare-const var710-CURRENT_ARCHITECTURE String)
(declare-const var2802 var710) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2802 null-var710)))
(declare-const var3095 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3095 null-Bool)))
(declare-const var1093 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1093 null-Bool)))
(declare-const var240 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var240 null-Bool)))
(define-const var957 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var957)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var957!1 String)
(assert (= var957!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (not (= (ite var3095 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1869 String "Enabled") ; Statement: $r10 = "Enabled" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3275 String (append/672562846 var957!1 var1869)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var957!2 String)
(assert (= var957!2 (str.++ var957!1 var1869)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (not (= (ite var1093 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1005 String " on operating system: ") ; Statement: $r11 = " on operating system: " 
 ; Statement: goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3402 String (append/672562846 var3275 var1005)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 var1005)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var1093 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (= (ite var1093 1 0) 0)) ; Cond: z1 == 0 
(define-const var548 String var710-CURRENT_ARCHITECTURE) ; Statement: $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert true)
;(assert (append/672562846 var3402 var548)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3402!1 String)
(assert (= var3402!1 (str.++ var3402 var548)))
(assert true) ; Non Conditional
(assert true)
(define-const var2395 String (toString/-2075883882 var3402!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var710=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2802=r9, var3095=z0, var1093=z1, var240=z2, var957=$r0, var1869=$r10, var3275=$r1, var1005=$r11, var3402=$r8, var548=$r2, var2395=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var710, r9=var2802, z0=var3095, z1=var1093, z2=var240, $r0=var957, $r10=var1869, $r1=var3275, $r11=var1005, $r8=var3402, $r2=var548, $r12=var2395}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Enabled";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on operating system: ";	goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8