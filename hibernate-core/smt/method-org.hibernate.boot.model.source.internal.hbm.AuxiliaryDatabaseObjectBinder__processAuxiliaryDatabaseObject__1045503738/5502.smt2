(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var2338 0)
(declare-sort var1130 0)
(declare-sort var3712 0)
(declare-sort var1434 0)
(declare-sort var2736 0)
(declare-sort var1328 0)
(declare-sort var1558 0)
(declare-sort var1604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefinition/-1027222183 (var2338) var1130)
(declare-fun getClazz/-1651474849 (var1130) String)
(declare-fun var1434-init () var1434)
(declare-fun arr-var2736-init () (Array Int var2736))
(declare-fun cast-from-String-to-var2736 (String) var2736)
(declare-fun String_format/1339386452 (String (Array Int var2736)) String)
(declare-fun var1558_getOrigin/-2062407833 (var1558) var1328)
(declare-fun cast-from-var262-to-var1558 (var262) var1558)
(declare-fun <init>/235758574 (var1434 String var1328) void)
(declare-fun cast-from-var1434-to-var1604 (var1434) var1604)
(declare-const null-var262 var262)
(declare-const null-var2338 var2338)
(declare-const null-var1130 var1130)
(declare-const null-var3712 var3712)
(declare-const null-__Array__Int__var2736__ (Array Int var2736))
(declare-const var2546 var262) ; Statement: r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var2546 null-var262)))
(declare-const var2502 var2338) ; Statement: r0 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType 
(assert (not (= var2502 null-var2338)))
(assert true)
(define-const var335 var1130 (getDefinition/-1027222183 var2502)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition getDefinition()>() 
 ; Statement: if $r1 == null goto $r34 = new org.hibernate.boot.model.relational.SimpleAuxiliaryDatabaseObject 
(assert (not (= var335 null-var1130))) ; Negate: Cond: $r1 == null  
(assert true)
(define-const var633 var1130 (getDefinition/-1027222183 var2502)) ; Statement: $r15 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition getDefinition()>() 
(assert true)
(define-const var707 String (getClazz/-1651474849 var633)) ; Statement: r27 = virtualinvoke $r15.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition: java.lang.String getClazz()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3808 var3712) ; Statement: $r22 := @caughtexception 
(assert (not (= var3808 null-var3712)))
(define-const var2004 var1434 var1434-init) ; Statement: $r33 = new org.hibernate.boot.MappingException 
(define-const var19 (Array Int var2736) arr-var2736-init) ; Statement: $r24 = newarray (java.lang.Object)[1] 
(declare-const var19!1 (Array Int var2736))
(assert (not (= var19!1 null-__Array__Int__var2736__)))
(assert (= (select var19!1 0) (cast-from-String-to-var2736 var707))) ; Statement: $r24[0] = r27 
(define-const var896 String (String_format/1339386452 "Unable to instantiate custom AuxiliaryDatabaseObject class [%s]" var19!1)) ; Statement: $r26 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to instantiate custom AuxiliaryDatabaseObject class [%s]", $r24) 
(define-const var2296 var1328 (var1558_getOrigin/-2062407833 (cast-from-var262-to-var1558 var2546))) ; Statement: $r25 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2004 var896 var2296)) ; Statement: specialinvoke $r33.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r26, $r25) 

(declare-const var2004!1 var1434)
(declare-const var896!1 String)
(declare-const var2296!1 var1328)
(define-const var3707 var1604 (cast-from-var1434-to-var1604 var2004!1)) ; Statement: $r35 = (java.lang.Throwable) $r33 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefinition/-1027222183=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition), getClazz/-1651474849=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition], java.lang.String), var1434-init=([], org.hibernate.boot.MappingException), arr-var2736-init=([], java.lang.Object[]), cast-from-String-to-var2736=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var1558_getOrigin/-2062407833=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.jaxb.Origin), cast-from-var262-to-var1558=([org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1434-to-var1604=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var262=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var2546=r3, var2338=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType, var2502=r0, var1130=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition, var335=$r1, var633=$r15, var707=r27, var3712=java.lang.Exception, var3808=$r22, var1434=org.hibernate.boot.MappingException, var2004=$r33, var2736=java.lang.Object, var19=$r24, var896=$r26, var1328=org.hibernate.boot.jaxb.Origin, var1558=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var2296=$r25, var1604=java.lang.Throwable, var3707=$r35}
; {org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var262, r3=var2546, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType=var2338, r0=var2502, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition=var1130, $r1=var335, $r15=var633, r27=var707, java.lang.Exception=var3712, $r22=var3808, org.hibernate.boot.MappingException=var1434, $r33=var2004, java.lang.Object=var2736, $r24=var19, $r26=var896, org.hibernate.boot.jaxb.Origin=var1328, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var1558, $r25=var2296, java.lang.Throwable=var1604, $r35=var3707}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	r0 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition getDefinition()>();	if $r1 == null goto $r34 = new org.hibernate.boot.model.relational.SimpleAuxiliaryDatabaseObject;	$r15 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition getDefinition()>();	r27 = virtualinvoke $r15.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAuxiliaryDatabaseObjectType$JaxbHbmDefinition: java.lang.String getClazz()>();	$r22 := @caughtexception;	$r33 = new org.hibernate.boot.MappingException;	$r24 = newarray (java.lang.Object)[1];	$r24[0] = r27;	$r26 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to instantiate custom AuxiliaryDatabaseObject class [%s]", $r24);	$r25 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r33.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r26, $r25);	$r35 = (java.lang.Throwable) $r33;	throw $r35
;block_num 3