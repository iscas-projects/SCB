(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var365 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var217_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var1295 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1295 null-String)))
(declare-const var1388 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1388 null-String)))
(define-const var2571 Bool (var217_isEmpty/1595667738 (cast-from-String-to-String var1295))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2571 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var807 Bool (var217_isEmpty/1595667738 (cast-from-String-to-String var1388))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (= (ite var807 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var519 Bool (startsWith/-1785782452 var1295 var1388)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $z6 = 0 
(assert (not (= (ite var519 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3636 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var1708 Bool var3636) ; Statement: z3 = $z6 
(assert true)
(define-const var1393 Bool (endsWith/985337093 var1295 var1388)) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z4 != 0 goto $z9 = 0 
(assert (not (= (ite var1393 1 0) 0))) ; Cond: $z4 != 0 
(define-const var3116 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(define-const var3820 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(define-const var2453 Bool var3820) ; Statement: z5 = $z8 
 ; Statement: if z3 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1708 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z9 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3116 1 0) 0)))) ; Negate: Cond: $z9 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var217_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1295=r0, var365=null_type, var1388=r1, var217=org.apache.commons.lang3.StringUtils, var2571=$z0, var807=$z1, var519=$z2, var3636=$z6, var1708=z3, var1393=$z4, var3116=$z9, var3820=$z8, var2453=z5}
; {r0=var1295, null_type=var365, r1=var1388, org.apache.commons.lang3.StringUtils=var217, $z0=var2571, $z1=var807, $z2=var519, $z6=var3636, z3=var1708, $z4=var1393, $z9=var3116, $z8=var3820, z5=var2453}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z2 != 0 goto $z6 = 0;	$z6 = 0;	z3 = $z6;	$z4 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z4 != 0 goto $z9 = 0;	$z9 = 0;	$z8 = 0;	z5 = $z8;	if z3 != 0 goto $r2 = new java.lang.StringBuilder;	if $z9 != 0 goto $r2 = new java.lang.StringBuilder;	return r0
;block_num 9