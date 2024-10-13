(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var612 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1079078104 (var3503) String)
(declare-fun cast-from-var612-to-var3503 (var612) var3503)
(declare-const null-String String)
(declare-const null-var612 var612)
(declare-const var47 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var47 null-String)))
(declare-const var315 var612) ; Statement: r1 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType 
(assert (not (= var315 null-var612)))
(assert true)
(define-const var2380 String (getName/-1079078104 (cast-from-var612-to-var3503 var315))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: java.lang.String getName()>() 
(assert true)
(define-const var2495 Bool (= var47 var2380)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1079078104=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmEntityBaseDefinition], java.lang.String), cast-from-var612-to-var3503=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmEntityBaseDefinition)}
; {var47=r0, var1042=null_type, var612=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType, var315=r1, var3503=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmEntityBaseDefinition, var2380=$r2, var2495=$z0}
; {r0=var47, null_type=var1042, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType=var612, r1=var315, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmEntityBaseDefinition=var3503, $r2=var2380, $z0=var2495}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType;	$r2 = virtualinvoke r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1