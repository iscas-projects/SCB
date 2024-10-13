(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3697 0)
(declare-sort var68 0)
(declare-sort var1808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var68-init () (Array Int var68))
(declare-fun cast-from-String-to-var68 (String) var68)
(declare-fun var1808_anyNull/-1149301242 ((Array Int var68)) Bool)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var68__ (Array Int var68))
(declare-const var2095 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2095 null-String)))
(declare-const var142 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var142 null-String)))
(declare-const var2716 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2716 null-String)))
(define-const var3478 (Array Int var68) arr-var68-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var3478!1 (Array Int var68))
(assert (not (= var3478!1 null-__Array__Int__var68__)))
(assert (= (select var3478!1 0) (cast-from-String-to-var68 var2095))) ; Statement: $r0[0] = r1 
(declare-const var3478!2 (Array Int var68))
(assert (not (= var3478!2 null-__Array__Int__var68__)))
(assert (= (select var3478!2 1) (cast-from-String-to-var68 var142))) ; Statement: $r0[1] = r2 
(declare-const var3478!3 (Array Int var68))
(assert (not (= var3478!3 null-__Array__Int__var68__)))
(assert (= (select var3478!3 2) (cast-from-String-to-var68 var2716))) ; Statement: $r0[2] = r3 
(define-const var1727 Bool (var1808_anyNull/-1149301242 var3478!3)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean anyNull(java.lang.Object[])>($r0) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, r3) 
(assert (= (ite var1727 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1151 String (replaceAll/1692887130 var2095 var142 var2716)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var68-init=([], java.lang.Object[]), cast-from-String-to-var68=([java.lang.String], java.lang.Object), var1808_anyNull/-1149301242=([java.lang.Object[]], boolean), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var2095=r1, var3697=null_type, var142=r2, var2716=r3, var68=java.lang.Object, var3478=$r0, var1808=org.apache.commons.lang3.ObjectUtils, var1727=$z0, var1151=$r4}
; {r1=var2095, null_type=var3697, r2=var142, r3=var2716, java.lang.Object=var68, $r0=var3478, org.apache.commons.lang3.ObjectUtils=var1808, $z0=var1727, $r4=var1151}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean anyNull(java.lang.Object[])>($r0);	if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, r3);	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, r3);	return $r4
;block_num 2