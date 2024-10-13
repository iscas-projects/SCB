(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2122 0)
(declare-sort var3821 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2122 var2122)
(declare-const null-var3821 var3821)
(declare-const null-var2861 var2861)
(declare-const var1363 var2122) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1363 null-var2122)))
(declare-const var1790 var3821) ; Statement: r3 := @parameter1: org.hibernate.cfg.PropertyHolder 
(assert (not (= var1790 null-var3821)))
(declare-const var977 var2861) ; Statement: r7 := @parameter2: org.hibernate.cfg.PropertyData 
(assert (not (= var977 null-var2861)))
(define-const var2267 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.cfg.Ejb3JoinColumn[] 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2267 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2122=java.lang.Object, var1363=r0, var3821=org.hibernate.cfg.PropertyHolder, var1790=r3, var2861=org.hibernate.cfg.PropertyData, var977=r7, var2267=$z0}
; {java.lang.Object=var2122, r0=var1363, org.hibernate.cfg.PropertyHolder=var3821, r3=var1790, org.hibernate.cfg.PropertyData=var2861, r7=var977, $z0=var2267}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r3 := @parameter1: org.hibernate.cfg.PropertyHolder;	r7 := @parameter2: org.hibernate.cfg.PropertyData;	$z0 = r0 instanceof org.hibernate.cfg.Ejb3JoinColumn[];	if $z0 != 0 goto return;	return
;block_num 2