(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var60 0)
(declare-sort var2022 0)
(declare-sort var414 0)
(declare-sort var3960 0)
(declare-sort var3692 0)
(declare-sort var2931 0)
(declare-sort var3882 0)
(declare-sort var2989 0)
(declare-sort var3871 0)
(declare-sort var287 0)
(declare-sort var1731 0)
(declare-sort var2836 0)
(declare-sort var1757 0)
(declare-sort var1795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3692) void)
(declare-fun cast-from-var60-to-var3692 (var60) var3692)
(declare-fun var2931-init () var2931)
(declare-fun <init>/-785526017 (var2931 var60 var3960) void)
(declare-fun var2989_buildValueSources/1952860664 (var2022 String var287) var3882)
(declare-fun cast-from-var2931-to-var287 (var2931) var287)
(declare-fun var3882_size/-959786421 (var3882) Int)
(declare-fun var1731-init () var1731)
(declare-fun <init>/-1882680956 (var1731 var60 var3960 var3882 var414 var2022) void)
(declare-fun cast-from-var1731-to-var2836 (var1731) var2836)
(declare-fun discriminatorSource/-1881319994 (var60) var2836)
(declare-fun var1757-init () var1757)
(declare-fun <init>/-1538117597 (var1757 var60 var3960 var3882 var414 var2022) void)
(declare-fun cast-from-var1757-to-var1795 (var1757) var1795)
(declare-fun keySource/-1881319994 (var60) var1795)
(declare-const null-var60 var60)
(declare-const null-var2022 var2022)
(declare-const null-var414 var414)
(declare-const null-var3960 var3960)
(declare-const null-String String)
(declare-const var3071 var60) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl 
(assert (not (= var3071 null-var60)))
(declare-const var2388 var2022) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2388 null-var2022)))
(declare-const var1760 var414) ; Statement: r6 := @parameter1: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl 
(assert (not (= var1760 null-var414)))
(declare-const var1444 var3960) ; Statement: r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType 
(assert (not (= var1444 null-var3960)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var60-to-var3692 var3071))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3071!1 var60)
(define-const var1864 var2931 var2931-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2 
(assert true)
;(assert (<init>/-785526017 var1864 var3071!1 var1444)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType)>(r0, r3) 

(declare-const var1864!1 var2931)
(declare-const var3071!2 var60)
(declare-const var1444!1 var3960)
(define-const var1421 var3882 (var2989_buildValueSources/1952860664 var2388 null-String (cast-from-var2931-to-var287 var1864!1))) ; Statement: r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r15) 
(define-const var684 Int (var3882_size/-959786421 var1421)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3 
(assert (>= var684 2)) ; Cond: $i0 >= 2 
(define-const var35 var1731 var1731-init) ; Statement: $r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3 
(assert true)
;(assert (<init>/-1882680956 var35 var3071!2 var1444!1 var1421 var1760 var2388)) ; Statement: specialinvoke $r17.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType,java.util.List,org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r4, r6, r1) 

(declare-const var35!1 var1731)
(declare-const var3071!3 var60)
(declare-const var1444!2 var3960)
(declare-const var1421!1 var3882)
(declare-const var1760!1 var414)
(declare-const var2388!1 var2022)
(declare-const var3071!4 var60)
(assert (not (= var3071!4 null-var60)))
(assert (= (discriminatorSource/-1881319994 var3071!4) (cast-from-var1731-to-var2836 var35!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r17 
(define-const var0 var1757 var1757-init) ; Statement: $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4 
(assert true)
;(assert (<init>/-1538117597 var0 var3071!4 var1444!2 var1421!1 var1760!1 var2388!1)) ; Statement: specialinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType,java.util.List,org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r4, r6, r1) 

(declare-const var0!1 var1757)
(declare-const var3071!5 var60)
(declare-const var1444!3 var3960)
(declare-const var1421!2 var3882)
(declare-const var1760!2 var414)
(declare-const var2388!2 var2022)
(declare-const var3071!6 var60)
(assert (not (= var3071!6 null-var60)))
(assert (= (keySource/-1881319994 var3071!6) (cast-from-var1757-to-var1795 var0!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r18 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var60-to-var3692=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl], java.lang.Object), var2931-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2), <init>/-785526017=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType], void), var2989_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var2931-to-var287=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var3882_size/-959786421=([java.util.List], int), var1731-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3), <init>/-1882680956=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType, java.util.List, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var1731-to-var2836=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), discriminatorSource/-1881319994=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), var1757-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4), <init>/-1538117597=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType, java.util.List, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var1757-to-var1795=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4], org.hibernate.boot.model.source.spi.AnyKeySource), keySource/-1881319994=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl], org.hibernate.boot.model.source.spi.AnyKeySource)}
; {var60=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl, var3071=r0, var2022=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2388=r1, var414=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl, var1760=r6, var3960=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType, var1444=r3, var3692=java.lang.Object, var2931=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2, var1864=$r15, var3882=java.util.List, var2989=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var3871=null_type, var287=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var1421=r4, var684=$i0, var1731=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3, var35=$r17, var2836=org.hibernate.boot.model.source.spi.AnyDiscriminatorSource, var1757=org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4, var0=$r18, var1795=org.hibernate.boot.model.source.spi.AnyKeySource}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl=var60, r0=var3071, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2022, r1=var2388, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl=var414, r6=var1760, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType=var3960, r3=var1444, java.lang.Object=var3692, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2=var2931, $r15=var1864, java.util.List=var3882, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var2989, null_type=var3871, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var287, r4=var1421, $i0=var684, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3=var1731, $r17=var35, org.hibernate.boot.model.source.spi.AnyDiscriminatorSource=var2836, org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4=var1757, $r18=var0, org.hibernate.boot.model.source.spi.AnyKeySource=var1795}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r6 := @parameter1: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl;	r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType)>(r0, r3);	r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r15);	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	if $i0 >= 2 goto $r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3;	$r17 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3;	specialinvoke $r17.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType,java.util.List,org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r4, r6, r1);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r17;	$r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4;	specialinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl$4: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIndexManyToAnyType,java.util.List,org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceMapImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r4, r6, r1);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeMapKeyManyToAnySourceImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r18;	return
;block_num 2