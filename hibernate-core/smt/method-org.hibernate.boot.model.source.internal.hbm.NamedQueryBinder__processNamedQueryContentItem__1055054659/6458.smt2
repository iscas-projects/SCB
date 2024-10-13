(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var951 0)
(declare-sort var116 0)
(declare-sort var3245 0)
(declare-sort var1222 0)
(declare-sort var3209 0)
(declare-sort var1333 0)
(declare-sort var1625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var951) Bool)
(declare-fun cast-from-var951-to-String (var951) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1333_nullIfEmpty/260894482 (String) String)
(declare-fun setQuery/-843392750 (var116 String) var116)
(declare-const null-var951 var951)
(declare-const null-var116 var116)
(declare-const null-var3245 var3245)
(declare-const null-var1222 var1222)
(declare-const null-var3209 var3209)
(declare-const null-String String)
(declare-const var3297 var951) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3297 null-var951)))
(declare-const var2869 var116) ; Statement: r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder 
(assert (not (= var2869 null-var116)))
(declare-const var1843 var3245) ; Statement: r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder 
(assert (not (= var1843 null-var3245)))
(declare-const var3429 var1222) ; Statement: r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType 
(assert (not (= var3429 null-var1222)))
(declare-const var3532 var3209) ; Statement: r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var3532 null-var3209)))
(define-const var2506 ClassObject String!class) ; Statement: $r1 = class "Ljava/lang/String;" 
(assert true)
(define-const var340 Bool (isInstance/451912363 var2506 var3297)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;" 
(assert (not (= (ite var340 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3877 String (cast-from-var951-to-String var3297)) ; Statement: $r31 = (java.lang.String) r0 
(assert true)
(define-const var338 String (trim/-847153721 var3877)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>() 
(define-const var1433 String (var1333_nullIfEmpty/260894482 var338)) ; Statement: r34 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r32) 
 ; Statement: if r34 == null goto return 0 
(assert (not (= var1433 null-String))) ; Negate: Cond: r34 == null  
(define-const var3912 String (cast-from-var951-to-String var3297)) ; Statement: $r33 = (java.lang.String) r0 
(assert true)
;(assert (setQuery/-843392750 var2869 var3912)) ; Statement: virtualinvoke r25.<org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder setQuery(java.lang.String)>($r33) 

(declare-const var2869!1 var116)
(declare-const var3912!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var951-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var1333_nullIfEmpty/260894482=([java.lang.String], java.lang.String), setQuery/-843392750=([org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder, java.lang.String], org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder)}
; {var951=java.lang.Object, var3297=r0, var116=org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder, var2869=r25, var3245=org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, var1843=r20, var1222=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType, var3429=r14, var3209=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var3532=r17, var2506=$r1, var340=$z0, var3877=$r31, var338=$r32, var1333=org.hibernate.internal.util.StringHelper, var1433=r34, var1625=null_type, var3912=$r33}
; {java.lang.Object=var951, r0=var3297, org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder=var116, r25=var2869, org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder=var3245, r20=var1843, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType=var1222, r14=var3429, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var3209, r17=var3532, $r1=var2506, $z0=var340, $r31=var3877, $r32=var338, org.hibernate.internal.util.StringHelper=var1333, r34=var1433, null_type=var1625, $r33=var3912}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder;	r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder;	r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType;	r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	$r1 = class "Ljava/lang/String;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;";	$r31 = (java.lang.String) r0;	$r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>();	r34 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r32);	if r34 == null goto return 0;	$r33 = (java.lang.String) r0;	virtualinvoke r25.<org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder setQuery(java.lang.String)>($r33);	return 1
;block_num 3