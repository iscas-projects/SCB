(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var351 var351)
(declare-const null-Bool Bool)
(declare-const var351-CURRENT_ARCHITECTURE String)
(declare-const var2401 var351) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2401 null-var351)))
(declare-const var53 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var53 null-Bool)))
(declare-const var2351 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2351 null-Bool)))
(declare-const var1867 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1867 null-Bool)))
(define-const var2580 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2580)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2580!1 String)
(assert (= var2580!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (not (= (ite var53 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1126 String "Enabled") ; Statement: $r10 = "Enabled" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3210 String (append/672562846 var2580!1 var1126)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2580!2 String)
(assert (= var2580!2 (str.++ var2580!1 var1126)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var2351 1 0) 0)) ; Cond: z1 == 0 
(define-const var368 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var13 String (append/672562846 var3210 var368)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3210!1 String)
(assert (= var3210!1 (str.++ var3210 var368)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var2351 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert (= (ite var2351 1 0) 0)) ; Cond: z1 == 0 
(define-const var2917 String var351-CURRENT_ARCHITECTURE) ; Statement: $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(assert true)
;(assert (append/672562846 var13 var2917)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var13!1 String)
(assert (= var13!1 (str.++ var13 var2917)))
(assert true) ; Non Conditional
(assert true)
(define-const var2914 String (toString/-2075883882 var13!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var351=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2401=r9, var53=z0, var2351=z1, var1867=z2, var2580=$r0, var1126=$r10, var3210=$r1, var368=$r11, var13=$r8, var2917=$r2, var2914=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var351, r9=var2401, z0=var53, z1=var2351, z2=var1867, $r0=var2580, $r10=var1126, $r1=var3210, $r11=var368, $r8=var13, $r2=var2917, $r12=var2914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Enabled";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z1 == 0 goto $r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r2 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8