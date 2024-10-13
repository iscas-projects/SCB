(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun externalName/-1487956786 (var232) String)
(declare-const null-String String)
(declare-const var232-INSERT var232)
(declare-const var2535 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2535 null-String)))
(define-const var304 var232 var232-INSERT) ; Statement: $r0 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction INSERT> 
(define-const var204 String (externalName/-1487956786 var304)) ; Statement: $r2 = $r0.<org.hibernate.secure.spi.PermissibleAction: java.lang.String externalName> 
(assert true)
(define-const var888 Bool (= var204 var2535)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction UPDATE> 
(assert (not (= (ite var888 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2160 var232 var232-INSERT) ; Statement: $r20 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction INSERT> 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {externalName/-1487956786=([org.hibernate.secure.spi.PermissibleAction], java.lang.String)}
; {var2535=r1, var1333=null_type, var232=org.hibernate.secure.spi.PermissibleAction, var304=$r0, var204=$r2, var888=$z0, var2160=$r20}
; {r1=var2535, null_type=var1333, org.hibernate.secure.spi.PermissibleAction=var232, $r0=var304, $r2=var204, $z0=var888, $r20=var2160}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction INSERT>;	$r2 = $r0.<org.hibernate.secure.spi.PermissibleAction: java.lang.String externalName>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction UPDATE>;	$r20 = <org.hibernate.secure.spi.PermissibleAction: org.hibernate.secure.spi.PermissibleAction INSERT>;	return $r20
;block_num 2