(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1807 0)
(declare-sort var1456 0)
(declare-sort var1590 0)
(declare-sort var1592 0)
(declare-sort var3452 0)
(declare-sort var2356 0)
(declare-sort var3351 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/642155012 (var1807) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1590-init () var1590)
(declare-fun arr-var3452-init () (Array Int var3452))
(declare-fun getAlias/1869527025 (var1807) String)
(declare-fun cast-from-String-to-var3452 (String) var3452)
(declare-fun String_format/-647569892 (var1592 String (Array Int var3452)) String)
(declare-fun var3351_getOrigin/-2062407833 (var3351) var2356)
(declare-fun cast-from-var1456-to-var3351 (var1456) var3351)
(declare-fun <init>/235758574 (var1590 String var2356) void)
(declare-fun cast-from-var1590-to-var2153 (var1590) var2153)
(declare-const null-var1807 var1807)
(declare-const null-var1456 var1456)
(declare-const null-Int Int)
(declare-const var1592-ENGLISH var1592)
(declare-const null-__Array__Int__var3452__ (Array Int var3452))
(declare-const var1813 var1807) ; Statement: r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType 
(assert (not (= var1813 null-var1807)))
(declare-const var3265 var1456) ; Statement: r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var3265 null-var1456)))
(declare-const var1278 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1278 null-Int)))
(assert true)
(define-const var2019 String (getProperty/642155012 var1813)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(assert true)
(define-const var1403 Int (lastIndexOf/-1292097097 var2019 46)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3890 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>() 
(assert (not (not (= var1403 var3890)))) ; Negate: Cond: i0 != $i4  
(define-const var830 var1590 var1590-init) ; Statement: $r18 = new org.hibernate.boot.MappingException 
(define-const var3917 var1592 var1592-ENGLISH) ; Statement: $r14 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3396 (Array Int var3452) arr-var3452-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3455 String (getAlias/1869527025 var1813)) ; Statement: $r15 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getAlias()>() 
(declare-const var3396!1 (Array Int var3452))
(assert (not (= var3396!1 null-__Array__Int__var3452__)))
(assert (= (select var3396!1 0) (cast-from-String-to-var3452 var3455))) ; Statement: $r13[0] = $r15 
(define-const var3494 String (String_format/-647569892 var3917 "Role attribute for sql query return [%s] not formatted correctly {owningAlias.propertyName}" var3396!1)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "Role attribute for sql query return [%s] not formatted correctly {owningAlias.propertyName}", $r13) 
(define-const var2606 var2356 (var3351_getOrigin/-2062407833 (cast-from-var1456-to-var3351 var3265))) ; Statement: $r16 = interfaceinvoke r7.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var830 var3494 var2606)) ; Statement: specialinvoke $r18.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r17, $r16) 

(declare-const var830!1 var1590)
(declare-const var3494!1 String)
(declare-const var2606!1 var2356)
(define-const var2819 var2153 (cast-from-var1590-to-var2153 var830!1)) ; Statement: $r20 = (java.lang.Throwable) $r18 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/642155012=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1590-init=([], org.hibernate.boot.MappingException), arr-var3452-init=([], java.lang.Object[]), getAlias/1869527025=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType], java.lang.String), cast-from-String-to-var3452=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var3351_getOrigin/-2062407833=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.jaxb.Origin), cast-from-var1456-to-var3351=([org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1590-to-var2153=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1807=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType, var1813=r0, var1456=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var3265=r7, var1278=i2, var2019=$r1, var1403=i0, var3890=$i4, var1590=org.hibernate.boot.MappingException, var830=$r18, var1592=java.util.Locale, var3917=$r14, var3452=java.lang.Object, var3396=$r13, var3455=$r15, var3494=$r17, var2356=org.hibernate.boot.jaxb.Origin, var3351=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var2606=$r16, var2153=java.lang.Throwable, var2819=$r20}
; {org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType=var1807, r0=var1813, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var1456, r7=var3265, i2=var1278, $r1=var2019, i0=var1403, $i4=var3890, org.hibernate.boot.MappingException=var1590, $r18=var830, java.util.Locale=var1592, $r14=var3917, java.lang.Object=var3452, $r13=var3396, $r15=var3455, $r17=var3494, org.hibernate.boot.jaxb.Origin=var2356, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var3351, $r16=var2606, java.lang.Throwable=var2153, $r20=var2819}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType;	r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	i2 := @parameter2: int;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46);	$i4 = (int) -1;	if i0 != $i4 goto $r2 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getProperty()>();	$r18 = new org.hibernate.boot.MappingException;	$r14 = <java.util.Locale: java.util.Locale ENGLISH>;	$r13 = newarray (java.lang.Object)[1];	$r15 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryJoinReturnType: java.lang.String getAlias()>();	$r13[0] = $r15;	$r17 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "Role attribute for sql query return [%s] not formatted correctly {owningAlias.propertyName}", $r13);	$r16 = interfaceinvoke r7.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r18.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r17, $r16);	$r20 = (java.lang.Throwable) $r18;	throw $r20
;block_num 2