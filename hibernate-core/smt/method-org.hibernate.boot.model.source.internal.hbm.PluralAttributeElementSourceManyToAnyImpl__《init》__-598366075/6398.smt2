(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var36 0)
(declare-sort var896 0)
(declare-sort var1389 0)
(declare-sort var2806 0)
(declare-sort var2563 0)
(declare-sort var3355 0)
(declare-sort var682 0)
(declare-sort var760 0)
(declare-sort var2824 0)
(declare-sort var2848 0)
(declare-sort var256 0)
(declare-sort var2368 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2563) void)
(declare-fun cast-from-var1904-to-var2563 (var1904) var2563)
(declare-fun cascade/-1918847809 (var1904) String)
(declare-fun var3355-init () var3355)
(declare-fun <init>/-1202041948 (var3355 var1904 var1389) void)
(declare-fun var760_buildValueSources/1952860664 (var36 String var2824) var682)
(declare-fun cast-from-var3355-to-var2824 (var3355) var2824)
(declare-fun var682_size/-959786421 (var682) Int)
(declare-fun var2848-init () var2848)
(declare-fun <init>/-1434576745 (var2848 var1904 var1389 var682 var36 var896) void)
(declare-fun cast-from-var2848-to-var256 (var2848) var256)
(declare-fun discriminatorSource/-1918847809 (var1904) var256)
(declare-fun var2368-init () var2368)
(declare-fun <init>/-1680072858 (var2368 var1904 var1389 var682 var896 var36) void)
(declare-fun cast-from-var2368-to-var3834 (var2368) var3834)
(declare-fun keySource/-1918847809 (var1904) var3834)
(declare-const null-var1904 var1904)
(declare-const null-var36 var36)
(declare-const null-var896 var896)
(declare-const null-var1389 var1389)
(declare-const null-String String)
(declare-const var95 var1904) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl 
(assert (not (= var95 null-var1904)))
(declare-const var2501 var36) ; Statement: r2 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2501 null-var36)))
(declare-const var2894 var896) ; Statement: r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl 
(assert (not (= var2894 null-var896)))
(declare-const var2557 var1389) ; Statement: r4 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType 
(assert (not (= var2557 null-var1389)))
(declare-const var1648 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1648 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1904-to-var2563 var95))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var95!1 var1904)
(declare-const var95!2 var1904)
(assert (not (= var95!2 null-var1904)))
(assert (= (cascade/-1918847809 var95!2) var1648)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: java.lang.String cascade> = r1 
(define-const var2627 var3355 var3355-init) ; Statement: $r16 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1 
(assert true)
;(assert (<init>/-1202041948 var2627 var95!2 var2557)) ; Statement: specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType)>(r0, r4) 

(declare-const var2627!1 var3355)
(declare-const var95!3 var1904)
(declare-const var2557!1 var1389)
(define-const var1992 var682 (var760_buildValueSources/1952860664 var2501 null-String (cast-from-var3355-to-var2824 var2627!1))) ; Statement: r5 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r2, null, $r16) 
(define-const var3600 Int (var682_size/-959786421 var1992)) ; Statement: $i0 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2 
(assert (>= var3600 2)) ; Cond: $i0 >= 2 
(define-const var2499 var2848 var2848-init) ; Statement: $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2 
(assert true)
;(assert (<init>/-1434576745 var2499 var95!3 var2557!1 var1992 var2501 var2894)) ; Statement: specialinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl)>(r0, r4, r5, r2, r7) 

(declare-const var2499!1 var2848)
(declare-const var95!4 var1904)
(declare-const var2557!2 var1389)
(declare-const var1992!1 var682)
(declare-const var2501!1 var36)
(declare-const var2894!1 var896)
(declare-const var95!5 var1904)
(assert (not (= var95!5 null-var1904)))
(assert (= (discriminatorSource/-1918847809 var95!5) (cast-from-var2848-to-var256 var2499!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r18 
(define-const var925 var2368 var2368-init) ; Statement: $r19 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3 
(assert true)
;(assert (<init>/-1680072858 var925 var95!5 var2557!2 var1992!1 var2894!1 var2501!1)) ; Statement: specialinvoke $r19.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType,java.util.List,org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r4, r5, r7, r2) 

(declare-const var925!1 var2368)
(declare-const var95!6 var1904)
(declare-const var2557!3 var1389)
(declare-const var1992!2 var682)
(declare-const var2894!2 var896)
(declare-const var2501!2 var36)
(declare-const var95!7 var1904)
(assert (not (= var95!7 null-var1904)))
(assert (= (keySource/-1918847809 var95!7) (cast-from-var2368-to-var3834 var925!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1904-to-var2563=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], java.lang.Object), cascade/-1918847809=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], java.lang.String), var3355-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1), <init>/-1202041948=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType], void), var760_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var3355-to-var2824=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var682_size/-959786421=([java.util.List], int), var2848-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2), <init>/-1434576745=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType, java.util.List, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl], void), cast-from-var2848-to-var256=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), discriminatorSource/-1918847809=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), var2368-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3), <init>/-1680072858=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType, java.util.List, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2368-to-var3834=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3], org.hibernate.boot.model.source.spi.AnyKeySource), keySource/-1918847809=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl], org.hibernate.boot.model.source.spi.AnyKeySource)}
; {var1904=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl, var95=r0, var36=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2501=r2, var896=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var2894=r7, var1389=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType, var2557=r4, var1648=r1, var2806=null_type, var2563=java.lang.Object, var3355=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1, var2627=$r16, var682=java.util.List, var760=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2824=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var1992=r5, var3600=$i0, var2848=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2, var2499=$r18, var256=org.hibernate.boot.model.source.spi.AnyDiscriminatorSource, var2368=org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3, var925=$r19, var3834=org.hibernate.boot.model.source.spi.AnyKeySource}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl=var1904, r0=var95, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var36, r2=var2501, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var896, r7=var2894, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType=var1389, r4=var2557, r1=var1648, null_type=var2806, java.lang.Object=var2563, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1=var3355, $r16=var2627, java.util.List=var682, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var760, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2824, r5=var1992, $i0=var3600, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2=var2848, $r18=var2499, org.hibernate.boot.model.source.spi.AnyDiscriminatorSource=var256, org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3=var2368, $r19=var925, org.hibernate.boot.model.source.spi.AnyKeySource=var3834}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl;	r2 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl;	r4 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType;	r1 := @parameter3: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: java.lang.String cascade> = r1;	$r16 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1;	specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType)>(r0, r4);	r5 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r2, null, $r16);	$i0 = interfaceinvoke r5.<java.util.List: int size()>();	if $i0 >= 2 goto $r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2;	$r18 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2;	specialinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl)>(r0, r4, r5, r2, r7);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r18;	$r19 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3;	specialinvoke $r19.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToAnyCollectionElementType,java.util.List,org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r4, r5, r7, r2);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeElementSourceManyToAnyImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r19;	return
;block_num 2