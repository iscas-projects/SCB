(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3880 0)
(declare-sort var1228 0)
(declare-sort var405 0)
(declare-sort var1503 0)
(declare-sort var3222 0)
(declare-sort var11 0)
(declare-sort var3891 0)
(declare-sort var3031 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun primaryTableLogicalName/-159666928 (var3880) var405)
(declare-fun var405_areEqual/-171656153 (var405 var405) Bool)
(declare-fun var3222-init () var3222)
(declare-fun arr-var3891-init () (Array Int var3891))
(declare-fun cast-from-var405-to-var3891 (var405) var3891)
(declare-fun String_format/-647569892 (var11 String (Array Int var3891)) String)
(declare-fun var1228_getOrigin/-2062407833 (var1228) var3031)
(declare-fun <init>/235758574 (var3222 String var3031) void)
(declare-fun cast-from-var3222-to-var3855 (var3222) var3855)
(declare-const null-var3880 var3880)
(declare-const null-var1228 var1228)
(declare-const null-var405 var405)
(declare-const null-var1503 var1503)
(declare-const var11-ENGLISH var11)
(declare-const null-__Array__Int__var3891__ (Array Int var3891))
(declare-const var3933 var3880) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl 
(assert (not (= var3933 null-var3880)))
(declare-const var1232 var1228) ; Statement: r12 := @parameter0: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext 
(assert (not (= var1232 null-var1228)))
(declare-const var1828 var405) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1828 null-var405)))
(declare-const var691 var1503) ; Statement: r5 := @parameter2: org.hibernate.mapping.Join 
(assert (not (= var691 null-var1503)))
(define-const var619 var405 (primaryTableLogicalName/-159666928 var3933)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: org.hibernate.boot.model.naming.Identifier primaryTableLogicalName> 
(define-const var561 Bool (var405_areEqual/-171656153 var619 var1828)) ; Statement: $z0 = staticinvoke <org.hibernate.boot.model.naming.Identifier: boolean areEqual(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r2, r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: java.util.Map secondaryTableJoinMap> 
(assert (not (= (ite var561 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3389 var3222 var3222-init) ; Statement: $r24 = new org.hibernate.boot.MappingException 
(define-const var866 var11 var11-ENGLISH) ; Statement: $r21 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var643 (Array Int var3891) arr-var3891-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(define-const var2165 var405 (primaryTableLogicalName/-159666928 var3933)) ; Statement: $r20 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: org.hibernate.boot.model.naming.Identifier primaryTableLogicalName> 
(declare-const var643!1 (Array Int var3891))
(assert (not (= var643!1 null-__Array__Int__var3891__)))
(assert (= (select var643!1 0) (cast-from-var405-to-var3891 var2165))) ; Statement: $r19[0] = $r20 
(define-const var272 String (String_format/-647569892 var866 "Attempt to add secondary table with same name as primary table [%s]" var643!1)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r21, "Attempt to add secondary table with same name as primary table [%s]", $r19) 
(define-const var2725 var3031 (var1228_getOrigin/-2062407833 var1232)) ; Statement: $r22 = interfaceinvoke r12.<org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var3389 var272 var2725)) ; Statement: specialinvoke $r24.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r23, $r22) 

(declare-const var3389!1 var3222)
(declare-const var272!1 String)
(declare-const var2725!1 var3031)
(define-const var1708 var3855 (cast-from-var3222-to-var3855 var3389!1)) ; Statement: $r27 = (java.lang.Throwable) $r24 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {primaryTableLogicalName/-159666928=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl], org.hibernate.boot.model.naming.Identifier), var405_areEqual/-171656153=([org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], boolean), var3222-init=([], org.hibernate.boot.MappingException), arr-var3891-init=([], java.lang.Object[]), cast-from-var405-to-var3891=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1228_getOrigin/-2062407833=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3222-to-var3855=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3880=org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl, var3933=r0, var1228=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var1232=r12, var405=org.hibernate.boot.model.naming.Identifier, var1828=r1, var1503=org.hibernate.mapping.Join, var691=r5, var619=$r2, var561=$z0, var3222=org.hibernate.boot.MappingException, var3389=$r24, var11=java.util.Locale, var866=$r21, var3891=java.lang.Object, var643=$r19, var2165=$r20, var272=$r23, var3031=org.hibernate.boot.jaxb.Origin, var2725=$r22, var3855=java.lang.Throwable, var1708=$r27}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl=var3880, r0=var3933, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var1228, r12=var1232, org.hibernate.boot.model.naming.Identifier=var405, r1=var1828, org.hibernate.mapping.Join=var1503, r5=var691, $r2=var619, $z0=var561, org.hibernate.boot.MappingException=var3222, $r24=var3389, java.util.Locale=var11, $r21=var866, java.lang.Object=var3891, $r19=var643, $r20=var2165, $r23=var272, org.hibernate.boot.jaxb.Origin=var3031, $r22=var2725, java.lang.Throwable=var3855, $r27=var1708}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl;	r12 := @parameter0: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r5 := @parameter2: org.hibernate.mapping.Join;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: org.hibernate.boot.model.naming.Identifier primaryTableLogicalName>;	$z0 = staticinvoke <org.hibernate.boot.model.naming.Identifier: boolean areEqual(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r2, r1);	if $z0 == 0 goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: java.util.Map secondaryTableJoinMap>;	$r24 = new org.hibernate.boot.MappingException;	$r21 = <java.util.Locale: java.util.Locale ENGLISH>;	$r19 = newarray (java.lang.Object)[1];	$r20 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$EntityTableXrefImpl: org.hibernate.boot.model.naming.Identifier primaryTableLogicalName>;	$r19[0] = $r20;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r21, "Attempt to add secondary table with same name as primary table [%s]", $r19);	$r22 = interfaceinvoke r12.<org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r24.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r23, $r22);	$r27 = (java.lang.Throwable) $r24;	throw $r27
;block_num 2