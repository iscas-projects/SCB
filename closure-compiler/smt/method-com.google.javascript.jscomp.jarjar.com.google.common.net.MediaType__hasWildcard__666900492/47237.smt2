(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-470314271 (var2419) String)
(declare-const null-var2419 var2419)
(declare-const var3294 var2419) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (not (= var3294 null-var2419)))
(define-const var3190 String "*") ; Statement: $r2 = "*" 
(define-const var2233 String (type/-470314271 var3294)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(assert true)
(define-const var584 Bool (= var3190 var2233)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var584 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3321 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String)}
; {var2419=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var3294=r0, var3190=$r2, var2233=$r1, var584=$z0, var3321=$z2}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var2419, r0=var3294, $r2=var3190, $r1=var2233, $z0=var584, $z2=var3321}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r2 = "*";	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3