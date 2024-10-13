(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3434 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1190988924 (var712) String)
(declare-const null-String String)
(declare-const var712-SELECT var712)
(declare-const var2900 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2900 null-String)))
(define-const var2976 var712 var712-SELECT) ; Statement: $r0 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT> 
(define-const var1326 String (name/1190988924 var2976)) ; Statement: $r2 = $r0.<org.hibernate.engine.profile.Fetch$Style: java.lang.String name> 
(assert true)
(define-const var3953 Bool (= var1326 var2900)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN> 
(assert (not (= (ite var3953 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2404 var712 var712-SELECT) ; Statement: $r4 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1190988924=([org.hibernate.engine.profile.Fetch$Style], java.lang.String)}
; {var2900=r1, var3434=null_type, var712=org.hibernate.engine.profile.Fetch$Style, var2976=$r0, var1326=$r2, var3953=$z0, var2404=$r4}
; {r1=var2900, null_type=var3434, org.hibernate.engine.profile.Fetch$Style=var712, $r0=var2976, $r2=var1326, $z0=var3953, $r4=var2404}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT>;	$r2 = $r0.<org.hibernate.engine.profile.Fetch$Style: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style JOIN>;	$r4 = <org.hibernate.engine.profile.Fetch$Style: org.hibernate.engine.profile.Fetch$Style SELECT>;	return $r4
;block_num 2