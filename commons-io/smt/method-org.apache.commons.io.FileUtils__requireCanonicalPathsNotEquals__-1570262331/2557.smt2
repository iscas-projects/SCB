(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalPath/2030784441 (var1689) String)
(declare-const null-var1689 var1689)
(declare-const var2221 var1689) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2221 null-var1689)))
(declare-const var2328 var1689) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var2328 null-var1689)))
(assert true)
(define-const var327 String (getCanonicalPath/2030784441 var2221)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var521 String (getCanonicalPath/2030784441 var2328)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1672 Bool (= var327 var521)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1672 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalPath/2030784441=([java.io.File], java.lang.String)}
; {var1689=java.io.File, var2221=r0, var2328=r2, var327=r1, var521=$r3, var1672=$z0}
; {java.io.File=var1689, r0=var2221, r2=var2328, r1=var327, $r3=var521, $z0=var1672}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	$r3 = virtualinvoke r2.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto return;	return
;block_num 2