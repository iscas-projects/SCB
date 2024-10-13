(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var3147 0)
(declare-sort var2865 0)
(declare-sort var1196 0)
(declare-sort var3 0)
(declare-sort var1420 0)
(declare-sort var3041 0)
(declare-sort var3953 0)
(declare-sort var2193 0)
(declare-sort var1140 0)
(declare-sort var2707 0)
(declare-sort var1108 0)
(declare-sort var2323 0)
(declare-sort var1186 0)
(declare-sort var2884 0)
(declare-sort var3664 0)
(declare-sort var2543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var1420 var3147) void)
(declare-fun cast-from-var3583-to-var1420 (var3583) var1420)
(declare-fun jaxbSecondaryTableMapping/1355499817 (var3583) var2865)
(declare-fun var3953_createTableSource/1588818656 (var3147 var2193 var3) var3041)
(declare-fun cast-from-var2865-to-var2193 (var2865) var2193)
(declare-fun joinTable/1355499817 (var3583) var3041)
(declare-fun cast-from-var3041-to-var1140 (var3041) var1140)
(declare-fun var1140_getExplicitTableName/1419930252 (var1140) String)
(declare-fun var2707_isEmpty/1672864985 (String) Bool)
(declare-fun var1108-init () var1108)
(declare-fun arr-var1186-init () (Array Int var1186))
(declare-fun var2884_getEntityName/-119580260 (var2884) String)
(declare-fun cast-from-var1196-to-var2884 (var1196) var2884)
(declare-fun cast-from-String-to-var1186 (String) var1186)
(declare-fun String_format/-647569892 (var2323 String (Array Int var1186)) String)
(declare-fun getOrigin/1285793805 (var3147) var3664)
(declare-fun <init>/235758574 (var1108 String var3664) void)
(declare-fun cast-from-var1108-to-var2543 (var1108) var2543)
(declare-const null-var3583 var3583)
(declare-const null-var3147 var3147)
(declare-const null-var2865 var2865)
(declare-const null-var1196 var1196)
(declare-const null-var3 var3)
(declare-const var2323-ENGLISH var2323)
(declare-const null-__Array__Int__var1186__ (Array Int var1186))
(declare-const var1494 var3583) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl 
(assert (not (= var1494 null-var3583)))
(declare-const var3038 var3147) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3038 null-var3147)))
(declare-const var2444 var2865) ; Statement: r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType 
(assert (not (= var2444 null-var2865)))
(declare-const var2566 var1196) ; Statement: r19 := @parameter2: org.hibernate.boot.model.source.spi.EntityNamingSource 
(assert (not (= var2566 null-var1196)))
(declare-const var3055 var3) ; Statement: r3 := @parameter3: org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer 
(assert (not (= var3055 null-var3)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var3583-to-var1420 var1494) var3038)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var1494!1 var3583)
(declare-const var3038!1 var3147)
(declare-const var1494!2 var3583)
(assert (not (= var1494!2 null-var3583)))
(assert (= (jaxbSecondaryTableMapping/1355499817 var1494!2) var2444)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType jaxbSecondaryTableMapping> = r2 
(define-const var726 var3041 (var3953_createTableSource/1588818656 var3038!1 (cast-from-var2865-to-var2193 var2444) var3055)) ; Statement: $r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.TableSpecificationSource createTableSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer,org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer)>(r1, r2, r3) 
(declare-const var1494!3 var3583)
(assert (not (= var1494!3 null-var3583)))
(assert (= (joinTable/1355499817 var1494!3) var726)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> = $r4 
(define-const var3338 var3041 (joinTable/1355499817 var1494!3)) ; Statement: $r5 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> 
(define-const var2990 Bool true) ; Statement: $z0 = $r5 instanceof org.hibernate.boot.model.source.spi.TableSource 
 ; Statement: if $z0 == 0 goto $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> 
(assert (not (= (ite var2990 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var910 var3041 (joinTable/1355499817 var1494!3)) ; Statement: $r14 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> 
(define-const var3425 var1140 (cast-from-var3041-to-var1140 var910)) ; Statement: $r15 = (org.hibernate.boot.model.source.spi.TableSource) $r14 
(define-const var1765 String (var1140_getExplicitTableName/1419930252 var3425)) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.boot.model.source.spi.TableSource: java.lang.String getExplicitTableName()>() 
(define-const var232 Bool (var2707_isEmpty/1672864985 var1765)) ; Statement: $z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r16) 
 ; Statement: if $z2 == 0 goto $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> 
(assert (not (= (ite var232 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3450 var1108 var1108-init) ; Statement: $r25 = new org.hibernate.boot.MappingException 
(define-const var1295 var2323 var2323-ENGLISH) ; Statement: $r20 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var423 (Array Int var1186) arr-var1186-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(define-const var465 String (var2884_getEntityName/-119580260 (cast-from-var1196-to-var2884 var2566))) ; Statement: $r21 = interfaceinvoke r19.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(declare-const var423!1 (Array Int var1186))
(assert (not (= var423!1 null-__Array__Int__var1186__)))
(assert (= (select var423!1 0) (cast-from-String-to-var1186 var465))) ; Statement: $r18[0] = $r21 
(define-const var180 String (String_format/-647569892 var1295 "Secondary table (<join/>) must explicitly name table or sub-select, but neither specified for entity [%s]" var423!1)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r20, "Secondary table (<join/>) must explicitly name table or sub-select, but neither specified for entity [%s]", $r18) 
(assert true)
(define-const var1745 var3664 (getOrigin/1285793805 var3038!1)) ; Statement: $r22 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var3450 var180 var1745)) ; Statement: specialinvoke $r25.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r23, $r22) 

(declare-const var3450!1 var1108)
(declare-const var180!1 String)
(declare-const var1745!1 var3664)
(define-const var2951 var2543 (cast-from-var1108-to-var2543 var3450!1)) ; Statement: $r27 = (java.lang.Throwable) $r25 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var3583-to-var1420=([org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), jaxbSecondaryTableMapping/1355499817=([org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType), var3953_createTableSource/1588818656=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer, org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer], org.hibernate.boot.model.source.spi.TableSpecificationSource), cast-from-var2865-to-var2193=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType], org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer), joinTable/1355499817=([org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl], org.hibernate.boot.model.source.spi.TableSpecificationSource), cast-from-var3041-to-var1140=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.TableSource), var1140_getExplicitTableName/1419930252=([org.hibernate.boot.model.source.spi.TableSource], java.lang.String), var2707_isEmpty/1672864985=([java.lang.String], boolean), var1108-init=([], org.hibernate.boot.MappingException), arr-var1186-init=([], java.lang.Object[]), var2884_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var1196-to-var2884=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), cast-from-String-to-var1186=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1108-to-var2543=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3583=org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl, var1494=r0, var3147=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3038=r1, var2865=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType, var2444=r2, var1196=org.hibernate.boot.model.source.spi.EntityNamingSource, var2566=r19, var3=org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer, var3055=r3, var1420=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var3041=org.hibernate.boot.model.source.spi.TableSpecificationSource, var3953=org.hibernate.boot.model.source.internal.hbm.Helper, var2193=org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer, var726=$r4, var3338=$r5, var2990=$z0, var910=$r14, var1140=org.hibernate.boot.model.source.spi.TableSource, var3425=$r15, var1765=$r16, var2707=org.hibernate.internal.util.StringHelper, var232=$z2, var1108=org.hibernate.boot.MappingException, var3450=$r25, var2323=java.util.Locale, var1295=$r20, var1186=java.lang.Object, var423=$r18, var2884=org.hibernate.boot.model.naming.EntityNaming, var465=$r21, var180=$r23, var3664=org.hibernate.boot.jaxb.Origin, var1745=$r22, var2543=java.lang.Throwable, var2951=$r27}
; {org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl=var3583, r0=var1494, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3147, r1=var3038, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType=var2865, r2=var2444, org.hibernate.boot.model.source.spi.EntityNamingSource=var1196, r19=var2566, org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer=var3, r3=var3055, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var1420, org.hibernate.boot.model.source.spi.TableSpecificationSource=var3041, org.hibernate.boot.model.source.internal.hbm.Helper=var3953, org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer=var2193, $r4=var726, $r5=var3338, $z0=var2990, $r14=var910, org.hibernate.boot.model.source.spi.TableSource=var1140, $r15=var3425, $r16=var1765, org.hibernate.internal.util.StringHelper=var2707, $z2=var232, org.hibernate.boot.MappingException=var1108, $r25=var3450, java.util.Locale=var2323, $r20=var1295, java.lang.Object=var1186, $r18=var423, org.hibernate.boot.model.naming.EntityNaming=var2884, $r21=var465, $r23=var180, org.hibernate.boot.jaxb.Origin=var3664, $r22=var1745, java.lang.Throwable=var2543, $r27=var2951}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType;	r19 := @parameter2: org.hibernate.boot.model.source.spi.EntityNamingSource;	r3 := @parameter3: org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSecondaryTableType jaxbSecondaryTableMapping> = r2;	$r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.TableSpecificationSource createTableSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer,org.hibernate.boot.model.source.internal.hbm.Helper$InLineViewNameInferrer)>(r1, r2, r3);	r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable> = $r4;	$r5 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable>;	$z0 = $r5 instanceof org.hibernate.boot.model.source.spi.TableSource;	if $z0 == 0 goto $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable>;	$r14 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable>;	$r15 = (org.hibernate.boot.model.source.spi.TableSource) $r14;	$r16 = interfaceinvoke $r15.<org.hibernate.boot.model.source.spi.TableSource: java.lang.String getExplicitTableName()>();	$z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r16);	if $z2 == 0 goto $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.SecondaryTableSourceImpl: org.hibernate.boot.model.source.spi.TableSpecificationSource joinTable>;	$r25 = new org.hibernate.boot.MappingException;	$r20 = <java.util.Locale: java.util.Locale ENGLISH>;	$r18 = newarray (java.lang.Object)[1];	$r21 = interfaceinvoke r19.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r18[0] = $r21;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r20, "Secondary table (<join/>) must explicitly name table or sub-select, but neither specified for entity [%s]", $r18);	$r22 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r25.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r23, $r22);	$r27 = (java.lang.Throwable) $r25;	throw $r27
;block_num 3