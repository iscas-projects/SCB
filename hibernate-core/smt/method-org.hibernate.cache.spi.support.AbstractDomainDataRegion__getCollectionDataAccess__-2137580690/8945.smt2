(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var839 0)
(declare-sort var2737 0)
(declare-sort var2201 0)
(declare-sort var3077 0)
(declare-sort var932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionDataAccessMap/-1926537321 (var839) var2201)
(declare-fun var2201_get/1088891777 (var2201 var3077) var3077)
(declare-fun cast-from-var2737-to-var3077 (var2737) var3077)
(declare-fun cast-from-var3077-to-var932 (var3077) var932)
(declare-const null-var839 var839)
(declare-const null-var2737 var2737)
(declare-const null-var932 var932)
(declare-const var1182 var839) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var1182 null-var839)))
(declare-const var1345 var2737) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var1345 null-var2737)))
(define-const var90 var2201 (collectionDataAccessMap/-1926537321 var1182)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map collectionDataAccessMap> 
(define-const var3815 var3077 (var2201_get/1088891777 var90 (cast-from-var2737-to-var3077 var1345))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2547 var932 (cast-from-var3077-to-var932 var3815)) ; Statement: r4 = (org.hibernate.cache.spi.access.CollectionDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2547 null-var932))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var2201_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2737-to-var3077=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var3077-to-var932=([java.lang.Object], org.hibernate.cache.spi.access.CollectionDataAccess)}
; {var839=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var1182=r0, var2737=org.hibernate.metamodel.model.domain.NavigableRole, var1345=r1, var2201=java.util.Map, var90=$r2, var3077=java.lang.Object, var3815=$r3, var932=org.hibernate.cache.spi.access.CollectionDataAccess, var2547=r4}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var839, r0=var1182, org.hibernate.metamodel.model.domain.NavigableRole=var2737, r1=var1345, java.util.Map=var2201, $r2=var90, java.lang.Object=var3077, $r3=var3815, org.hibernate.cache.spi.access.CollectionDataAccess=var932, r4=var2547}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map collectionDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.CollectionDataAccess) $r3;	if r4 != null goto return r4;	return r4
;block_num 2