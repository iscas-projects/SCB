(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var2601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1190988924 (var2601) String)
(declare-const null-String String)
(declare-const var2601-SELECT var2601)
(declare-const var2601-JOIN var2601)
(declare-const var1809 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1809 null-String)))
(define-const var3032 var2601 var2601-SELECT) ; Statement: $r0 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT> 
(define-const var3702 String (name/1190988924 var3032)) ; Statement: $r2 = $r0.<org.hibernate.engine.profile.Fetch$Style: java.lang.String name> 
(assert true)
(define-const var43 Bool (= var3702 var1809)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN> 
(assert (= (ite var43 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1016 var2601 var2601-JOIN) ; Statement: $r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1190988924=([org.hibernate.engine.profile.Fetch$Style], java.lang.String)}
; {var1809=r1, var2517=null_type, var2601=org.hibernate.engine.profile.Fetch$Style, var3032=$r0, var3702=$r2, var43=$z0, var1016=$r3}
; {r1=var1809, null_type=var2517, org.hibernate.engine.profile.Fetch$Style=var2601, $r0=var3032, $r2=var3702, $z0=var43, $r3=var1016}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT>;	$r2 = $r0.<org.hibernate.engine.profile.Fetch$Style: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN>;	$r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN>;	return $r3
;block_num 2