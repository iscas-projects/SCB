(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1552 0)
(declare-sort var2039 0)
(declare-sort var75 0)
(declare-sort var3763 0)
(declare-sort var3917 0)
(declare-sort var3154 0)
(declare-sort var2299 0)
(declare-sort var2536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRole/1433297865 (var1552) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var75-init () var75)
(declare-fun arr-var3917-init () (Array Int var3917))
(declare-fun getAlias/-830303573 (var1552) String)
(declare-fun cast-from-String-to-var3917 (String) var3917)
(declare-fun String_format/-647569892 (var3763 String (Array Int var3917)) String)
(declare-fun var2299_getOrigin/-2062407833 (var2299) var3154)
(declare-fun cast-from-var2039-to-var2299 (var2039) var2299)
(declare-fun <init>/235758574 (var75 String var3154) void)
(declare-fun cast-from-var75-to-var2536 (var75) var2536)
(declare-const null-var1552 var1552)
(declare-const null-var2039 var2039)
(declare-const null-Int Int)
(declare-const var3763-ENGLISH var3763)
(declare-const null-__Array__Int__var3917__ (Array Int var3917))
(declare-const var3520 var1552) ; Statement: r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType 
(assert (not (= var3520 null-var1552)))
(declare-const var1460 var2039) ; Statement: r2 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var1460 null-var2039)))
(declare-const var2641 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2641 null-Int)))
(assert true)
(define-const var692 String (getRole/1433297865 var3520)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>() 
(assert true)
(define-const var2124 Int (lastIndexOf/-1292097097 var692 46)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var868 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>() 
(assert (not (not (= var2124 var868)))) ; Negate: Cond: i0 != $i4  
(define-const var2110 var75 var75-init) ; Statement: $r20 = new org.hibernate.boot.MappingException 
(define-const var2941 var3763 var3763-ENGLISH) ; Statement: $r16 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var400 (Array Int var3917) arr-var3917-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3187 String (getAlias/-830303573 var3520)) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getAlias()>() 
(declare-const var400!1 (Array Int var3917))
(assert (not (= var400!1 null-__Array__Int__var3917__)))
(assert (= (select var400!1 0) (cast-from-String-to-var3917 var3187))) ; Statement: $r15[0] = $r17 
(define-const var102 String (String_format/-647569892 var2941 "Collection attribute for sql query return [%s] not formatted correctly {OwnerClassName.propertyName}" var400!1)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r16, "Collection attribute for sql query return [%s] not formatted correctly {OwnerClassName.propertyName}", $r15) 
(define-const var3571 var3154 (var2299_getOrigin/-2062407833 (cast-from-var2039-to-var2299 var1460))) ; Statement: $r18 = interfaceinvoke r2.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2110 var102 var3571)) ; Statement: specialinvoke $r20.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r19, $r18) 

(declare-const var2110!1 var75)
(declare-const var102!1 String)
(declare-const var3571!1 var3154)
(define-const var622 var2536 (cast-from-var75-to-var2536 var2110!1)) ; Statement: $r22 = (java.lang.Throwable) $r20 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getRole/1433297865=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var75-init=([], org.hibernate.boot.MappingException), arr-var3917-init=([], java.lang.Object[]), getAlias/-830303573=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType], java.lang.String), cast-from-String-to-var3917=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var2299_getOrigin/-2062407833=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.jaxb.Origin), cast-from-var2039-to-var2299=([org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var75-to-var2536=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1552=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType, var3520=r0, var2039=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var1460=r2, var2641=i2, var692=$r1, var2124=i0, var868=$i4, var75=org.hibernate.boot.MappingException, var2110=$r20, var3763=java.util.Locale, var2941=$r16, var3917=java.lang.Object, var400=$r15, var3187=$r17, var102=$r19, var3154=org.hibernate.boot.jaxb.Origin, var2299=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var3571=$r18, var2536=java.lang.Throwable, var622=$r22}
; {org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType=var1552, r0=var3520, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var2039, r2=var1460, i2=var2641, $r1=var692, i0=var2124, $i4=var868, org.hibernate.boot.MappingException=var75, $r20=var2110, java.util.Locale=var3763, $r16=var2941, java.lang.Object=var3917, $r15=var400, $r17=var3187, $r19=var102, org.hibernate.boot.jaxb.Origin=var3154, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var2299, $r18=var3571, java.lang.Throwable=var2536, $r22=var622}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType;	r2 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	i2 := @parameter2: int;	$r1 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(46);	$i4 = (int) -1;	if i0 != $i4 goto $r3 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getRole()>();	$r20 = new org.hibernate.boot.MappingException;	$r16 = <java.util.Locale: java.util.Locale ENGLISH>;	$r15 = newarray (java.lang.Object)[1];	$r17 = virtualinvoke r0.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNativeQueryCollectionLoadReturnType: java.lang.String getAlias()>();	$r15[0] = $r17;	$r19 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r16, "Collection attribute for sql query return [%s] not formatted correctly {OwnerClassName.propertyName}", $r15);	$r18 = interfaceinvoke r2.<org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r20.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r19, $r18);	$r22 = (java.lang.Throwable) $r20;	throw $r22
;block_num 2