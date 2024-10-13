(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort var2137 0)
(declare-sort var2445 0)
(declare-sort var2235 0)
(declare-sort var3334 0)
(declare-sort var3821 0)
(declare-sort var521 0)
(declare-sort var1636 0)
(declare-sort var472 0)
(declare-sort var3827 0)
(declare-sort var1971 0)
(declare-sort var642 0)
(declare-sort var407 0)
(declare-sort var1567 0)
(declare-sort var3685 0)
(declare-sort var2533 0)
(declare-sort var3596 0)
(declare-sort var3259 0)
(declare-sort var3565 0)
(declare-sort var2439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2445_access$500/-306506186 () var2137)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityBinding/-208633991 (var3392) var2235)
(declare-fun getEntityName/-2043384209 (var2235) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var3334-init () (Array Int var3334))
(declare-fun var2137_debugf/-271813639 (var2137 String (Array Int var3334)) void)
(declare-fun var3821-init () var3821)
(declare-fun <init>/-325640736 (var3821) void)
(declare-fun var521-init () var521)
(declare-fun <init>/-1179020815 (var521) void)
(declare-fun getTable/659547400 (var2235) var1636)
(declare-fun setTable/-2093729080 (var472 var1636) void)
(declare-fun cast-from-var521-to-var472 (var521) var472)
(declare-fun attributeBindings/-208633991 (var3392) var3827)
(declare-fun var3827_iterator/-912451715 (var3827) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun mappingDocument/-208633991 (var3392) var1971)
(declare-fun getBuildingOptions/-1714850109 (var1971) var642)
(declare-fun var642_getImplicitNamingStrategy/571774039 (var642) var407)
(declare-fun var1567-init () var1567)
(declare-fun <init>/142656188 (var1567 var3392 var3827 var521) void)
(declare-fun cast-from-var3821-to-var3827 (var3821) var3827)
(declare-fun var407_determineUniqueKeyName/-1300452874 (var407 var2533) var3685)
(declare-fun cast-from-var1567-to-var2533 (var1567) var2533)
(declare-fun getMetadataCollector/1898057277 (var1971) var3596)
(declare-fun var3565_getDatabase/193995574 (var3565) var3259)
(declare-fun cast-from-var3596-to-var3565 (var3596) var3565)
(declare-fun getDialect/-2123628548 (var3259) var2439)
(declare-fun render/-1870218016 (var3685 var2439) String)
(declare-fun setName/-569631204 (var472 String) void)
(declare-fun addUniqueKey/350400748 (var1636 var521) var521)
(declare-const null-var3392 var3392)
(declare-const var365 var3392) ; Statement: r1 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl 
(assert (not (= var365 null-var3392)))
(define-const var2700 var2137 var2445_access$500/-306506186) ; Statement: $r8 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.internal.CoreMessageLogger access$500()>() 
(define-const var2431 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2431)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2431!1 String)
(assert (= var2431!1 ""))
(assert true)
(define-const var3710 String (append/672562846 var2431!1 "Binding natural-id UniqueKey for entity : ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Binding natural-id UniqueKey for entity : ") 
(declare-const var2431!2 String)
(assert (= var2431!2 (str.++ var2431!1 "Binding natural-id UniqueKey for entity : ")))
(define-const var2924 var2235 (entityBinding/-208633991 var365)) ; Statement: $r2 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding> 
(assert true)
(define-const var1075 String (getEntityName/-2043384209 var2924)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var440 String (append/672562846 var3710 var1075)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3710!1 String)
(assert (= var3710!1 (str.++ var3710 var1075)))
(assert true)
(define-const var3059 String (toString/-2075883882 var440)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2753 (Array Int var3334) arr-var3334-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
;(assert (var2137_debugf/-271813639 var2700 var3059 var2753)) ; Statement: interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object[])>($r7, $r6) 

(declare-const var2700!1 var2137)
(declare-const var3059!1 String)
(declare-const var2753!1 (Array Int var3334))
(define-const var1737 var3821 var3821-init) ; Statement: $r9 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1737)) ; Statement: specialinvoke $r9.<java.util.ArrayList: void <init>()>() 

(declare-const var1737!1 var3821)
(define-const var2800 var521 var521-init) ; Statement: $r10 = new org.hibernate.mapping.UniqueKey 
(assert true)
;(assert (<init>/-1179020815 var2800)) ; Statement: specialinvoke $r10.<org.hibernate.mapping.UniqueKey: void <init>()>() 

(declare-const var2800!1 var521)
(define-const var3555 var2235 (entityBinding/-208633991 var365)) ; Statement: $r11 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding> 
(assert true)
(define-const var2949 var1636 (getTable/659547400 var3555)) ; Statement: $r12 = virtualinvoke $r11.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (setTable/-2093729080 (cast-from-var521-to-var472 var2800!1) var2949)) ; Statement: virtualinvoke $r10.<org.hibernate.mapping.UniqueKey: void setTable(org.hibernate.mapping.Table)>($r12) 

(declare-const var2800!2 var521)
(declare-const var2949!1 var1636)
(define-const var1614 var3827 (attributeBindings/-208633991 var365)) ; Statement: $r13 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: java.util.List attributeBindings> 
(define-const var3236 Iterator (var3827_iterator/-912451715 var1614)) ; Statement: r37 = interfaceinvoke $r13.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2414 Bool (Iterator_hasNext/-1669924200 var3236)) ; Statement: $z0 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r14 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert (= (ite var2414 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3318 var1971 (mappingDocument/-208633991 var365)) ; Statement: $r14 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert true)
(define-const var3612 var642 (getBuildingOptions/-1714850109 var3318)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.MetadataBuildingOptions getBuildingOptions()>() 
(define-const var3052 var407 (var642_getImplicitNamingStrategy/571774039 var3612)) ; Statement: $r17 = interfaceinvoke $r15.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.model.naming.ImplicitNamingStrategy getImplicitNamingStrategy()>() 
(define-const var2952 var1567 var1567-init) ; Statement: $r16 = new org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1 
(assert true)
;(assert (<init>/142656188 var2952 var365 (cast-from-var3821-to-var3827 var1737!1) var2800!2)) ; Statement: specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl,java.util.List,org.hibernate.mapping.UniqueKey)>(r1, $r9, $r10) 

(declare-const var2952!1 var1567)
(declare-const var365!1 var3392)
(declare-const var1737!2 var3821)
(declare-const var2800!3 var521)
(define-const var1475 var3685 (var407_determineUniqueKeyName/-1300452874 var3052 (cast-from-var1567-to-var2533 var2952!1))) ; Statement: r38 = interfaceinvoke $r17.<org.hibernate.boot.model.naming.ImplicitNamingStrategy: org.hibernate.boot.model.naming.Identifier determineUniqueKeyName(org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource)>($r16) 
(define-const var3706 var1971 (mappingDocument/-208633991 var365!1)) ; Statement: $r18 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert true)
(define-const var111 var3596 (getMetadataCollector/1898057277 var3706)) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var508 var3259 (var3565_getDatabase/193995574 (cast-from-var3596-to-var3565 var111))) ; Statement: $r20 = interfaceinvoke $r19.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>() 
(assert true)
(define-const var2896 var2439 (getDialect/-2123628548 var508)) ; Statement: $r21 = virtualinvoke $r20.<org.hibernate.boot.model.relational.Database: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var2308 String (render/-1870218016 var1475 var2896)) ; Statement: $r22 = virtualinvoke r38.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r21) 
(assert true)
;(assert (setName/-569631204 (cast-from-var521-to-var472 var2800!3) var2308)) ; Statement: virtualinvoke $r10.<org.hibernate.mapping.UniqueKey: void setName(java.lang.String)>($r22) 

(declare-const var2800!4 var521)
(declare-const var2308!1 String)
(define-const var448 var2235 (entityBinding/-208633991 var365!1)) ; Statement: $r23 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding> 
(assert true)
(define-const var2028 var1636 (getTable/659547400 var448)) ; Statement: $r24 = virtualinvoke $r23.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (addUniqueKey/350400748 var2028 var2800!4)) ; Statement: virtualinvoke $r24.<org.hibernate.mapping.Table: org.hibernate.mapping.UniqueKey addUniqueKey(org.hibernate.mapping.UniqueKey)>($r10) 

(declare-const var2028!1 var1636)
(declare-const var2800!5 var521)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2445_access$500/-306506186=([], org.hibernate.internal.CoreMessageLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityBinding/-208633991=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl], org.hibernate.mapping.PersistentClass), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var3334-init=([], java.lang.Object[]), var2137_debugf/-271813639=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object[]], void), var3821-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var521-init=([], org.hibernate.mapping.UniqueKey), <init>/-1179020815=([org.hibernate.mapping.UniqueKey], void), getTable/659547400=([org.hibernate.mapping.PersistentClass], org.hibernate.mapping.Table), setTable/-2093729080=([org.hibernate.mapping.Constraint, org.hibernate.mapping.Table], void), cast-from-var521-to-var472=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), attributeBindings/-208633991=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl], java.util.List), var3827_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), mappingDocument/-208633991=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl], org.hibernate.boot.model.source.internal.hbm.MappingDocument), getBuildingOptions/-1714850109=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.MetadataBuildingOptions), var642_getImplicitNamingStrategy/571774039=([org.hibernate.boot.spi.MetadataBuildingOptions], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var1567-init=([], org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1), <init>/142656188=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1, org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl, java.util.List, org.hibernate.mapping.UniqueKey], void), cast-from-var3821-to-var3827=([java.util.ArrayList], java.util.List), var407_determineUniqueKeyName/-1300452874=([org.hibernate.boot.model.naming.ImplicitNamingStrategy, org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource], org.hibernate.boot.model.naming.Identifier), cast-from-var1567-to-var2533=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1], org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var3565_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), cast-from-var3596-to-var3565=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), getDialect/-2123628548=([org.hibernate.boot.model.relational.Database], org.hibernate.dialect.Dialect), render/-1870218016=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), setName/-569631204=([org.hibernate.mapping.Constraint, java.lang.String], void), addUniqueKey/350400748=([org.hibernate.mapping.Table, org.hibernate.mapping.UniqueKey], org.hibernate.mapping.UniqueKey)}
; {var3392=org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl, var365=r1, var2137=org.hibernate.internal.CoreMessageLogger, var2445=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var2700=$r8, var2431=$r0, var3710=$r4, var2235=org.hibernate.mapping.PersistentClass, var2924=$r2, var1075=$r3, var440=$r5, var3059=$r7, var3334=java.lang.Object, var2753=$r6, var3821=java.util.ArrayList, var1737=$r9, var521=org.hibernate.mapping.UniqueKey, var2800=$r10, var3555=$r11, var1636=org.hibernate.mapping.Table, var2949=$r12, var472=org.hibernate.mapping.Constraint, var3827=java.util.List, var1614=$r13, var3236=r37, var2414=$z0, var1971=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3318=$r14, var642=org.hibernate.boot.spi.MetadataBuildingOptions, var3612=$r15, var407=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var3052=$r17, var1567=org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1, var2952=$r16, var3685=org.hibernate.boot.model.naming.Identifier, var2533=org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource, var1475=r38, var3706=$r18, var3596=org.hibernate.boot.spi.InFlightMetadataCollector, var111=$r19, var3259=org.hibernate.boot.model.relational.Database, var3565=org.hibernate.boot.Metadata, var508=$r20, var2439=org.hibernate.dialect.Dialect, var2896=$r21, var2308=$r22, var448=$r23, var2028=$r24}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl=var3392, r1=var365, org.hibernate.internal.CoreMessageLogger=var2137, org.hibernate.boot.model.source.internal.hbm.ModelBinder=var2445, $r8=var2700, $r0=var2431, $r4=var3710, org.hibernate.mapping.PersistentClass=var2235, $r2=var2924, $r3=var1075, $r5=var440, $r7=var3059, java.lang.Object=var3334, $r6=var2753, java.util.ArrayList=var3821, $r9=var1737, org.hibernate.mapping.UniqueKey=var521, $r10=var2800, $r11=var3555, org.hibernate.mapping.Table=var1636, $r12=var2949, org.hibernate.mapping.Constraint=var472, java.util.List=var3827, $r13=var1614, r37=var3236, $z0=var2414, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1971, $r14=var3318, org.hibernate.boot.spi.MetadataBuildingOptions=var642, $r15=var3612, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var407, $r17=var3052, org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1=var1567, $r16=var2952, org.hibernate.boot.model.naming.Identifier=var3685, org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource=var2533, r38=var1475, $r18=var3706, org.hibernate.boot.spi.InFlightMetadataCollector=var3596, $r19=var111, org.hibernate.boot.model.relational.Database=var3259, org.hibernate.boot.Metadata=var3565, $r20=var508, org.hibernate.dialect.Dialect=var2439, $r21=var2896, $r22=var2308, $r23=var448, $r24=var2028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl;	$r8 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.internal.CoreMessageLogger access$500()>();	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Binding natural-id UniqueKey for entity : ");	$r2 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding>;	$r3 = virtualinvoke $r2.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[0];	interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object[])>($r7, $r6);	$r9 = new java.util.ArrayList;	specialinvoke $r9.<java.util.ArrayList: void <init>()>();	$r10 = new org.hibernate.mapping.UniqueKey;	specialinvoke $r10.<org.hibernate.mapping.UniqueKey: void <init>()>();	$r11 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding>;	$r12 = virtualinvoke $r11.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Table getTable()>();	virtualinvoke $r10.<org.hibernate.mapping.UniqueKey: void setTable(org.hibernate.mapping.Table)>($r12);	$r13 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: java.util.List attributeBindings>;	r37 = interfaceinvoke $r13.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r14 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r14 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.MetadataBuildingOptions getBuildingOptions()>();	$r17 = interfaceinvoke $r15.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.model.naming.ImplicitNamingStrategy getImplicitNamingStrategy()>();	$r16 = new org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1;	specialinvoke $r16.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl,java.util.List,org.hibernate.mapping.UniqueKey)>(r1, $r9, $r10);	r38 = interfaceinvoke $r17.<org.hibernate.boot.model.naming.ImplicitNamingStrategy: org.hibernate.boot.model.naming.Identifier determineUniqueKeyName(org.hibernate.boot.model.naming.ImplicitUniqueKeyNameSource)>($r16);	$r18 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r20 = interfaceinvoke $r19.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>();	$r21 = virtualinvoke $r20.<org.hibernate.boot.model.relational.Database: org.hibernate.dialect.Dialect getDialect()>();	$r22 = virtualinvoke r38.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r21);	virtualinvoke $r10.<org.hibernate.mapping.UniqueKey: void setName(java.lang.String)>($r22);	$r23 = r1.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$NaturalIdUniqueKeyBinderImpl: org.hibernate.mapping.PersistentClass entityBinding>;	$r24 = virtualinvoke $r23.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Table getTable()>();	virtualinvoke $r24.<org.hibernate.mapping.Table: org.hibernate.mapping.UniqueKey addUniqueKey(org.hibernate.mapping.UniqueKey)>($r10);	return
;block_num 3