(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var856 0)
(declare-sort var2194 0)
(declare-sort var1435 0)
(declare-sort var546 0)
(declare-sort var3617 0)
(declare-sort var2374 0)
(declare-sort var26 0)
(declare-sort var1727 0)
(declare-sort var3921 0)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMetadataCollector/1898057277 (var2194) var3617)
(declare-fun getEntityName/-2043384209 (var546) String)
(declare-fun var3617_getEntityTableXref/2869976 (var3617 String) var2374)
(declare-fun var26-init () var26)
(declare-fun arr-var3921-init () (Array Int var3921))
(declare-fun cast-from-String-to-var3921 (String) var3921)
(declare-fun getOrigin/1285793805 (var2194) var633)
(declare-fun cast-from-var633-to-var3921 (var633) var3921)
(declare-fun String_format/-647569892 (var1727 String (Array Int var3921)) String)
(declare-fun <init>/1590914260 (var26 String) void)
(declare-const null-var856 var856)
(declare-const null-var2194 var2194)
(declare-const null-var1435 var1435)
(declare-const null-var546 var546)
(declare-const null-var2374 var2374)
(declare-const var1727-ENGLISH var1727)
(declare-const null-__Array__Int__var3921__ (Array Int var3921))
(declare-const var3889 var856) ; Statement: r16 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var3889 null-var856)))
(declare-const var3911 var2194) ; Statement: r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3911 null-var2194)))
(declare-const var3719 var1435) ; Statement: r5 := @parameter1: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var3719 null-var1435)))
(declare-const var726 var546) ; Statement: r1 := @parameter2: org.hibernate.mapping.PersistentClass 
(assert (not (= var726 null-var546)))
(assert true)
(define-const var3192 var3617 (getMetadataCollector/1898057277 var3911)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert true)
(define-const var1430 String (getEntityName/-2043384209 var726)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(define-const var2490 var2374 (var3617_getEntityTableXref/2869976 var3192 var1430)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>($r2) 
 ; Statement: if r4 != null goto $r6 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.EntitySource: java.util.Map getSecondaryTableMap()>() 
(assert (not (not (= var2490 null-var2374)))) ; Negate: Cond: r4 != null  
(define-const var352 var26 var26-init) ; Statement: $r45 = new org.hibernate.AssertionFailure 
(define-const var1995 var1727 var1727-ENGLISH) ; Statement: $r47 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2399 (Array Int var3921) arr-var3921-init) ; Statement: $r46 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var120 String (getEntityName/-2043384209 var726)) ; Statement: $r48 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(declare-const var2399!1 (Array Int var3921))
(assert (not (= var2399!1 null-__Array__Int__var3921__)))
(assert (= (select var2399!1 0) (cast-from-String-to-var3921 var120))) ; Statement: $r46[0] = $r48 
(assert true)
(define-const var1324 var633 (getOrigin/1285793805 var3911)) ; Statement: $r49 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(declare-const var2399!2 (Array Int var3921))
(assert (not (= var2399!2 null-__Array__Int__var3921__)))
(assert (= (select var2399!2 1) (cast-from-var633-to-var3921 var1324))) ; Statement: $r46[1] = $r49 
(define-const var569 String (String_format/-647569892 var1995 "Unable to locate EntityTableXref for entity [%s] : %s" var2399!2)) ; Statement: $r50 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r47, "Unable to locate EntityTableXref for entity [%s] : %s", $r46) 
(assert true)
;(assert (<init>/1590914260 var352 var569)) ; Statement: specialinvoke $r45.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r50) 

(declare-const var352!1 var26)
(declare-const var569!1 String)
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), var3617_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var26-init=([], org.hibernate.AssertionFailure), arr-var3921-init=([], java.lang.Object[]), cast-from-String-to-var3921=([java.lang.String], java.lang.Object), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), cast-from-var633-to-var3921=([org.hibernate.boot.jaxb.Origin], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var856=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var3889=r16, var2194=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3911=r0, var1435=org.hibernate.boot.model.source.spi.EntitySource, var3719=r5, var546=org.hibernate.mapping.PersistentClass, var726=r1, var3617=org.hibernate.boot.spi.InFlightMetadataCollector, var3192=$r3, var1430=$r2, var2374=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var2490=r4, var26=org.hibernate.AssertionFailure, var352=$r45, var1727=java.util.Locale, var1995=$r47, var3921=java.lang.Object, var2399=$r46, var120=$r48, var633=org.hibernate.boot.jaxb.Origin, var1324=$r49, var569=$r50}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var856, r16=var3889, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2194, r0=var3911, org.hibernate.boot.model.source.spi.EntitySource=var1435, r5=var3719, org.hibernate.mapping.PersistentClass=var546, r1=var726, org.hibernate.boot.spi.InFlightMetadataCollector=var3617, $r3=var3192, $r2=var1430, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var2374, r4=var2490, org.hibernate.AssertionFailure=var26, $r45=var352, java.util.Locale=var1727, $r47=var1995, java.lang.Object=var3921, $r46=var2399, $r48=var120, org.hibernate.boot.jaxb.Origin=var633, $r49=var1324, $r50=var569}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r16 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r5 := @parameter1: org.hibernate.boot.model.source.spi.EntitySource;	r1 := @parameter2: org.hibernate.mapping.PersistentClass;	$r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r2 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>($r2);	if r4 != null goto $r6 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.EntitySource: java.util.Map getSecondaryTableMap()>();	$r45 = new org.hibernate.AssertionFailure;	$r47 = <java.util.Locale: java.util.Locale ENGLISH>;	$r46 = newarray (java.lang.Object)[2];	$r48 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r46[0] = $r48;	$r49 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	$r46[1] = $r49;	$r50 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r47, "Unable to locate EntityTableXref for entity [%s] : %s", $r46);	specialinvoke $r45.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r50);	throw $r45
;block_num 2