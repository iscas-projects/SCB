(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var885 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var885 null-String)))
(define-const var931 String "Weblogic") ; Statement: $r1 = "Weblogic" 
(assert true)
(define-const var404 Bool (= var931 var885)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "WebSphereLiberty" 
(assert (not (= (ite var404 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/engine/transaction/jta/platform/internal/WeblogicJtaPlatform;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var885=r0, var3428=null_type, var931=$r1, var404=$z0}
; {r0=var885, null_type=var3428, $r1=var931, $z0=var404}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "Weblogic";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "WebSphereLiberty";	return class "Lorg/hibernate/engine/transaction/jta/platform/internal/WeblogicJtaPlatform;"
;block_num 2