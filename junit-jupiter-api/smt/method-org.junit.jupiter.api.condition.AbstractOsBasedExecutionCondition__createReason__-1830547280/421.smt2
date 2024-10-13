(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var2132-init () (Array Int var2132))
(declare-fun cast-from-String-to-var2132 (String) var2132)
(declare-fun String_format/1339386452 (String (Array Int var2132)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var459 var459)
(declare-const null-Bool Bool)
(declare-const var459-CURRENT_OS String)
(declare-const null-__Array__Int__var2132__ (Array Int var2132))
(declare-const var459-CURRENT_ARCHITECTURE String)
(declare-const var2247 var459) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2247 null-var459)))
(declare-const var3534 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3534 null-Bool)))
(declare-const var3572 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3572 null-Bool)))
(declare-const var146 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var146 null-Bool)))
(define-const var1806 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1806)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1806!1 String)
(assert (= var1806!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (not (= (ite var3534 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1447 String "Enabled") ; Statement: $r10 = "Enabled" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2500 String (append/672562846 var1806!1 var1447)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1806!2 String)
(assert (= var1806!2 (str.++ var1806!1 var1447)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (not (= (ite var3572 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3341 String " on operating system: ") ; Statement: $r11 = " on operating system: " 
 ; Statement: goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2925 String (append/672562846 var2500 var3341)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2500!1 String)
(assert (= var2500!1 (str.++ var2500 var3341)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var3572 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto (branch) 
(assert (not (= (ite var146 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var3214 (Array Int var2132) arr-var2132-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var3898 String var459-CURRENT_OS) ; Statement: $r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(declare-const var3214!1 (Array Int var2132))
(assert (not (= var3214!1 null-__Array__Int__var2132__)))
(assert (= (select var3214!1 0) (cast-from-String-to-var2132 var3898))) ; Statement: $r4[0] = $r5 
(define-const var3540 String var459-CURRENT_ARCHITECTURE) ; Statement: $r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(declare-const var3214!2 (Array Int var2132))
(assert (not (= var3214!2 null-__Array__Int__var2132__)))
(assert (= (select var3214!2 1) (cast-from-String-to-var2132 var3540))) ; Statement: $r4[1] = $r6 
(define-const var1948 String (String_format/1339386452 "%s (%s)" var3214!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4) 
(assert true)
;(assert (append/672562846 var2925 var1948)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2925!1 String)
(assert (= var2925!1 (str.++ var2925 var1948)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3212 String (toString/-2075883882 var2925!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var2132-init=([], java.lang.Object[]), cast-from-String-to-var2132=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var459=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2247=r9, var3534=z0, var3572=z1, var146=z2, var1806=$r0, var1447=$r10, var2500=$r1, var3341=$r11, var2925=$r8, var2132=java.lang.Object, var3214=$r4, var3898=$r5, var3540=$r6, var1948=$r7, var3212=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var459, r9=var2247, z0=var3534, z1=var3572, z2=var146, $r0=var1806, $r10=var1447, $r1=var2500, $r11=var3341, $r8=var2925, java.lang.Object=var2132, $r4=var3214, $r5=var3898, $r6=var3540, $r7=var1948, $r12=var3212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Enabled";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on operating system: ";	goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z2 == 0 goto (branch);	$r4 = newarray (java.lang.Object)[2];	$r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	$r4[0] = $r5;	$r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8