(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLanguage/1066037614 (var406) String)
(declare-const null-String String)
(declare-const null-var406 var406)
(declare-const var2604 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2604 null-String)))
(declare-const var2744 var406) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var2744 null-var406)))
(assert true)
(define-const var948 String (getLanguage/1066037614 var2744)) ; Statement: $r2 = virtualinvoke r1.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3482 Bool (= var2604 var948)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var3482 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3060 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLanguage/1066037614=([java.util.Locale], java.lang.String)}
; {var2604=r0, var2261=null_type, var406=java.util.Locale, var2744=r1, var948=$r2, var3482=$z0, var3060=$z3}
; {r0=var2604, null_type=var2261, java.util.Locale=var406, r1=var2744, $r2=var948, $z0=var3482, $z3=var3060}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	$r2 = virtualinvoke r1.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 3