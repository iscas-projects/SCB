(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1784 0)
(declare-sort var858 0)
(declare-sort var347 0)
(declare-sort var991 0)
(declare-sort var2035 0)
(declare-sort var2886 0)
(declare-sort var1331 0)
(declare-sort var1666 0)
(declare-sort var606 0)
(declare-sort var538 0)
(declare-sort var2943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var991_access$500/-306506186 () var347)
(declare-fun referencedEntityName/-767625807 (var1784) String)
(declare-fun referencedPropertyName/-767625807 (var1784) String)
(declare-fun sourceElementSynopsis/-767625807 (var1784) String)
(declare-fun var347_tracef/-314052667 (var347 String var2035 var2035 var2035) void)
(declare-fun cast-from-String-to-var2035 (String) var2035)
(declare-fun var1331_getEntityBinding/-1652541374 (var1331 String) var2886)
(declare-fun cast-from-var858-to-var1331 (var858) var1331)
(declare-fun var1666-init () var1666)
(declare-fun arr-var2035-init () (Array Int var2035))
(declare-fun String_format/-647569892 (var606 String (Array Int var2035)) String)
(declare-fun propertyRefOrigin/-767625807 (var1784) var538)
(declare-fun <init>/235758574 (var1666 String var538) void)
(declare-fun cast-from-var1666-to-var2943 (var1666) var2943)
(declare-const null-var1784 var1784)
(declare-const null-var858 var858)
(declare-const null-var2886 var2886)
(declare-const var606-ENGLISH var606)
(declare-const null-__Array__Int__var2035__ (Array Int var2035))
(declare-const var3667 var1784) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl 
(assert (not (= var3667 null-var1784)))
(declare-const var2638 var858) ; Statement: r5 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector 
(assert (not (= var2638 null-var858)))
(define-const var333 var347 var991_access$500/-306506186) ; Statement: $r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.internal.CoreMessageLogger access$500()>() 
(define-const var2321 String (referencedEntityName/-767625807 var3667)) ; Statement: $r3 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName> 
(define-const var3569 String (referencedPropertyName/-767625807 var3667)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedPropertyName> 
(define-const var1971 String (sourceElementSynopsis/-767625807 var3667)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String sourceElementSynopsis> 
;(assert (var347_tracef/-314052667 var333 "Performing delayed property-ref handling [%s, %s, %s]" (cast-from-String-to-var2035 var2321) (cast-from-String-to-var2035 var3569) (cast-from-String-to-var2035 var1971))) ; Statement: interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void tracef(java.lang.String,java.lang.Object,java.lang.Object,java.lang.Object)>("Performing delayed property-ref handling [%s, %s, %s]", $r3, $r2, $r1) 

(declare-const var333!1 var347)
(declare-const var646 String)
(declare-const var2321!1 String)
(declare-const var3569!1 String)
(declare-const var1971!1 String)
(define-const var280 String (referencedEntityName/-767625807 var3667)) ; Statement: $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName> 
(define-const var2050 var2886 (var1331_getEntityBinding/-1652541374 (cast-from-var858-to-var1331 var2638) var280)) ; Statement: r7 = interfaceinvoke r5.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r6) 
 ; Statement: if r7 != null goto $r8 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedPropertyName> 
(assert (not (not (= var2050 null-var2886)))) ; Negate: Cond: r7 != null  
(define-const var1097 var1666 var1666-init) ; Statement: $r27 = new org.hibernate.boot.MappingException 
(define-const var2290 var606 var606-ENGLISH) ; Statement: $r24 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3147 (Array Int var2035) arr-var2035-init) ; Statement: $r21 = newarray (java.lang.Object)[2] 
(define-const var2356 String (sourceElementSynopsis/-767625807 var3667)) ; Statement: $r22 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String sourceElementSynopsis> 
(declare-const var3147!1 (Array Int var2035))
(assert (not (= var3147!1 null-__Array__Int__var2035__)))
(assert (= (select var3147!1 0) (cast-from-String-to-var2035 var2356))) ; Statement: $r21[0] = $r22 
(define-const var1931 String (referencedEntityName/-767625807 var3667)) ; Statement: $r23 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName> 
(declare-const var3147!2 (Array Int var2035))
(assert (not (= var3147!2 null-__Array__Int__var2035__)))
(assert (= (select var3147!2 1) (cast-from-String-to-var2035 var1931))) ; Statement: $r21[1] = $r23 
(define-const var3901 String (String_format/-647569892 var2290 "property-ref [%s] referenced an unmapped entity [%s]" var3147!2)) ; Statement: $r26 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r24, "property-ref [%s] referenced an unmapped entity [%s]", $r21) 
(define-const var3525 var538 (propertyRefOrigin/-767625807 var3667)) ; Statement: $r25 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: org.hibernate.boot.jaxb.Origin propertyRefOrigin> 
(assert true)
;(assert (<init>/235758574 var1097 var3901 var3525)) ; Statement: specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r26, $r25) 

(declare-const var1097!1 var1666)
(declare-const var3901!1 String)
(declare-const var3525!1 var538)
(define-const var568 var2943 (cast-from-var1666-to-var2943 var1097!1)) ; Statement: $r29 = (java.lang.Throwable) $r27 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var991_access$500/-306506186=([], org.hibernate.internal.CoreMessageLogger), referencedEntityName/-767625807=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl], java.lang.String), referencedPropertyName/-767625807=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl], java.lang.String), sourceElementSynopsis/-767625807=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl], java.lang.String), var347_tracef/-314052667=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object, java.lang.Object, java.lang.Object], void), cast-from-String-to-var2035=([java.lang.String], java.lang.Object), var1331_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), cast-from-var858-to-var1331=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var1666-init=([], org.hibernate.boot.MappingException), arr-var2035-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), propertyRefOrigin/-767625807=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1666-to-var2943=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1784=org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl, var3667=r0, var858=org.hibernate.boot.spi.InFlightMetadataCollector, var2638=r5, var347=org.hibernate.internal.CoreMessageLogger, var991=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var333=$r4, var2321=$r3, var3569=$r2, var1971=$r1, var2035=java.lang.Object, var646="Performing delayed property-ref handling [%s, %s, %s]", var280=$r6, var2886=org.hibernate.mapping.PersistentClass, var1331=org.hibernate.boot.Metadata, var2050=r7, var1666=org.hibernate.boot.MappingException, var1097=$r27, var606=java.util.Locale, var2290=$r24, var3147=$r21, var2356=$r22, var1931=$r23, var3901=$r26, var538=org.hibernate.boot.jaxb.Origin, var3525=$r25, var2943=java.lang.Throwable, var568=$r29}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl=var1784, r0=var3667, org.hibernate.boot.spi.InFlightMetadataCollector=var858, r5=var2638, org.hibernate.internal.CoreMessageLogger=var347, org.hibernate.boot.model.source.internal.hbm.ModelBinder=var991, $r4=var333, $r3=var2321, $r2=var3569, $r1=var1971, java.lang.Object=var2035, "Performing delayed property-ref handling [%s, %s, %s]"=var646, $r6=var280, org.hibernate.mapping.PersistentClass=var2886, org.hibernate.boot.Metadata=var1331, r7=var2050, org.hibernate.boot.MappingException=var1666, $r27=var1097, java.util.Locale=var606, $r24=var2290, $r21=var3147, $r22=var2356, $r23=var1931, $r26=var3901, org.hibernate.boot.jaxb.Origin=var538, $r25=var3525, java.lang.Throwable=var2943, $r29=var568}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl;	r5 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector;	$r4 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.internal.CoreMessageLogger access$500()>();	$r3 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName>;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedPropertyName>;	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String sourceElementSynopsis>;	interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void tracef(java.lang.String,java.lang.Object,java.lang.Object,java.lang.Object)>("Performing delayed property-ref handling [%s, %s, %s]", $r3, $r2, $r1);	$r6 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName>;	r7 = interfaceinvoke r5.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r6);	if r7 != null goto $r8 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedPropertyName>;	$r27 = new org.hibernate.boot.MappingException;	$r24 = <java.util.Locale: java.util.Locale ENGLISH>;	$r21 = newarray (java.lang.Object)[2];	$r22 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String sourceElementSynopsis>;	$r21[0] = $r22;	$r23 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: java.lang.String referencedEntityName>;	$r21[1] = $r23;	$r26 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r24, "property-ref [%s] referenced an unmapped entity [%s]", $r21);	$r25 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$DelayedPropertyReferenceHandlerImpl: org.hibernate.boot.jaxb.Origin propertyRefOrigin>;	specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r26, $r25);	$r29 = (java.lang.Throwable) $r27;	throw $r29
;block_num 2