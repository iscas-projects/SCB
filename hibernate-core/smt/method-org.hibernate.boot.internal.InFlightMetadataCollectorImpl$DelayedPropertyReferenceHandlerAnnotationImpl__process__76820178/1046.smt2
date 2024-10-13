(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var3083 0)
(declare-sort var3075 0)
(declare-sort var3538 0)
(declare-sort var3237 0)
(declare-sort var3435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun referencedClass/437449839 (var2609) String)
(declare-fun var3538_getEntityBinding/-1652541374 (var3538 String) var3075)
(declare-fun cast-from-var3083-to-var3538 (var3083) var3538)
(declare-fun var3237-init () var3237)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3237 String) void)
(declare-fun cast-from-var3237-to-var3435 (var3237) var3435)
(declare-const null-var2609 var2609)
(declare-const null-var3083 var3083)
(declare-const null-var3075 var3075)
(declare-const var1761 var2609) ; Statement: r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl 
(assert (not (= var1761 null-var2609)))
(declare-const var1692 var3083) ; Statement: r0 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector 
(assert (not (= var1692 null-var3083)))
(define-const var759 String (referencedClass/437449839 var1761)) ; Statement: $r2 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String referencedClass> 
(define-const var1743 var3075 (var3538_getEntityBinding/-1652541374 (cast-from-var3083-to-var3538 var1692) var759)) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r2) 
 ; Statement: if r3 != null goto $r4 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String propertyName> 
(assert (not (not (= var1743 null-var3075)))) ; Negate: Cond: r3 != null  
(define-const var2421 var3237 var3237-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var2553 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2553)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2553!1 String)
(assert (= var2553!1 ""))
(assert true)
(define-const var3295 String (append/672562846 var2553!1 "property-ref to unmapped class: ")) ; Statement: $r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property-ref to unmapped class: ") 
(declare-const var2553!2 String)
(assert (= var2553!2 (str.++ var2553!1 "property-ref to unmapped class: ")))
(define-const var3862 String (referencedClass/437449839 var1761)) ; Statement: $r10 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String referencedClass> 
(assert true)
(define-const var1576 String (append/672562846 var3295 var3862)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3295!1 String)
(assert (= var3295!1 (str.++ var3295 var3862)))
(assert true)
(define-const var3289 String (toString/-2075883882 var1576)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2421 var3289)) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var2421!1 var3237)
(declare-const var3289!1 String)
(define-const var3105 var3435 (cast-from-var3237-to-var3435 var2421!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {referencedClass/437449839=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl], java.lang.String), var3538_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), cast-from-var3083-to-var3538=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var3237-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3237-to-var3435=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2609=org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl, var1761=r1, var3083=org.hibernate.boot.spi.InFlightMetadataCollector, var1692=r0, var759=$r2, var3075=org.hibernate.mapping.PersistentClass, var3538=org.hibernate.boot.Metadata, var1743=r3, var3237=org.hibernate.MappingException, var2421=$r15, var2553=$r14, var3295=$r11, var3862=$r10, var1576=$r12, var3289=$r13, var3435=java.lang.Throwable, var3105=$r16}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl=var2609, r1=var1761, org.hibernate.boot.spi.InFlightMetadataCollector=var3083, r0=var1692, $r2=var759, org.hibernate.mapping.PersistentClass=var3075, org.hibernate.boot.Metadata=var3538, r3=var1743, org.hibernate.MappingException=var3237, $r15=var2421, $r14=var2553, $r11=var3295, $r10=var3862, $r12=var1576, $r13=var3289, java.lang.Throwable=var3435, $r16=var3105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl;	r0 := @parameter0: org.hibernate.boot.spi.InFlightMetadataCollector;	$r2 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String referencedClass>;	r3 = interfaceinvoke r0.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r2);	if r3 != null goto $r4 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String propertyName>;	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property-ref to unmapped class: ");	$r10 = r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl$DelayedPropertyReferenceHandlerAnnotationImpl: java.lang.String referencedClass>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2