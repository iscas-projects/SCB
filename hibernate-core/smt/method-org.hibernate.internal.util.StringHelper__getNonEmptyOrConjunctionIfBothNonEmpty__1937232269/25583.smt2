(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var629 0)
(declare-sort var1517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1517_isNotEmpty/-74719548 (String) Bool)
(declare-const null-String String)
(declare-const var2941 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2941 null-String)))
(declare-const var2393 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2393 null-String)))
(define-const var3512 Bool (var1517_isNotEmpty/-74719548 var2941)) ; Statement: z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
(define-const var2369 Bool (var1517_isNotEmpty/-74719548 var2393)) ; Statement: z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3512 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z0 == 0 goto (branch) 
(assert (not (= (ite var3512 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1517_isNotEmpty/-74719548=([java.lang.String], boolean)}
; {var2941=r0, var629=null_type, var2393=r1, var1517=org.hibernate.internal.util.StringHelper, var3512=z0, var2369=z1}
; {r0=var2941, null_type=var629, r1=var2393, org.hibernate.internal.util.StringHelper=var1517, z0=var3512, z1=var2369}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1);	if z0 == 0 goto (branch);	if z0 == 0 goto (branch);	return r0
;block_num 3