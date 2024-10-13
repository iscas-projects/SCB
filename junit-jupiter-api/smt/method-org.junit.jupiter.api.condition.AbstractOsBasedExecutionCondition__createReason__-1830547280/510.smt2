(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1787 var1787)
(declare-const null-Bool Bool)
(declare-const var1787-CURRENT_ARCHITECTURE String)
(declare-const var1484 var1787) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var1484 null-var1787)))
(declare-const var944 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var944 null-Bool)))
(declare-const var3009 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3009 null-Bool)))
(declare-const var1394 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1394 null-Bool)))
(define-const var1950 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1950)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1950!1 String)
(assert (= var1950!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var944 1 0) 0)) ; Cond: z0 == 0 
(define-const var1051 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var3189 String (append/672562846 var1950!1 var1051)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1950!2 String)
(assert (= var1950!2 (str.++ var1950!1 var1051)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (not (= (ite var3009 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var146 String " on operating system: ") ; Statement: $r11 = " on operating system: " 
 ; Statement: goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3069 String (append/672562846 var3189 var146)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 var146)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var3009 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (= (ite var3009 1 0) 0)) ; Cond: z1 == 0 
(define-const var2619 String var1787-CURRENT_ARCHITECTURE) ; Statement: $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert true)
;(assert (append/672562846 var3069 var2619)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3069!1 String)
(assert (= var3069!1 (str.++ var3069 var2619)))
(assert true) ; Non Conditional
(assert true)
(define-const var3513 String (toString/-2075883882 var3069!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1787=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var1484=r9, var944=z0, var3009=z1, var1394=z2, var1950=$r0, var1051=$r10, var3189=$r1, var146=$r11, var3069=$r8, var2619=$r2, var3513=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var1787, r9=var1484, z0=var944, z1=var3009, z2=var1394, $r0=var1950, $r10=var1051, $r1=var3189, $r11=var146, $r8=var3069, $r2=var2619, $r12=var3513}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on operating system: ";	goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8