(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3612 0)
(declare-sort var1527 0)
(declare-sort var2894 0)
(declare-sort var941 0)
(declare-sort var267 0)
(declare-sort var679 0)
(declare-sort var3268 0)
(declare-sort var578 0)
(declare-sort var316 0)
(declare-sort var387 0)
(declare-sort var3727 0)
(declare-sort var2383 0)
(declare-sort var2691 0)
(declare-sort var647 0)
(declare-sort var674 0)
(declare-sort var1651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var679) void)
(declare-fun cast-from-var3612-to-var679 (var3612) var679)
(declare-fun cascade/-1918847809 (var3612) String)
(declare-fun var3268-init () var3268)
(declare-fun <init>/-1202041948 (var3268 var3612 var941) void)
(declare-fun var316_buildValueSources/1952860664 (var1527 String var387) var578)
(declare-fun cast-from-var3268-to-var387 (var3268) var387)
(declare-fun var578_size/-959786421 (var578) Int)
(declare-fun var3727-init () var3727)
(declare-fun arr-var679-init () (Array Int var679))
(declare-fun getAttributeRole/1285474362 (var2894) var2691)
(declare-fun getFullPath/-1971906419 (var647) String)
(declare-fun cast-from-var2691-to-var647 (var2691) var647)
(declare-fun cast-from-String-to-var679 (String) var679)
(declare-fun String_format/-647569892 (var2383 String (Array Int var679)) String)
(declare-fun getOrigin/1285793805 (var1527) var674)
(declare-fun <init>/235758574 (var3727 String var674) void)
(declare-fun cast-from-var3727-to-var1651 (var3727) var1651)
(declare-const null-var3612 var3612)
(declare-const null-var1527 var1527)
(declare-const null-var2894 var2894)
(declare-const null-var941 var941)
(declare-const null-String String)
(declare-const var2383-ENGLISH var2383)
(declare-const null-__Array__Int__var679__ (Array Int var679))
(declare-const var3497 var3612) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl 
(assert (not (= var3497 null-var3612)))
(declare-const var3355 var1527) ; Statement: r2 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3355 null-var1527)))
(declare-const var503 var2894) ; Statement: r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl 
(assert (not (= var503 null-var2894)))
(declare-const var1986 var941) ; Statement: r4 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType 
(assert (not (= var1986 null-var941)))
(declare-const var3304 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3304 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3612-to-var679 var3497))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3497!1 var3612)
(declare-const var3497!2 var3612)
(assert (not (= var3497!2 null-var3612)))
(assert (= (cascade/-1918847809 var3497!2) var3304)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: java.lang.String cascade> = r1 
(define-const var3354 var3268 var3268-init) ; Statement: $r16 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1 
(assert true)
;(assert (<init>/-1202041948 var3354 var3497!2 var1986)) ; Statement: specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType)>(r0, r4) 

(declare-const var3354!1 var3268)
(declare-const var3497!3 var3612)
(declare-const var1986!1 var941)
(define-const var3810 var578 (var316_buildValueSources/1952860664 var3355 null-String (cast-from-var3268-to-var387 var3354!1))) ; Statement: r5 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r2, null, $r16) 
(define-const var1845 Int (var578_size/-959786421 var3810)) ; Statement: $i0 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2 
(assert (not (>= var1845 2))) ; Negate: Cond: $i0 >= 2  
(define-const var3210 var3727 var3727-init) ; Statement: $r17 = new org.hibernate.boot.MappingException 
(define-const var3601 var2383 var2383-ENGLISH) ; Statement: $r11 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2967 (Array Int var679) arr-var679-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var677 var2691 (getAttributeRole/1285474362 var503)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var1217 String (getFullPath/-1971906419 (cast-from-var2691-to-var647 var677))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var2967!1 (Array Int var679))
(assert (not (= var2967!1 null-__Array__Int__var679__)))
(assert (= (select var2967!1 0) (cast-from-String-to-var679 var1217))) ; Statement: $r10[0] = $r13 
(define-const var1377 String (String_format/-647569892 var3601 "<many-to-any /> mapping [%s] needs to specify 2 or more columns" var2967!1)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r11, "<many-to-any /> mapping [%s] needs to specify 2 or more columns", $r10) 
(assert true)
(define-const var2252 var674 (getOrigin/1285793805 var3355)) ; Statement: $r14 = virtualinvoke r2.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var3210 var1377 var2252)) ; Statement: specialinvoke $r17.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r15, $r14) 

(declare-const var3210!1 var3727)
(declare-const var1377!1 String)
(declare-const var2252!1 var674)
(define-const var355 var1651 (cast-from-var3727-to-var1651 var3210!1)) ; Statement: $r20 = (java.lang.Throwable) $r17 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3612-to-var679=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], java.lang.Object), cascade/-1918847809=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], java.lang.String), var3268-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1), <init>/-1202041948=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType], void), var316_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var3268-to-var387=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var578_size/-959786421=([java.util.List], int), var3727-init=([], org.hibernate.boot.MappingException), arr-var679-init=([], java.lang.Object[]), getAttributeRole/1285474362=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var2691-to-var647=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), cast-from-String-to-var679=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3727-to-var1651=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3612=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, var3497=r0, var1527=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3355=r2, var2894=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var503=r7, var941=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType, var1986=r4, var3304=r1, var267=null_type, var679=java.lang.Object, var3268=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1, var3354=$r16, var578=java.util.List, var316=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var387=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3810=r5, var1845=$i0, var3727=org.hibernate.boot.MappingException, var3210=$r17, var2383=java.util.Locale, var3601=$r11, var2967=$r10, var2691=org.hibernate.boot.model.source.spi.AttributeRole, var677=$r12, var647=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var1217=$r13, var1377=$r15, var674=org.hibernate.boot.jaxb.Origin, var2252=$r14, var1651=java.lang.Throwable, var355=$r20}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl=var3612, r0=var3497, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1527, r2=var3355, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var2894, r7=var503, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType=var941, r4=var1986, r1=var3304, null_type=var267, java.lang.Object=var679, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1=var3268, $r16=var3354, java.util.List=var578, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var316, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var387, r5=var3810, $i0=var1845, org.hibernate.boot.MappingException=var3727, $r17=var3210, java.util.Locale=var2383, $r11=var3601, $r10=var2967, org.hibernate.boot.model.source.spi.AttributeRole=var2691, $r12=var677, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var647, $r13=var1217, $r15=var1377, org.hibernate.boot.jaxb.Origin=var674, $r14=var2252, java.lang.Throwable=var1651, $r20=var355}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl;	r2 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl;	r4 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType;	r1 := @parameter3: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: java.lang.String cascade> = r1;	$r16 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1;	specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType)>(r0, r4);	r5 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r2, null, $r16);	$i0 = interfaceinvoke r5.<java.util.List: int size()>();	if $i0 >= 2 goto $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2;	$r17 = new org.hibernate.boot.MappingException;	$r11 = <java.util.Locale: java.util.Locale ENGLISH>;	$r10 = newarray (java.lang.Object)[1];	$r12 = virtualinvoke r7.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r10[0] = $r13;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r11, "<many-to-any /> mapping [%s] needs to specify 2 or more columns", $r10);	$r14 = virtualinvoke r2.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r17.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r15, $r14);	$r20 = (java.lang.Throwable) $r17;	throw $r20
;block_num 2