(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort var2499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun explicitTableName/-1522538692 (var264) String)
(declare-const null-var264 var264)
(declare-const null-String String)
(declare-const var1663 var264) ; Statement: r2 := @this: org.hibernate.cfg.Ejb3Column 
(assert (not (= var1663 null-var264)))
(declare-const var2779 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2779 null-String)))
(define-const var1270 String "``") ; Statement: $r1 = "``" 
(assert true)
(define-const var1486 Bool (= var1270 var2779)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0 
(assert (not (= (ite var1486 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1663!1 var264)
(assert (not (= var1663!1 null-var264)))
(assert (= (explicitTableName/-1522538692 var1663!1) "")) ; Statement: r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = "" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {explicitTableName/-1522538692=([org.hibernate.cfg.Ejb3Column], java.lang.String)}
; {var264=org.hibernate.cfg.Ejb3Column, var1663=r2, var2779=r0, var2499=null_type, var1270=$r1, var1486=$z0}
; {org.hibernate.cfg.Ejb3Column=var264, r2=var1663, r0=var2779, null_type=var2499, $r1=var1270, $z0=var1486}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.cfg.Ejb3Column;	r0 := @parameter0: java.lang.String;	$r1 = "``";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = r0;	r2.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> = "";	goto [?= return];	return
;block_num 3