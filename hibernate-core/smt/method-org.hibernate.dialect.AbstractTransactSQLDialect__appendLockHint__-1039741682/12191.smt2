(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1018 0)
(declare-sort var938 0)
(declare-sort var245 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var938) var867)
(declare-fun greaterThan/1267601476 (var867 var867) Bool)
(declare-const null-var1018 var1018)
(declare-const null-var938 var938)
(declare-const null-String String)
(declare-const var867-READ var867)
(declare-const var489 var1018) ; Statement: r7 := @this: org.hibernate.dialect.AbstractTransactSQLDialect 
(assert (not (= var489 null-var1018)))
(declare-const var872 var938) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var872 null-var938)))
(declare-const var132 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var132 null-String)))
(assert true)
(define-const var3438 var867 (getLockMode/2004258094 var872)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var2740 var867 var867-READ) ; Statement: $r1 = <org.hibernate.LockMode: org.hibernate.LockMode READ> 
(assert true)
(define-const var2827 Bool (greaterThan/1267601476 var3438 var2740)) ; Statement: $z0 = virtualinvoke $r2.<org.hibernate.LockMode: boolean greaterThan(org.hibernate.LockMode)>($r1) 
 ; Statement: if $z0 == 0 goto $r8 = r3 
(assert (= (ite var2827 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3865 String var132) ; Statement: $r8 = r3 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), greaterThan/1267601476=([org.hibernate.LockMode, org.hibernate.LockMode], boolean)}
; {var1018=org.hibernate.dialect.AbstractTransactSQLDialect, var489=r7, var938=org.hibernate.LockOptions, var872=r0, var132=r3, var245=null_type, var867=org.hibernate.LockMode, var3438=$r2, var2740=$r1, var2827=$z0, var3865=$r8}
; {org.hibernate.dialect.AbstractTransactSQLDialect=var1018, r7=var489, org.hibernate.LockOptions=var938, r0=var872, r3=var132, null_type=var245, org.hibernate.LockMode=var867, $r2=var3438, $r1=var2740, $z0=var2827, $r8=var3865}
;seq 
;cnt {}
;stmts r7 := @this: org.hibernate.dialect.AbstractTransactSQLDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r3 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r1 = <org.hibernate.LockMode: org.hibernate.LockMode READ>;	$z0 = virtualinvoke $r2.<org.hibernate.LockMode: boolean greaterThan(org.hibernate.LockMode)>($r1);	if $z0 == 0 goto $r8 = r3;	$r8 = r3;	return $r8
;block_num 3