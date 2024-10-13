(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var1786 0)
(declare-sort var2756 0)
(declare-sort var759 0)
(declare-sort var1986 0)
(declare-sort var760 0)
(declare-sort var3040 0)
(declare-sort var3184 0)
(declare-sort var2374 0)
(declare-sort var2290 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2756!class ClassObject)
(declare-fun persistentClass/-1293733177 (var651) var759)
(declare-fun isInstance/451912363 (ClassObject var1986) Bool)
(declare-fun cast-from-var759-to-var1986 (var759) var1986)
(declare-fun context/-1293733177 (var651) var760)
(declare-fun var760_getMetadataCollector/-129185252 (var760) var3040)
(declare-fun getEntityName/-2043384209 (var759) String)
(declare-fun var2374_getDatabase/193995574 (var2374) var3184)
(declare-fun cast-from-var3040-to-var2374 (var3040) var2374)
(declare-fun var1786_getPrimaryTable/-526722776 (var1786) var2290)
(declare-fun var3040_getLogicalTableName/1858159731 (var3040 var2290) String)
(declare-fun toIdentifier/-614655301 (var3184 String) var2533)
(declare-fun var3040_addEntityTableXref/141341542 (var3040 String var2533 var2290 var1786) var1786)
(declare-const null-var651 var651)
(declare-const null-var1786 var1786)
(declare-const var1119 var651) ; Statement: r0 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1119 null-var651)))
(declare-const var1878 var1786) ; Statement: r8 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref 
(assert (not (= var1878 null-var1786)))
(define-const var3934 ClassObject var2756!class) ; Statement: $r2 = class "Lorg/hibernate/mapping/SingleTableSubclass;" 
(define-const var1567 var759 (persistentClass/-1293733177 var1119)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
(define-const var1940 Bool (isInstance/451912363 var3934 (cast-from-var759-to-var1986 var1567))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context> 
(assert (not (= (ite var1940 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1602 var760 (context/-1293733177 var1119)) ; Statement: $r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context> 
(define-const var3778 var3040 (var760_getMetadataCollector/-129185252 var1602)) ; Statement: $r16 = interfaceinvoke $r3.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var1299 var759 (persistentClass/-1293733177 var1119)) ; Statement: $r4 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
(define-const var2061 String (getEntityName/-2043384209 var1299)) ; Statement: $r15 = virtualinvoke $r4.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(define-const var250 var760 (context/-1293733177 var1119)) ; Statement: $r5 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context> 
(define-const var2642 var3040 (var760_getMetadataCollector/-129185252 var250)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var1696 var3184 (var2374_getDatabase/193995574 (cast-from-var3040-to-var2374 var2642))) ; Statement: $r12 = interfaceinvoke $r6.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>() 
(define-const var2739 var760 (context/-1293733177 var1119)) ; Statement: $r7 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context> 
(define-const var636 var3040 (var760_getMetadataCollector/-129185252 var2739)) ; Statement: $r10 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2288 var2290 (var1786_getPrimaryTable/-526722776 var1878)) ; Statement: $r9 = interfaceinvoke r8.<org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref: org.hibernate.mapping.Table getPrimaryTable()>() 
(define-const var2441 String (var3040_getLogicalTableName/1858159731 var636 var2288)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.boot.spi.InFlightMetadataCollector: java.lang.String getLogicalTableName(org.hibernate.mapping.Table)>($r9) 
(assert true)
(define-const var2814 var2533 (toIdentifier/-614655301 var1696 var2441)) ; Statement: $r14 = virtualinvoke $r12.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r11) 
(define-const var2224 var2290 (var1786_getPrimaryTable/-526722776 var1878)) ; Statement: $r13 = interfaceinvoke r8.<org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref: org.hibernate.mapping.Table getPrimaryTable()>() 
;(assert (var3040_addEntityTableXref/141341542 var3778 var2061 var2814 var2224 var1878)) ; Statement: interfaceinvoke $r16.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r15, $r14, $r13, r8) 

(declare-const var3778!1 var3040)
(declare-const var2061!1 String)
(declare-const var2814!1 var2533)
(declare-const var2224!1 var2290)
(declare-const var1878!1 var1786)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.mapping.PersistentClass), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var759-to-var1986=([org.hibernate.mapping.PersistentClass], java.lang.Object), context/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.boot.spi.MetadataBuildingContext), var760_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), var2374_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), cast-from-var3040-to-var2374=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var1786_getPrimaryTable/-526722776=([org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.mapping.Table), var3040_getLogicalTableName/1858159731=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.mapping.Table], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var3040_addEntityTableXref/141341542=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)}
; {var651=org.hibernate.cfg.annotations.EntityBinder, var1119=r0, var1786=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var1878=r8, var2756=org.hibernate.mapping.SingleTableSubclass, var3934=$r2, var759=org.hibernate.mapping.PersistentClass, var1567=$r1, var1986=java.lang.Object, var1940=$z0, var760=org.hibernate.boot.spi.MetadataBuildingContext, var1602=$r3, var3040=org.hibernate.boot.spi.InFlightMetadataCollector, var3778=$r16, var1299=$r4, var2061=$r15, var250=$r5, var2642=$r6, var3184=org.hibernate.boot.model.relational.Database, var2374=org.hibernate.boot.Metadata, var1696=$r12, var2739=$r7, var636=$r10, var2290=org.hibernate.mapping.Table, var2288=$r9, var2441=$r11, var2533=org.hibernate.boot.model.naming.Identifier, var2814=$r14, var2224=$r13}
; {org.hibernate.cfg.annotations.EntityBinder=var651, r0=var1119, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var1786, r8=var1878, org.hibernate.mapping.SingleTableSubclass=var2756, $r2=var3934, org.hibernate.mapping.PersistentClass=var759, $r1=var1567, java.lang.Object=var1986, $z0=var1940, org.hibernate.boot.spi.MetadataBuildingContext=var760, $r3=var1602, org.hibernate.boot.spi.InFlightMetadataCollector=var3040, $r16=var3778, $r4=var1299, $r15=var2061, $r5=var250, $r6=var2642, org.hibernate.boot.model.relational.Database=var3184, org.hibernate.boot.Metadata=var2374, $r12=var1696, $r7=var2739, $r10=var636, org.hibernate.mapping.Table=var2290, $r9=var2288, $r11=var2441, org.hibernate.boot.model.naming.Identifier=var2533, $r14=var2814, $r13=var2224}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.annotations.EntityBinder;	r8 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref;	$r2 = class "Lorg/hibernate/mapping/SingleTableSubclass;";	$r1 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>($r1);	if $z0 != 0 goto $r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context>;	$r3 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context>;	$r16 = interfaceinvoke $r3.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r4 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$r15 = virtualinvoke $r4.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r5 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context>;	$r6 = interfaceinvoke $r5.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r12 = interfaceinvoke $r6.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>();	$r7 = r0.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.boot.spi.MetadataBuildingContext context>;	$r10 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r9 = interfaceinvoke r8.<org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref: org.hibernate.mapping.Table getPrimaryTable()>();	$r11 = interfaceinvoke $r10.<org.hibernate.boot.spi.InFlightMetadataCollector: java.lang.String getLogicalTableName(org.hibernate.mapping.Table)>($r9);	$r14 = virtualinvoke $r12.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r11);	$r13 = interfaceinvoke r8.<org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref: org.hibernate.mapping.Table getPrimaryTable()>();	interfaceinvoke $r16.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r15, $r14, $r13, r8);	return
;block_num 2