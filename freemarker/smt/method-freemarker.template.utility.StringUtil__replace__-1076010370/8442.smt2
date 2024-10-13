(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3540 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3540 null-String)))
(declare-const var1141 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var1141 null-String)))
(declare-const var3786 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3786 null-String)))
(declare-const var2143 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2143 null-Bool)))
(declare-const var2059 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2059 null-Bool)))
(assert true)
(define-const var3825 Int (length/-134980193 var1141)) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var3825 0)))) ; Negate: Cond: i0 != 0  
(assert true)
(define-const var1440 Int (length/-134980193 var3786)) ; Statement: i13 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i13 != 0 goto (branch) 
(assert (not (not (= var1440 0)))) ; Negate: Cond: i13 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3540=r0, var3495=null_type, var1141=r12, var3786=r2, var2143=z0, var2059=z1, var3825=i0, var1440=i13}
; {r0=var3540, null_type=var3495, r12=var1141, r2=var3786, z0=var2143, z1=var2059, i0=var3825, i13=var1440}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r12 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	z1 := @parameter4: boolean;	i0 = virtualinvoke r12.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	i13 = virtualinvoke r2.<java.lang.String: int length()>();	if i13 != 0 goto (branch);	return r0
;block_num 3