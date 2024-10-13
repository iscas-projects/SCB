(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1595 0)
(declare-sort var3972 0)
(declare-sort var2224 0)
(declare-sort var3752 0)
(declare-sort var3725 0)
(declare-sort var1488 0)
(declare-sort var439 0)
(declare-sort var2520 0)
(declare-sort var2460 0)
(declare-sort var359 0)
(declare-sort var1691 0)
(declare-sort var1231 0)
(declare-sort var2033 0)
(declare-sort var3617 0)
(declare-sort var2475 0)
(declare-sort var3300 0)
(declare-sort var176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierSource/596288874 (var2224) var1488)
(declare-fun var1488_getNature/-1823460576 (var1488) var439)
(declare-fun ordinal/-291641772 (var2520) Int)
(declare-fun cast-from-var439-to-var2520 (var439) var2520)
(declare-fun var2460-init () var2460)
(declare-fun arr-var1691-init () (Array Int var1691))
(declare-fun cast-from-var439-to-var1691 (var439) var1691)
(declare-fun getRoot/-1773637172 (var2224) var1231)
(declare-fun getEntityNamingSource/1677741763 (var3617) var2033)
(declare-fun cast-from-var1231-to-var3617 (var1231) var3617)
(declare-fun var2475_getEntityName/-119580260 (var2475) String)
(declare-fun cast-from-var2033-to-var2475 (var2033) var2475)
(declare-fun cast-from-String-to-var1691 (String) var1691)
(declare-fun String_format/-647569892 (var359 String (Array Int var1691)) String)
(declare-fun getOrigin/1285793805 (var3972) var3300)
(declare-fun <init>/235758574 (var2460 String var3300) void)
(declare-fun cast-from-var2460-to-var176 (var2460) var176)
(declare-const null-var1595 var1595)
(declare-const null-var3972 var3972)
(declare-const null-var2224 var2224)
(declare-const null-var3752 var3752)
(declare-const var3725-$SwitchMap$org$hibernate$id$EntityIdentifierNature (Array Int Int))
(declare-const var359-ENGLISH var359)
(declare-const null-__Array__Int__var1691__ (Array Int var1691))
(declare-const var1060 var1595) ; Statement: r4 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1060 null-var1595)))
(declare-const var2385 var3972) ; Statement: r5 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2385 null-var3972)))
(declare-const var1515 var2224) ; Statement: r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl 
(assert (not (= var1515 null-var2224)))
(declare-const var1976 var3752) ; Statement: r6 := @parameter2: org.hibernate.mapping.RootClass 
(assert (not (= var1976 null-var3752)))
(define-const var2286 (Array Int Int) var3725-$SwitchMap$org$hibernate$id$EntityIdentifierNature) ; Statement: $r1 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$id$EntityIdentifierNature> 
(assert true)
(define-const var3879 var1488 (getIdentifierSource/596288874 var1515)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>() 
(define-const var1792 var439 (var1488_getNature/-1823460576 var3879)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.model.source.spi.IdentifierSource: org.hibernate.id.EntityIdentifierNature getNature()>() 
(assert true)
(define-const var1719 Int (ordinal/-291641772 (cast-from-var439-to-var2520 var1792))) ; Statement: $i0 = virtualinvoke $r3.<org.hibernate.id.EntityIdentifierNature: int ordinal()>() 
(define-const var2213 Int (select var2286 var1719)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     case 2: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindAggregatedCompositeEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     case 3: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindNonAggregatedCompositeEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     default: goto $r17 = new org.hibernate.boot.MappingException; } 
(assert (and (not (= var2213 3)) (and (not (= var2213 2)) (and (not (= var2213 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2386 var2460 var2460-init) ; Statement: $r17 = new org.hibernate.boot.MappingException 
(define-const var2175 var359 var359-ENGLISH) ; Statement: $r9 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2154 (Array Int var1691) arr-var1691-init) ; Statement: $r8 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var844 var1488 (getIdentifierSource/596288874 var1515)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>() 
(define-const var3119 var439 (var1488_getNature/-1823460576 var844)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.IdentifierSource: org.hibernate.id.EntityIdentifierNature getNature()>() 
(declare-const var2154!1 (Array Int var1691))
(assert (not (= var2154!1 null-__Array__Int__var1691__)))
(assert (= (select var2154!1 0) (cast-from-var439-to-var1691 var3119))) ; Statement: $r8[0] = $r11 
(assert true)
(define-const var2914 var1231 (getRoot/-1773637172 var1515)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl getRoot()>() 
(assert true)
(define-const var2981 var2033 (getEntityNamingSource/1677741763 (cast-from-var1231-to-var3617 var2914))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var362 String (var2475_getEntityName/-119580260 (cast-from-var2033-to-var2475 var2981))) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(declare-const var2154!2 (Array Int var1691))
(assert (not (= var2154!2 null-__Array__Int__var1691__)))
(assert (= (select var2154!2 1) (cast-from-String-to-var1691 var362))) ; Statement: $r8[1] = $r14 
(define-const var2835 String (String_format/-647569892 var2175 "Unexpected entity identifier nature [%s] for entity %s" var2154!2)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unexpected entity identifier nature [%s] for entity %s", $r8) 
(assert true)
(define-const var3688 var3300 (getOrigin/1285793805 var2385)) ; Statement: $r15 = virtualinvoke r5.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2386 var2835 var3688)) ; Statement: specialinvoke $r17.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r16, $r15) 

(declare-const var2386!1 var2460)
(declare-const var2835!1 String)
(declare-const var3688!1 var3300)
(define-const var2986 var176 (cast-from-var2460-to-var176 var2386!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierSource/596288874=([org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl], org.hibernate.boot.model.source.spi.IdentifierSource), var1488_getNature/-1823460576=([org.hibernate.boot.model.source.spi.IdentifierSource], org.hibernate.id.EntityIdentifierNature), ordinal/-291641772=([java.lang.Enum], int), cast-from-var439-to-var2520=([org.hibernate.id.EntityIdentifierNature], java.lang.Enum), var2460-init=([], org.hibernate.boot.MappingException), arr-var1691-init=([], java.lang.Object[]), cast-from-var439-to-var1691=([org.hibernate.id.EntityIdentifierNature], java.lang.Object), getRoot/-1773637172=([org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl], org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl), getEntityNamingSource/1677741763=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var1231-to-var3617=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl), var2475_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var2033-to-var2475=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), cast-from-String-to-var1691=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var2460-to-var176=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1595=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1060=r4, var3972=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2385=r5, var2224=org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl, var1515=r0, var3752=org.hibernate.mapping.RootClass, var1976=r6, var3725=org.hibernate.boot.model.source.internal.hbm.ModelBinder$15, var2286=$r1, var1488=org.hibernate.boot.model.source.spi.IdentifierSource, var3879=$r2, var439=org.hibernate.id.EntityIdentifierNature, var1792=$r3, var2520=java.lang.Enum, var1719=$i0, var2213=$i1, var2460=org.hibernate.boot.MappingException, var2386=$r17, var359=java.util.Locale, var2175=$r9, var1691=java.lang.Object, var2154=$r8, var844=$r10, var3119=$r11, var1231=org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl, var2914=$r12, var2033=org.hibernate.boot.model.source.spi.EntityNamingSource, var3617=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var2981=$r13, var2475=org.hibernate.boot.model.naming.EntityNaming, var362=$r14, var2835=$r16, var3300=org.hibernate.boot.jaxb.Origin, var3688=$r15, var176=java.lang.Throwable, var2986=$r18}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var1595, r4=var1060, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3972, r5=var2385, org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl=var2224, r0=var1515, org.hibernate.mapping.RootClass=var3752, r6=var1976, org.hibernate.boot.model.source.internal.hbm.ModelBinder$15=var3725, $r1=var2286, org.hibernate.boot.model.source.spi.IdentifierSource=var1488, $r2=var3879, org.hibernate.id.EntityIdentifierNature=var439, $r3=var1792, java.lang.Enum=var2520, $i0=var1719, $i1=var2213, org.hibernate.boot.MappingException=var2460, $r17=var2386, java.util.Locale=var359, $r9=var2175, java.lang.Object=var1691, $r8=var2154, $r10=var844, $r11=var3119, org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl=var1231, $r12=var2914, org.hibernate.boot.model.source.spi.EntityNamingSource=var2033, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var3617, $r13=var2981, org.hibernate.boot.model.naming.EntityNaming=var2475, $r14=var362, $r16=var2835, org.hibernate.boot.jaxb.Origin=var3300, $r15=var3688, java.lang.Throwable=var176, $r18=var2986}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r5 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl;	r6 := @parameter2: org.hibernate.mapping.RootClass;	$r1 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$id$EntityIdentifierNature>;	$r2 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>();	$r3 = interfaceinvoke $r2.<org.hibernate.boot.model.source.spi.IdentifierSource: org.hibernate.id.EntityIdentifierNature getNature()>();	$i0 = virtualinvoke $r3.<org.hibernate.id.EntityIdentifierNature: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     case 2: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindAggregatedCompositeEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     case 3: goto specialinvoke r4.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindNonAggregatedCompositeEntityIdentifier(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl,org.hibernate.mapping.RootClass)>(r5, r0, r6);     default: goto $r17 = new org.hibernate.boot.MappingException; };	$r17 = new org.hibernate.boot.MappingException;	$r9 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = newarray (java.lang.Object)[2];	$r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>();	$r11 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.IdentifierSource: org.hibernate.id.EntityIdentifierNature getNature()>();	$r8[0] = $r11;	$r12 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl getRoot()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r14 = interfaceinvoke $r13.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r8[1] = $r14;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unexpected entity identifier nature [%s] for entity %s", $r8);	$r15 = virtualinvoke r5.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r17.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r16, $r15);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2