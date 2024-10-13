(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3267 0)
(declare-sort var665 0)
(declare-sort var1430 0)
(declare-sort var3198 0)
(declare-sort var262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityDataAccessMap/-1926537321 (var3267) var1430)
(declare-fun var1430_get/1088891777 (var1430 var3198) var3198)
(declare-fun cast-from-var665-to-var3198 (var665) var3198)
(declare-fun cast-from-var3198-to-var262 (var3198) var262)
(declare-const null-var3267 var3267)
(declare-const null-var665 var665)
(declare-const null-var262 var262)
(declare-const var3475 var3267) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var3475 null-var3267)))
(declare-const var2951 var665) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var2951 null-var665)))
(define-const var3486 var1430 (entityDataAccessMap/-1926537321 var3475)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map entityDataAccessMap> 
(define-const var1352 var3198 (var1430_get/1088891777 var3486 (cast-from-var665-to-var3198 var2951))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2000 var262 (cast-from-var3198-to-var262 var1352)) ; Statement: r4 = (org.hibernate.cache.spi.access.EntityDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2000 null-var262))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {entityDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var1430_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var665-to-var3198=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var3198-to-var262=([java.lang.Object], org.hibernate.cache.spi.access.EntityDataAccess)}
; {var3267=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var3475=r0, var665=org.hibernate.metamodel.model.domain.NavigableRole, var2951=r1, var1430=java.util.Map, var3486=$r2, var3198=java.lang.Object, var1352=$r3, var262=org.hibernate.cache.spi.access.EntityDataAccess, var2000=r4}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var3267, r0=var3475, org.hibernate.metamodel.model.domain.NavigableRole=var665, r1=var2951, java.util.Map=var1430, $r2=var3486, java.lang.Object=var3198, $r3=var1352, org.hibernate.cache.spi.access.EntityDataAccess=var262, r4=var2000}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map entityDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.EntityDataAccess) $r3;	if r4 != null goto return r4;	return r4
;block_num 2