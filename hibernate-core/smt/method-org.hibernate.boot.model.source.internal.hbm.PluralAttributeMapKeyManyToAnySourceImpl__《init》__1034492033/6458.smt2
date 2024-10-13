(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2385 0)
(declare-sort var150 0)
(declare-sort var3816 0)
(declare-sort var3494 0)
(declare-sort var509 0)
(declare-sort var3971 0)
(declare-sort var2869 0)
(declare-sort var1325 0)
(declare-sort var1326 0)
(declare-sort var2850 0)
(declare-sort var658 0)
(declare-sort var1989 0)
(declare-sort var653 0)
(declare-sort var189 0)
(declare-sort var268 0)
(declare-sort var2203 0)
(declare-sort var1908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var509) void)
(declare-fun cast-from-var2385-to-var509 (var2385) var509)
(declare-fun var3971-init () var3971)
(declare-fun <init>/-785526017 (var3971 var2385 var3494) void)
(declare-fun var1325_buildValueSources/1952860664 (var150 String var2850) var2869)
(declare-fun cast-from-var3971-to-var2850 (var3971) var2850)
(declare-fun var2869_size/-959786421 (var2869) Int)
(declare-fun var658-init () var658)
(declare-fun arr-var509-init () (Array Int var509))
(declare-fun getAttributeRole/1285474362 (var189) var653)
(declare-fun cast-from-var3816-to-var189 (var3816) var189)
(declare-fun getFullPath/-1971906419 (var268) String)
(declare-fun cast-from-var653-to-var268 (var653) var268)
(declare-fun cast-from-String-to-var509 (String) var509)
(declare-fun String_format/-647569892 (var1989 String (Array Int var509)) String)
(declare-fun getOrigin/1285793805 (var150) var2203)
(declare-fun <init>/235758574 (var658 String var2203) void)
(declare-fun cast-from-var658-to-var1908 (var658) var1908)
(declare-const null-var2385 var2385)
(declare-const null-var150 var150)
(declare-const null-var3816 var3816)
(declare-const null-var3494 var3494)
(declare-const null-String String)
(declare-const var1989-ENGLISH var1989)
(declare-const null-__Array__Int__var509__ (Array Int var509))
(declare-const var2471 var2385) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl 
(assert (not (= var2471 null-var2385)))
(declare-const var1553 var150) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1553 null-var150)))
(declare-const var948 var3816) ; Statement: r6 := @parameter1: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl 
(assert (not (= var948 null-var3816)))
(declare-const var1185 var3494) ; Statement: r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType 
(assert (not (= var1185 null-var3494)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2385-to-var509 var2471))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2471!1 var2385)
(define-const var2093 var3971 var3971-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2 
(assert true)
;(assert (<init>/-785526017 var2093 var2471!1 var1185)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType)>(r0, r3) 

(declare-const var2093!1 var3971)
(declare-const var2471!2 var2385)
(declare-const var1185!1 var3494)
(define-const var3727 var2869 (var1325_buildValueSources/1952860664 var1553 null-String (cast-from-var3971-to-var2850 var2093!1))) ; Statement: r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r15) 
(define-const var1749 Int (var2869_size/-959786421 var3727)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3 
(assert (not (>= var1749 2))) ; Negate: Cond: $i0 >= 2  
(define-const var3192 var658 var658-init) ; Statement: $r16 = new org.hibernate.boot.MappingException 
(define-const var1604 var1989 var1989-ENGLISH) ; Statement: $r10 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3999 (Array Int var509) arr-var509-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1803 var653 (getAttributeRole/1285474362 (cast-from-var3816-to-var189 var948))) ; Statement: $r11 = virtualinvoke r6.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3884 String (getFullPath/-1971906419 (cast-from-var653-to-var268 var1803))) ; Statement: $r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var3999!1 (Array Int var509))
(assert (not (= var3999!1 null-__Array__Int__var509__)))
(assert (= (select var3999!1 0) (cast-from-String-to-var509 var3884))) ; Statement: $r9[0] = $r12 
(define-const var1957 String (String_format/-647569892 var1604 "<many-to-any /> mapping [%s] needs to specify 2 or more columns" var3999!1)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "<many-to-any /> mapping [%s] needs to specify 2 or more columns", $r9) 
(assert true)
(define-const var3899 var2203 (getOrigin/1285793805 var1553)) ; Statement: $r13 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var3192 var1957 var3899)) ; Statement: specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r14, $r13) 

(declare-const var3192!1 var658)
(declare-const var1957!1 String)
(declare-const var3899!1 var2203)
(define-const var1777 var1908 (cast-from-var658-to-var1908 var3192!1)) ; Statement: $r19 = (java.lang.Throwable) $r16 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2385-to-var509=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl], java.lang.Object), var3971-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2), <init>/-785526017=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType], void), var1325_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var3971-to-var2850=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var2869_size/-959786421=([java.util.List], int), var658-init=([], org.hibernate.boot.MappingException), arr-var509-init=([], java.lang.Object[]), getAttributeRole/1285474362=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var3816-to-var189=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl], org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var653-to-var268=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), cast-from-String-to-var509=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var658-to-var1908=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2385=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, var2471=r0, var150=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1553=r1, var3816=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl, var948=r6, var3494=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType, var1185=r3, var509=java.lang.Object, var3971=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2, var2093=$r15, var2869=java.util.List, var1325=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var1326=null_type, var2850=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3727=r4, var1749=$i0, var658=org.hibernate.boot.MappingException, var3192=$r16, var1989=java.util.Locale, var1604=$r10, var3999=$r9, var653=org.hibernate.boot.model.source.spi.AttributeRole, var189=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var1803=$r11, var268=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3884=$r12, var1957=$r14, var2203=org.hibernate.boot.jaxb.Origin, var3899=$r13, var1908=java.lang.Throwable, var1777=$r19}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl=var2385, r0=var2471, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var150, r1=var1553, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl=var3816, r6=var948, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType=var3494, r3=var1185, java.lang.Object=var509, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2=var3971, $r15=var2093, java.util.List=var2869, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var1325, null_type=var1326, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2850, r4=var3727, $i0=var1749, org.hibernate.boot.MappingException=var658, $r16=var3192, java.util.Locale=var1989, $r10=var1604, $r9=var3999, org.hibernate.boot.model.source.spi.AttributeRole=var653, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var189, $r11=var1803, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var268, $r12=var3884, $r14=var1957, org.hibernate.boot.jaxb.Origin=var2203, $r13=var3899, java.lang.Throwable=var1908, $r19=var1777}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r6 := @parameter1: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl;	r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType)>(r0, r3);	r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r15);	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	if $i0 >= 2 goto $r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3;	$r16 = new org.hibernate.boot.MappingException;	$r10 = <java.util.Locale: java.util.Locale ENGLISH>;	$r9 = newarray (java.lang.Object)[1];	$r11 = virtualinvoke r6.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r9[0] = $r12;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "<many-to-any /> mapping [%s] needs to specify 2 or more columns", $r9);	$r13 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r14, $r13);	$r19 = (java.lang.Throwable) $r16;	throw $r19
;block_num 2