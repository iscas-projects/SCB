(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var244 0)
(declare-sort var2804 0)
(declare-sort var3249 0)
(declare-sort var2265 0)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun naturalIdDataAccessMap/-1926537321 (var244) var3249)
(declare-fun var3249_get/1088891777 (var3249 var2265) var2265)
(declare-fun cast-from-var2804-to-var2265 (var2804) var2265)
(declare-fun cast-from-var2265-to-var3986 (var2265) var3986)
(declare-const null-var244 var244)
(declare-const null-var2804 var2804)
(declare-const null-var3986 var3986)
(declare-const var2456 var244) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var2456 null-var244)))
(declare-const var3372 var2804) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var3372 null-var2804)))
(define-const var3860 var3249 (naturalIdDataAccessMap/-1926537321 var2456)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map naturalIdDataAccessMap> 
(define-const var555 var2265 (var3249_get/1088891777 var3860 (cast-from-var2804-to-var2265 var3372))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1489 var3986 (cast-from-var2265-to-var3986 var555)) ; Statement: r4 = (org.hibernate.cache.spi.access.NaturalIdDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1489 null-var3986))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {naturalIdDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var3249_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2804-to-var2265=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var2265-to-var3986=([java.lang.Object], org.hibernate.cache.spi.access.NaturalIdDataAccess)}
; {var244=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var2456=r0, var2804=org.hibernate.metamodel.model.domain.NavigableRole, var3372=r1, var3249=java.util.Map, var3860=$r2, var2265=java.lang.Object, var555=$r3, var3986=org.hibernate.cache.spi.access.NaturalIdDataAccess, var1489=r4}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var244, r0=var2456, org.hibernate.metamodel.model.domain.NavigableRole=var2804, r1=var3372, java.util.Map=var3249, $r2=var3860, java.lang.Object=var2265, $r3=var555, org.hibernate.cache.spi.access.NaturalIdDataAccess=var3986, r4=var1489}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map naturalIdDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.NaturalIdDataAccess) $r3;	if r4 != null goto return r4;	return r4
;block_num 2