(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var261 0)
(declare-sort var1940 0)
(declare-sort var1571 0)
(declare-sort var1422 0)
(declare-sort var606 0)
(declare-sort var821 0)
(declare-sort var3708 0)
(declare-sort var1684 0)
(declare-sort var2326 0)
(declare-sort var3059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContent/-1192631447 (var1940) var606)
(declare-fun var606_iterator/-912451715 (var606) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var821-init () var821)
(declare-fun arr-var3708-init () (Array Int var3708))
(declare-fun getName/362236358 (var1940) String)
(declare-fun cast-from-String-to-var3708 (String) var3708)
(declare-fun String_format/1339386452 (String (Array Int var3708)) String)
(declare-fun var2326_getOrigin/-2062407833 (var2326) var1684)
(declare-fun cast-from-var261-to-var2326 (var261) var2326)
(declare-fun <init>/235758574 (var821 String var1684) void)
(declare-fun cast-from-var821-to-var3059 (var821) var3059)
(declare-const null-var261 var261)
(declare-const null-var1940 var1940)
(declare-const null-String String)
(declare-const null-var1422 var1422)
(declare-const null-__Array__Int__var3708__ (Array Int var3708))
(declare-const var601 var261) ; Statement: r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var601 null-var261)))
(declare-const var1229 var1940) ; Statement: r0 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType 
(assert (not (= var1229 null-var1940)))
(declare-const var2497 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2497 null-String)))
(define-const var2079 String null-String) ; Statement: r43 = null 
(define-const var97 var1422 null-var1422) ; Statement: r44 = null 
(assert true)
(define-const var2854 var606 (getContent/-1192631447 var1229)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType: java.util.List getContent()>() 
(define-const var224 Iterator (var606_iterator/-912451715 var2854)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var700 Bool (Iterator_hasNext/-1669924200 var224)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var700 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r43 != null goto $r29 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (not (= var2079 null-String)))) ; Negate: Cond: r43 != null  
(define-const var1559 var821 var821-init) ; Statement: $r48 = new org.hibernate.boot.MappingException 
(define-const var3485 (Array Int var3708) arr-var3708-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3407 String (getName/362236358 var1229)) ; Statement: $r32 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType: java.lang.String getName()>() 
(declare-const var3485!1 (Array Int var3708))
(assert (not (= var3485!1 null-__Array__Int__var3708__)))
(assert (= (select var3485!1 0) (cast-from-String-to-var3708 var3407))) ; Statement: $r31[0] = $r32 
(define-const var3718 String (String_format/1339386452 "Named query [%s] did not specify query string" var3485!1)) ; Statement: $r34 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Named query [%s] did not specify query string", $r31) 
(define-const var2031 var1684 (var2326_getOrigin/-2062407833 (cast-from-var261-to-var2326 var601))) ; Statement: $r33 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var1559 var3718 var2031)) ; Statement: specialinvoke $r48.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r34, $r33) 

(declare-const var1559!1 var821)
(declare-const var3718!1 String)
(declare-const var2031!1 var1684)
(define-const var1377 var3059 (cast-from-var821-to-var3059 var1559!1)) ; Statement: $r51 = (java.lang.Throwable) $r48 
 ; Statement: throw $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {getContent/-1192631447=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType], java.util.List), var606_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var821-init=([], org.hibernate.boot.MappingException), arr-var3708-init=([], java.lang.Object[]), getName/362236358=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType], java.lang.String), cast-from-String-to-var3708=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2326_getOrigin/-2062407833=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.jaxb.Origin), cast-from-var261-to-var2326=([org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var821-to-var3059=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var261=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var601=r3, var1940=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType, var1229=r0, var2497=r6, var1571=null_type, var2079=r43, var1422=java.util.HashMap, var97=r44, var606=java.util.List, var2854=$r1, var224=r2, var700=$z0, var821=org.hibernate.boot.MappingException, var1559=$r48, var3708=java.lang.Object, var3485=$r31, var3407=$r32, var3718=$r34, var1684=org.hibernate.boot.jaxb.Origin, var2326=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var2031=$r33, var3059=java.lang.Throwable, var1377=$r51}
; {org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var261, r3=var601, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType=var1940, r0=var1229, r6=var2497, null_type=var1571, r43=var2079, java.util.HashMap=var1422, r44=var97, java.util.List=var606, $r1=var2854, r2=var224, $z0=var700, org.hibernate.boot.MappingException=var821, $r48=var1559, java.lang.Object=var3708, $r31=var3485, $r32=var3407, $r34=var3718, org.hibernate.boot.jaxb.Origin=var1684, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var2326, $r33=var2031, java.lang.Throwable=var3059, $r51=var1377}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	r0 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType;	r6 := @parameter2: java.lang.String;	r43 = null;	r44 = null;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType: java.util.List getContent()>();	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r43 != null goto $r29 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r48 = new org.hibernate.boot.MappingException;	$r31 = newarray (java.lang.Object)[1];	$r32 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedQueryType: java.lang.String getName()>();	$r31[0] = $r32;	$r34 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Named query [%s] did not specify query string", $r31);	$r33 = interfaceinvoke r3.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r48.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r34, $r33);	$r51 = (java.lang.Throwable) $r48;	throw $r51
;block_num 4