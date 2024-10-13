(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var3265 0)
(declare-sort var650 0)
(declare-sort var1556 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factory/181402656 (var850) var650)
(declare-fun var650_getEntityPersister/1301528620 (var650 String) var1556)
(declare-fun cast-from-var1556-to-var2480 (var1556) var2480)
(declare-const null-var850 var850)
(declare-const null-String String)
(declare-const var2513 var850) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor 
(assert (not (= var2513 null-var850)))
(declare-const var1679 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1679 null-String)))
(define-const var246 var650 (factory/181402656 var2513)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var812 var1556 (var650_getEntityPersister/1301528620 var246 var1679)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1) 
(define-const var3450 Bool true) ; Statement: $z0 = r3 instanceof org.hibernate.persister.entity.SQLLoadable 
 ; Statement: if $z0 != 0 goto $r4 = (org.hibernate.persister.entity.SQLLoadable) r3 
(assert (not (= (ite var3450 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3497 var2480 (cast-from-var1556-to-var2480 var812)) ; Statement: $r4 = (org.hibernate.persister.entity.SQLLoadable) r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {factory/181402656=([org.hibernate.loader.custom.sql.SQLQueryReturnProcessor], org.hibernate.engine.spi.SessionFactoryImplementor), var650_getEntityPersister/1301528620=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var1556-to-var2480=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.SQLLoadable)}
; {var850=org.hibernate.loader.custom.sql.SQLQueryReturnProcessor, var2513=r0, var1679=r1, var3265=null_type, var650=org.hibernate.engine.spi.SessionFactoryImplementor, var246=$r2, var1556=org.hibernate.persister.entity.EntityPersister, var812=r3, var3450=$z0, var2480=org.hibernate.persister.entity.SQLLoadable, var3497=$r4}
; {org.hibernate.loader.custom.sql.SQLQueryReturnProcessor=var850, r0=var2513, r1=var1679, null_type=var3265, org.hibernate.engine.spi.SessionFactoryImplementor=var650, $r2=var246, org.hibernate.persister.entity.EntityPersister=var1556, r3=var812, $z0=var3450, org.hibernate.persister.entity.SQLLoadable=var2480, $r4=var3497}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1);	$z0 = r3 instanceof org.hibernate.persister.entity.SQLLoadable;	if $z0 != 0 goto $r4 = (org.hibernate.persister.entity.SQLLoadable) r3;	$r4 = (org.hibernate.persister.entity.SQLLoadable) r3;	return $r4
;block_num 2