(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var127 0)
(declare-sort var733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var733-init () (Array Int var733))
(declare-fun cast-from-String-to-var733 (String) var733)
(declare-fun String_format/1339386452 (String (Array Int var733)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var127 var127)
(declare-const null-Bool Bool)
(declare-const var127-CURRENT_OS String)
(declare-const null-__Array__Int__var733__ (Array Int var733))
(declare-const var127-CURRENT_ARCHITECTURE String)
(declare-const var1531 var127) ; Statement: r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var1531 null-var127)))
(declare-const var431 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var431 null-Bool)))
(declare-const var1775 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1775 null-Bool)))
(declare-const var1785 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1785 null-Bool)))
(define-const var450 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var450)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var450!1 String)
(assert (= var450!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "Disabled" 
(assert (= (ite var431 1 0) 0)) ; Cond: z0 == 0 
(define-const var2041 String "Disabled") ; Statement: $r10 = "Disabled" 
(assert true) ; Non Conditional
(assert true)
(define-const var3938 String (append/672562846 var450!1 var2041)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var450!2 String)
(assert (= var450!2 (str.++ var450!1 var2041)))
 ; Statement: if z1 == 0 goto $r11 = " on architecture: " 
(assert (not (= (ite var1775 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2884 String " on operating system: ") ; Statement: $r11 = " on operating system: " 
 ; Statement: goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1942 String (append/672562846 var3938 var2884)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3938!1 String)
(assert (= var3938!1 (str.++ var3938 var2884)))
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var1775 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto (branch) 
(assert (not (= (ite var1785 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var1900 (Array Int var733) arr-var733-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var2305 String var127-CURRENT_OS) ; Statement: $r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS> 
(declare-const var1900!1 (Array Int var733))
(assert (not (= var1900!1 null-__Array__Int__var733__)))
(assert (= (select var1900!1 0) (cast-from-String-to-var733 var2305))) ; Statement: $r4[0] = $r5 
(define-const var1684 String var127-CURRENT_ARCHITECTURE) ; Statement: $r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE> 
(declare-const var1900!2 (Array Int var733))
(assert (not (= var1900!2 null-__Array__Int__var733__)))
(assert (= (select var1900!2 1) (cast-from-String-to-var733 var1684))) ; Statement: $r4[1] = $r6 
(define-const var876 String (String_format/1339386452 "%s (%s)" var1900!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4) 
(assert true)
;(assert (append/672562846 var1942 var876)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 var876)))
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3711 String (toString/-2075883882 var1942!1)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var733-init=([], java.lang.Object[]), cast-from-String-to-var733=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var127=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var1531=r9, var431=z0, var1775=z1, var1785=z2, var450=$r0, var2041=$r10, var3938=$r1, var2884=$r11, var1942=$r8, var733=java.lang.Object, var1900=$r4, var2305=$r5, var1684=$r6, var876=$r7, var3711=$r12}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var127, r9=var1531, z0=var431, z1=var1775, z2=var1785, $r0=var450, $r10=var2041, $r1=var3938, $r11=var2884, $r8=var1942, java.lang.Object=var733, $r4=var1900, $r5=var2305, $r6=var1684, $r7=var876, $r12=var3711}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "Disabled";	$r10 = "Disabled";	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = " on architecture: ";	$r11 = " on operating system: ";	goto [?= $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	if z1 == 0 goto (branch);	if z2 == 0 goto (branch);	$r4 = newarray (java.lang.Object)[2];	$r5 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_OS>;	$r4[0] = $r5;	$r6 = <org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.String CURRENT_ARCHITECTURE>;	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s (%s)", $r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 8