(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var915 0)
(declare-sort var2205 0)
(declare-sort var3548 0)
(declare-sort var1203 0)
(declare-sort var3792 0)
(declare-sort var992 0)
(declare-sort var1010 0)
(declare-sort var3467 0)
(declare-sort var2238 0)
(declare-sort var3562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun allColumnsNamed/470388295 (var1108) Bool)
(declare-fun mappingDocument/470388295 (var1108) var2205)
(declare-fun getMetadataCollector/1898057277 (var2205) var3548)
(declare-fun referencedEntityName/470388295 (var1108) String)
(declare-fun var3792_getEntityBinding/-1652541374 (var3792 String) var1203)
(declare-fun cast-from-var3548-to-var3792 (var3548) var3792)
(declare-fun var992-init () var992)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun manyToOneSource/470388295 (var1108) var1010)
(declare-fun var2238_getAttributeRole/-1958494126 (var2238) var3467)
(declare-fun cast-from-var1010-to-var2238 (var1010) var2238)
(declare-fun getFullPath/-1971906419 (var3562) String)
(declare-fun cast-from-var3467-to-var3562 (var3467) var3562)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var992 String) void)
(declare-const null-var1108 var1108)
(declare-const null-var915 var915)
(declare-const null-var1203 var1203)
(declare-const var3736 var1108) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder 
(assert (not (= var3736 null-var1108)))
(declare-const var2812 var915) ; Statement: r32 := @parameter0: java.util.Map 
(assert (not (= var2812 null-var915)))
(define-const var3811 Bool (allColumnsNamed/470388295 var3736)) ; Statement: $z0 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: boolean allColumnsNamed> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert (= (ite var3811 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2011 var2205 (mappingDocument/470388295 var3736)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert true)
(define-const var2291 var3548 (getMetadataCollector/1898057277 var2011)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2909 String (referencedEntityName/470388295 var3736)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: java.lang.String referencedEntityName> 
(define-const var301 var1203 (var3792_getEntityBinding/-1652541374 (cast-from-var3548-to-var3792 var2291) var2909)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r2) 
 ; Statement: if r4 != null goto $r5 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.ModelBinder this$0> 
(assert (not (not (= var301 null-var1203)))) ; Negate: Cond: r4 != null  
(define-const var1862 var992 var992-init) ; Statement: $r13 = new org.hibernate.AssertionFailure 
(define-const var3177 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3177)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3177!1 String)
(assert (= var3177!1 ""))
(assert true)
(define-const var3733 String (append/672562846 var3177!1 "Unable to locate referenced entity mapping [")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate referenced entity mapping [") 
(declare-const var3177!2 String)
(assert (= var3177!2 (str.++ var3177!1 "Unable to locate referenced entity mapping [")))
(define-const var1661 String (referencedEntityName/470388295 var3736)) ; Statement: $r15 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: java.lang.String referencedEntityName> 
(assert true)
(define-const var3721 String (append/672562846 var3733 var1661)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3733!1 String)
(assert (= var3733!1 (str.++ var3733 var1661)))
(assert true)
(define-const var1859 String (append/672562846 var3721 "] in order to process many-to-one FK : ")) ; Statement: $r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] in order to process many-to-one FK : ") 
(declare-const var3721!1 String)
(assert (= var3721!1 (str.++ var3721 "] in order to process many-to-one FK : ")))
(define-const var1628 var1010 (manyToOneSource/470388295 var3736)) ; Statement: $r18 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne manyToOneSource> 
(define-const var3023 var3467 (var2238_getAttributeRole/-1958494126 (cast-from-var1010-to-var2238 var1628))) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3930 String (getFullPath/-1971906419 (cast-from-var3467-to-var3562 var3023))) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var3448 String (append/672562846 var1859 var3930)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1859!1 String)
(assert (= var1859!1 (str.++ var1859 var3930)))
(assert true)
(define-const var225 String (toString/-2075883882 var3448)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1862 var225)) ; Statement: specialinvoke $r13.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r23) 

(declare-const var1862!1 var992)
(declare-const var225!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {allColumnsNamed/470388295=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder], boolean), mappingDocument/470388295=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder], org.hibernate.boot.model.source.internal.hbm.MappingDocument), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), referencedEntityName/470388295=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder], java.lang.String), var3792_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), cast-from-var3548-to-var3792=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var992-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), manyToOneSource/470388295=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder], org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne), var2238_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var1010-to-var2238=([org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var3467-to-var3562=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1108=org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder, var3736=r0, var915=java.util.Map, var2812=r32, var3811=$z0, var2205=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2011=$r1, var3548=org.hibernate.boot.spi.InFlightMetadataCollector, var2291=$r3, var2909=$r2, var1203=org.hibernate.mapping.PersistentClass, var3792=org.hibernate.boot.Metadata, var301=r4, var992=org.hibernate.AssertionFailure, var1862=$r13, var3177=$r14, var3733=$r16, var1661=$r15, var3721=$r17, var1859=$r21, var1010=org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne, var1628=$r18, var3467=org.hibernate.boot.model.source.spi.AttributeRole, var2238=org.hibernate.boot.model.source.spi.AttributeSource, var3023=$r19, var3562=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3930=$r20, var3448=$r22, var225=$r23}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder=var1108, r0=var3736, java.util.Map=var915, r32=var2812, $z0=var3811, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2205, $r1=var2011, org.hibernate.boot.spi.InFlightMetadataCollector=var3548, $r3=var2291, $r2=var2909, org.hibernate.mapping.PersistentClass=var1203, org.hibernate.boot.Metadata=var3792, r4=var301, org.hibernate.AssertionFailure=var992, $r13=var1862, $r14=var3177, $r16=var3733, $r15=var1661, $r17=var3721, $r21=var1859, org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne=var1010, $r18=var1628, org.hibernate.boot.model.source.spi.AttributeRole=var3467, org.hibernate.boot.model.source.spi.AttributeSource=var2238, $r19=var3023, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var3562, $r20=var3930, $r22=var3448, $r23=var225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder;	r32 := @parameter0: java.util.Map;	$z0 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: boolean allColumnsNamed>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r3 = virtualinvoke $r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: java.lang.String referencedEntityName>;	r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r2);	if r4 != null goto $r5 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.internal.hbm.ModelBinder this$0>;	$r13 = new org.hibernate.AssertionFailure;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate referenced entity mapping [");	$r15 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: java.lang.String referencedEntityName>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] in order to process many-to-one FK : ");	$r18 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneColumnBinder: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne manyToOneSource>;	$r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r20 = virtualinvoke $r19.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r23);	throw $r13
;block_num 3