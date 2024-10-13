(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort var98 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun explicitTableName/-1522538692 (var2325) String)
(declare-const null-var2325 var2325)
(declare-const null-String String)
(declare-const var2467 var2325) ; Statement: r2 := @this: org.hibernate.cfg.Ejb3Column 
(assert (not (= var2467 null-var2325)))
(declare-const var1420 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1420 null-String)))
(define-const var649 String "``") ; Statement: $r1 = "``" 
(assert true)
(define-const var3410 Bool (= var649 var1420)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0 
(assert (= (ite var3410 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var2467!1 var2325)
(assert (not (= var2467!1 null-var2325)))
(assert (= (explicitTableName/-1522538692 var2467!1) var1420)) ; Statement: r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {explicitTableName/-1522538692=([org.hibernate.cfg.Ejb3Column], java.lang.String)}
; {var2325=org.hibernate.cfg.Ejb3Column, var2467=r2, var1420=r0, var98=null_type, var649=$r1, var3410=$z0}
; {org.hibernate.cfg.Ejb3Column=var2325, r2=var2467, r0=var1420, null_type=var98, $r1=var649, $z0=var3410}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.cfg.Ejb3Column;	r0 := @parameter0: java.lang.String;	$r1 = "``";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0;	r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0;	return
;block_num 3