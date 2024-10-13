(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var374 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var1171-init () (Array Int var1171))
(declare-fun cast-from-String-to-var1171 (String) var1171)
(declare-fun String_format/1339386452 (String (Array Int var1171)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var374 var374)
(declare-const null-Bool Bool)
(declare-const var374-CURRENT_OS String)
(declare-const null-__Array__Int__var1171__ (Array Int var1171))
(declare-const var374-CURRENT_ARCHITECTURE String)
(declare-const var803 var374) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var803 null-var374)))
(declare-const var3423 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3423 null-Bool)))
(declare-const var858 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var858 null-Bool)))
(declare-const var2945 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2945 null-Bool)))
(define-const var1529 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1529)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1529!1 String)
(assert (= var1529!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (not (= (ite var3423 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2971 String "Enabled") ; Statement: $r10 = "Enabled" 
 ; Statement: goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1771 String (append/672562846 var1529!1 var2971)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1529!2 String)
(assert (= var1529!2 (str.++ var1529!1 var2971)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (= (ite var858 1 0) 0)) ; Cond: z1 == 0 
(define-const var697 String " on architecture: ") ; Statement: $r11 = " on architecture: " 
(assert true) ; Non Conditional
(assert true)
(define-const var1670 String (append/672562846 var1771 var697)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1771!1 String)
(assert (= var1771!1 (str.++ var1771 var697)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var858 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto (branch) 
(assert (not (= (ite var2945 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var487 (Array Int var1171) arr-var1171-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var2174 String var374-CURRENT_OS) ; Statement: $r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(declare-const var487!1 (Array Int var1171))
(assert (not (= var487!1 null-__Array__Int__var1171__)))
(assert (= (select var487!1 0) (cast-from-String-to-var1171 var2174))) ; Statement: $r4[0] = $r5 
(define-const var3223 String var374-CURRENT_ARCHITECTURE) ; Statement: $r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(declare-const var487!2 (Array Int var1171))
(assert (not (= var487!2 null-__Array__Int__var1171__)))
(assert (= (select var487!2 1) (cast-from-String-to-var1171 var3223))) ; Statement: $r4[1] = $r6 
(define-const var782 String (String_format/1339386452 "%s (%s)" var487!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4) 
(assert true)
;(assert (append/672562846 var1670 var782)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1670!1 String)
(assert (= var1670!1 (str.++ var1670 var782)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1819 String (toString/-2075883882 var1670!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var1171-init=([], java.lang.Object[]), cast-from-String-to-var1171=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var374=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var803=r9, var3423=z0, var858=z1, var2945=z2, var1529=$r0, var2971=$r10, var1771=$r1, var697=$r11, var1670=$r8, var1171=java.lang.Object, var487=$r4, var2174=$r5, var3223=$r6, var782=$r7, var1819=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var374, r9=var803, z0=var3423, z1=var858, z2=var2945, $r0=var1529, $r10=var2971, $r1=var1771, $r11=var697, $r8=var1670, java.lang.Object=var1171, $r4=var487, $r5=var2174, $r6=var3223, $r7=var782, $r12=var1819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Enabled";	goto [?= $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on architecture: ";	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z2 == 0 goto (branch);	$r4 = newarray (java.lang.Object)[2];	$r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	$r4[0] = $r5;	$r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8