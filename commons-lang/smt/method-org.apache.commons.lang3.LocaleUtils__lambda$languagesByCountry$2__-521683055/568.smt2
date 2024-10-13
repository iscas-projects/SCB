(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCountry/-945186178 (var3605) String)
(declare-const null-String String)
(declare-const null-var3605 var3605)
(declare-const var2535 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2535 null-String)))
(declare-const var3779 var3605) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var3779 null-var3605)))
(assert true)
(define-const var3443 String (getCountry/-945186178 var3779)) ; Statement: $r2 = virtualinvoke r1.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3359 Bool (= var2535 var3443)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var3359 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2257 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getCountry/-945186178=([java.util.Locale], java.lang.String)}
; {var2535=r0, var3683=null_type, var3605=java.util.Locale, var3779=r1, var3443=$r2, var3359=$z0, var2257=$z2}
; {r0=var2535, null_type=var3683, java.util.Locale=var3605, r1=var3779, $r2=var3443, $z0=var3359, $z2=var2257}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	$r2 = virtualinvoke r1.<java.util.Locale: java.lang.String getCountry()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3