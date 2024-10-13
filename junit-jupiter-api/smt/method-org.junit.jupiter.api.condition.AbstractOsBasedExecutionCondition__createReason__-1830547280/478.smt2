(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3709 var3709)
(declare-const null-Bool Bool)
(declare-const var3709-CURRENT_OS String)
(declare-const var2279 var3709) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2279 null-var3709)))
(declare-const var3880 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3880 null-Bool)))
(declare-const var3391 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3391 null-Bool)))
(declare-const var1884 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1884 null-Bool)))
(define-const var1678 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1678)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1678!1 String)
(assert (= var1678!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (not (= (ite var3880 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var571 String "Enabled") ; Statement: $r10 = "Enabled" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var159 String (append/672562846 var1678!1 var571)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1678!2 String)
(assert (= var1678!2 (str.++ var1678!1 var571)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var3391 1 0) 0)) ; Cond: z1 == 0 
(define-const var2252 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var1 String (append/672562846 var159 var2252)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var159!1 String)
(assert (= var159!1 (str.++ var159 var2252)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var3391 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (not (= (ite var3391 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1184 String var3709-CURRENT_OS) ; Statement: $r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(assert true)
;(assert (append/672562846 var1 var1184)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1!1 String)
(assert (= var1!1 (str.++ var1 var1184)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var174 String (toString/-2075883882 var1!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3709=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2279=r9, var3880=z0, var3391=z1, var1884=z2, var1678=$r0, var571=$r10, var159=$r1, var2252=$r11, var1=$r8, var1184=$r3, var174=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var3709, r9=var2279, z0=var3880, z1=var3391, z2=var1884, $r0=var1678, $r10=var571, $r1=var159, $r11=var2252, $r8=var1, $r3=var1184, $r12=var174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Enabled";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r3 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8