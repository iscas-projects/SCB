(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3113 0)
(declare-sort var3931 0)
(declare-sort var873 0)
(declare-sort var3454 0)
(declare-sort var1376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3931_getAssociationOwningAttributePath/450502464 (var3931) var873)
(declare-fun determineJoinTableName/-2124579070 (var1376 var3931) var3454)
(declare-fun cast-from-var3113-to-var1376 (var3113) var1376)
(declare-const null-var3113 var3113)
(declare-const null-var3931 var3931)
(declare-const null-var873 var873)
(declare-const var1015 var3113) ; Statement: r2 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl 
(assert (not (= var1015 null-var3113)))
(declare-const var1213 var3931) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource 
(assert (not (= var1213 null-var3931)))
(define-const var3017 var873 (var3931_getAssociationOwningAttributePath/450502464 var1213)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
 ; Statement: if $r1 == null goto $r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0) 
(assert (= var3017 null-var873)) ; Cond: $r1 == null 
(assert true)
(define-const var236 var3454 (determineJoinTableName/-2124579070 (cast-from-var3113-to-var1376 var1015) var1213)) ; Statement: $r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3931_getAssociationOwningAttributePath/450502464=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.source.spi.AttributePath), determineJoinTableName/-2124579070=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.naming.Identifier), cast-from-var3113-to-var1376=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl)}
; {var3113=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl, var1015=r2, var3931=org.hibernate.boot.model.naming.ImplicitJoinTableNameSource, var1213=r0, var873=org.hibernate.boot.model.source.spi.AttributePath, var3017=$r1, var3454=org.hibernate.boot.model.naming.Identifier, var1376=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var236=$r3}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl=var3113, r2=var1015, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource=var3931, r0=var1213, org.hibernate.boot.model.source.spi.AttributePath=var873, $r1=var3017, org.hibernate.boot.model.naming.Identifier=var3454, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var1376, $r3=var236}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource;	$r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	if $r1 == null goto $r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0);	$r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0);	return $r3
;block_num 2