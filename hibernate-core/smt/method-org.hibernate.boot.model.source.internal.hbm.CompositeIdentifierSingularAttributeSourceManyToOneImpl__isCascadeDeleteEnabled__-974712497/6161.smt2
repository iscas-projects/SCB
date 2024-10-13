(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3907 0)
(declare-sort var3770 0)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun keyManyToOneElement/-1052393368 (var3907) var3770)
(declare-fun getOnDelete/573199238 (var3770) var752)
(declare-fun value/-1362515340 (var752) String)
(declare-const null-var3907 var3907)
(declare-const var3513 var3907) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl 
(assert (not (= var3513 null-var3907)))
(define-const var2421 String "cascade") ; Statement: $r4 = "cascade" 
(define-const var1238 var3770 (keyManyToOneElement/-1052393368 var3513)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType keyManyToOneElement> 
(assert true)
(define-const var2748 var752 (getOnDelete/573199238 var1238)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var1621 String (value/-1362515340 var2748)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var3995 Bool (= var2421 var1621)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {keyManyToOneElement/-1052393368=([org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType), getOnDelete/573199238=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String)}
; {var3907=org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl, var3513=r0, var2421=$r4, var3770=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType, var1238=$r1, var752=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var2748=$r2, var1621=$r3, var3995=$z0}
; {org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl=var3907, r0=var3513, $r4=var2421, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType=var3770, $r1=var1238, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var752, $r2=var2748, $r3=var1621, $z0=var3995}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl;	$r4 = "cascade";	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.CompositeIdentifierSingularAttributeSourceManyToOneImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType keyManyToOneElement>;	$r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCompositeKeyManyToOneType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r3 = virtualinvoke $r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1