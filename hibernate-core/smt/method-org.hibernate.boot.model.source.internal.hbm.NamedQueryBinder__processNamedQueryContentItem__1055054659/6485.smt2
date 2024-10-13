(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var878 0)
(declare-sort var553 0)
(declare-sort var2252 0)
(declare-sort var1334 0)
(declare-sort var3395 0)
(declare-sort var1682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var851) Bool)
(declare-fun cast-from-var851-to-String (var851) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3395_nullIfEmpty/260894482 (String) String)
(declare-const null-var851 var851)
(declare-const null-var878 var878)
(declare-const null-var553 var553)
(declare-const null-var2252 var2252)
(declare-const null-var1334 var1334)
(declare-const null-String String)
(declare-const var536 var851) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var536 null-var851)))
(declare-const var766 var878) ; Statement: r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder 
(assert (not (= var766 null-var878)))
(declare-const var3282 var553) ; Statement: r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder 
(assert (not (= var3282 null-var553)))
(declare-const var1178 var2252) ; Statement: r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType 
(assert (not (= var1178 null-var2252)))
(declare-const var853 var1334) ; Statement: r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var853 null-var1334)))
(define-const var3621 ClassObject String!class) ; Statement: $r1 = class "Ljava/lang/String;" 
(assert true)
(define-const var3611 Bool (isInstance/451912363 var3621 var536)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;" 
(assert (not (= (ite var3611 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2119 String (cast-from-var851-to-String var536)) ; Statement: $r31 = (java.lang.String) r0 
(assert true)
(define-const var3376 String (trim/-847153721 var2119)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>() 
(define-const var572 String (var3395_nullIfEmpty/260894482 var3376)) ; Statement: r34 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r32) 
 ; Statement: if r34 == null goto return 0 
(assert (= var572 null-String)) ; Cond: r34 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var851-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3395_nullIfEmpty/260894482=([java.lang.String], java.lang.String)}
; {var851=java.lang.Object, var536=r0, var878=org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder, var766=r25, var553=org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, var3282=r20, var2252=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType, var1178=r14, var1334=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var853=r17, var3621=$r1, var3611=$z0, var2119=$r31, var3376=$r32, var3395=org.hibernate.internal.util.StringHelper, var572=r34, var1682=null_type}
; {java.lang.Object=var851, r0=var536, org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder=var878, r25=var766, org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder=var553, r20=var3282, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType=var2252, r14=var1178, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var1334, r17=var853, $r1=var3621, $z0=var3611, $r31=var2119, $r32=var3376, org.hibernate.internal.util.StringHelper=var3395, r34=var572, null_type=var1682}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder;	r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder;	r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType;	r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	$r1 = class "Ljava/lang/String;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;";	$r31 = (java.lang.String) r0;	$r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>();	r34 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r32);	if r34 == null goto return 0;	return 0
;block_num 3