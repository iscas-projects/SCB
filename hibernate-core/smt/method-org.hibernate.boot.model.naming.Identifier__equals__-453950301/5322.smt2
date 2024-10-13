(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort var445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var445-to-var3685 (var445) var3685)
(declare-fun getCanonicalName/-1692061233 (var3685) String)
(declare-const null-var3685 var3685)
(declare-const null-var445 var445)
(declare-const var1165 var3685) ; Statement: r2 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1165 null-var3685)))
(declare-const var2878 var445) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2878 null-var445)))
(define-const var2220 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.boot.model.naming.Identifier 
 ; Statement: if $z0 != 0 goto r1 = (org.hibernate.boot.model.naming.Identifier) r0 
(assert (not (= (ite var2220 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2406 var3685 (cast-from-var445-to-var3685 var2878)) ; Statement: r1 = (org.hibernate.boot.model.naming.Identifier) r0 
(assert true)
(define-const var2472 String (getCanonicalName/-1692061233 var1165)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1789 String (getCanonicalName/-1692061233 var2406)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1381 Bool (= var2472 var1789)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var445-to-var3685=([java.lang.Object], org.hibernate.boot.model.naming.Identifier), getCanonicalName/-1692061233=([org.hibernate.boot.model.naming.Identifier], java.lang.String)}
; {var3685=org.hibernate.boot.model.naming.Identifier, var1165=r2, var445=java.lang.Object, var2878=r0, var2220=$z0, var2406=r1, var2472=$r4, var1789=$r3, var1381=$z1}
; {org.hibernate.boot.model.naming.Identifier=var3685, r2=var1165, java.lang.Object=var445, r0=var2878, $z0=var2220, r1=var2406, $r4=var2472, $r3=var1789, $z1=var1381}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.boot.model.naming.Identifier;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.hibernate.boot.model.naming.Identifier;	if $z0 != 0 goto r1 = (org.hibernate.boot.model.naming.Identifier) r0;	r1 = (org.hibernate.boot.model.naming.Identifier) r0;	$r4 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$r3 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2