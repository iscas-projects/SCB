(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var255 0)
(declare-sort var2066 0)
(declare-sort var2016 0)
(declare-sort var3952 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metamodel/-191801824 (var255) var2016)
(declare-fun var2016_entityPersister/1947554472 (var2016 String) var3952)
(declare-fun var3952_hasNaturalIdentifier/2013945893 (var3952) Bool)
(declare-fun var901-init () var901)
(declare-fun <init>/-1822605639 (var901 var3952) void)
(declare-const null-var255 var255)
(declare-const null-String String)
(declare-const var2610 var255) ; Statement: r0 := @this: org.hibernate.stat.internal.StatisticsImpl 
(assert (not (= var2610 null-var255)))
(declare-const var3428 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3428 null-String)))
(define-const var3843 var2016 (metamodel/-191801824 var2610)) ; Statement: $r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.metamodel.spi.MetamodelImplementor metamodel> 
(define-const var3125 var3952 (var2016_entityPersister/1947554472 var3843 var3428)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1) 
(define-const var894 Bool (var3952_hasNaturalIdentifier/2013945893 var3125)) ; Statement: $z0 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>() 
 ; Statement: if $z0 != 0 goto $r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl 
(assert (not (= (ite var894 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3447 var901 var901-init) ; Statement: $r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl 
(assert true)
;(assert (<init>/-1822605639 var3447 var3125)) ; Statement: specialinvoke $r4.<org.hibernate.stat.internal.NaturalIdStatisticsImpl: void <init>(org.hibernate.persister.entity.EntityPersister)>(r3) 

(declare-const var3447!1 var901)
(declare-const var3125!1 var3952)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {metamodel/-191801824=([org.hibernate.stat.internal.StatisticsImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var2016_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var3952_hasNaturalIdentifier/2013945893=([org.hibernate.persister.entity.EntityPersister], boolean), var901-init=([], org.hibernate.stat.internal.NaturalIdStatisticsImpl), <init>/-1822605639=([org.hibernate.stat.internal.NaturalIdStatisticsImpl, org.hibernate.persister.entity.EntityPersister], void)}
; {var255=org.hibernate.stat.internal.StatisticsImpl, var2610=r0, var3428=r1, var2066=null_type, var2016=org.hibernate.metamodel.spi.MetamodelImplementor, var3843=$r2, var3952=org.hibernate.persister.entity.EntityPersister, var3125=r3, var894=$z0, var901=org.hibernate.stat.internal.NaturalIdStatisticsImpl, var3447=$r4}
; {org.hibernate.stat.internal.StatisticsImpl=var255, r0=var2610, r1=var3428, null_type=var2066, org.hibernate.metamodel.spi.MetamodelImplementor=var2016, $r2=var3843, org.hibernate.persister.entity.EntityPersister=var3952, r3=var3125, $z0=var894, org.hibernate.stat.internal.NaturalIdStatisticsImpl=var901, $r4=var3447}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.stat.internal.StatisticsImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.stat.internal.StatisticsImpl: org.hibernate.metamodel.spi.MetamodelImplementor metamodel>;	r3 = interfaceinvoke $r2.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1);	$z0 = interfaceinvoke r3.<org.hibernate.persister.entity.EntityPersister: boolean hasNaturalIdentifier()>();	if $z0 != 0 goto $r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl;	$r4 = new org.hibernate.stat.internal.NaturalIdStatisticsImpl;	specialinvoke $r4.<org.hibernate.stat.internal.NaturalIdStatisticsImpl: void <init>(org.hibernate.persister.entity.EntityPersister)>(r3);	return $r4
;block_num 2