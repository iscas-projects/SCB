(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var2842 0)
(declare-sort var1364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliases/1657498889 (var3811) (Array Int String))
(declare-fun var2842_equals/-1916670036 ((Array Int var1364) (Array Int var1364)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1364__ ((Array Int String)) (Array Int var1364))
(declare-const null-var3811 var3811)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3369 var3811) ; Statement: r1 := @this: org.hibernate.transform.AliasToBeanResultTransformer 
(assert (not (= var3369 null-var3811)))
(declare-const var897 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var897 null-__Array__Int__String__)))
(define-const var3448 (Array Int String) (aliases/1657498889 var3369)) ; Statement: $r2 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases> 
(define-const var455 Bool (var2842_equals/-1916670036 (cast-from-__Array__Int__String__-to-__Array__Int__var1364__ var897) (cast-from-__Array__Int__String__-to-__Array__Int__var1364__ var3448))) ; Statement: $z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>(r0, $r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var455 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {aliases/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], java.lang.String[]), var2842_equals/-1916670036=([java.lang.Object[], java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var1364__=([java.lang.String[]], java.lang.Object[])}
; {var3811=org.hibernate.transform.AliasToBeanResultTransformer, var3369=r1, var897=r0, var3448=$r2, var2842=java.util.Arrays, var1364=java.lang.Object, var455=$z0}
; {org.hibernate.transform.AliasToBeanResultTransformer=var3811, r1=var3369, r0=var897, $r2=var3448, java.util.Arrays=var2842, java.lang.Object=var1364, $z0=var455}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.transform.AliasToBeanResultTransformer;	r0 := @parameter0: java.lang.String[];	$r2 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases>;	$z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>(r0, $r2);	if $z0 != 0 goto return;	return
;block_num 2