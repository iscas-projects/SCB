(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1360 0)
(declare-sort var1444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1360 var1360)
(declare-const null-String String)
(declare-const var545 var1360) ; Statement: r1 := @this: com.mysql.cj.admin.ServerController 
(assert (not (= var545 null-var1360)))
(declare-const var864 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var864 null-String)))
(assert true)
(define-const var3163 Bool (= var864 "executable")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("executable") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3163 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2594 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1360=com.mysql.cj.admin.ServerController, var545=r1, var864=r0, var1444=null_type, var3163=$z0, var2594=$z2}
; {com.mysql.cj.admin.ServerController=var1360, r1=var545, r0=var864, null_type=var1444, $z0=var3163, $z2=var2594}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.mysql.cj.admin.ServerController;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("executable");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3