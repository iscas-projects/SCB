(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3697 0)
(declare-sort var173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var173-init () (Array Int var173))
(declare-fun cast-from-String-to-var173 (String) var173)
(declare-fun String_format/1339386452 (String (Array Int var173)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3697 var3697)
(declare-const null-Bool Bool)
(declare-const var3697-CURRENT_OS String)
(declare-const null-__Array__Int__var173__ (Array Int var173))
(declare-const var3697-CURRENT_ARCHITECTURE String)
(declare-const var2943 var3697) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var2943 null-var3697)))
(declare-const var1490 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1490 null-Bool)))
(declare-const var1131 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1131 null-Bool)))
(declare-const var1603 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1603 null-Bool)))
(define-const var3008 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3008)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3008!1 String)
(assert (= var3008!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var1490 1 0) 0)) ; Cond: z0 == 0 
(define-const var1366 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var1249 String (append/672562846 var3008!1 var1366)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3008!2 String)
(assert (= var3008!2 (str.++ var3008!1 var1366)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var1131 1 0) 0)) ; Cond: z1 == 0 
(define-const var2320 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var1975 String (append/672562846 var1249 var2320)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1249!1 String)
(assert (= var1249!1 (str.++ var1249 var2320)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var1131 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto (branch) 
(assert (not (= (ite var1603 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var1895 (Array Int var173) arr-var173-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var3876 String var3697-CURRENT_OS) ; Statement: $r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(declare-const var1895!1 (Array Int var173))
(assert (not (= var1895!1 null-__Array__Int__var173__)))
(assert (= (select var1895!1 0) (cast-from-String-to-var173 var3876))) ; Statement: $r4[0] = $r5 
(define-const var1565 String var3697-CURRENT_ARCHITECTURE) ; Statement: $r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(declare-const var1895!2 (Array Int var173))
(assert (not (= var1895!2 null-__Array__Int__var173__)))
(assert (= (select var1895!2 1) (cast-from-String-to-var173 var1565))) ; Statement: $r4[1] = $r6 
(define-const var821 String (String_format/1339386452 "%s (%s)" var1895!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4) 
(assert true)
;(assert (append/672562846 var1975 var821)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1975!1 String)
(assert (= var1975!1 (str.++ var1975 var821)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1913 String (toString/-2075883882 var1975!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var173-init=([], java.lang.Object[]), cast-from-String-to-var173=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3697=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var2943=r9, var1490=z0, var1131=z1, var1603=z2, var3008=$r0, var1366=$r10, var1249=$r1, var2320=$r11, var1975=$r8, var173=java.lang.Object, var1895=$r4, var3876=$r5, var1565=$r6, var821=$r7, var1913=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var3697, r9=var2943, z0=var1490, z1=var1131, z2=var1603, $r0=var3008, $r10=var1366, $r1=var1249, $r11=var2320, $r8=var1975, java.lang.Object=var173, $r4=var1895, $r5=var3876, $r6=var1565, $r7=var821, $r12=var1913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z2 == 0 goto (branch);	$r4 = newarray (java.lang.Object)[2];	$r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	$r4[0] = $r5;	$r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8