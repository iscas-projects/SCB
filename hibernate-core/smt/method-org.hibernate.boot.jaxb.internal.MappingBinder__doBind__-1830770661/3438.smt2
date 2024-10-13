(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3015 0)
(declare-sort var576 0)
(declare-sort var2588 0)
(declare-sort var892 0)
(declare-sort var247 0)
(declare-sort var3344 0)
(declare-sort var2566 0)
(declare-sort var3107 0)
(declare-sort var2493 0)
(declare-sort var2722 0)
(declare-sort var3849 0)
(declare-sort var2229 0)
(declare-sort var388 0)
(declare-sort var3507 0)
(declare-sort var337 0)
(declare-sort var2189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2588_getName/165508916 (var2588) var247)
(declare-fun getLocalPart/-809441474 (var247) String)
(declare-fun toString/2078675381 (var892) String)
(declare-fun debugf/-1161213948 (var3344 String var2566) void)
(declare-fun cast-from-String-to-var2566 (String) var2566)
(declare-fun var3107-init () var3107)
(declare-fun xmlEventFactory/-903377122 (var3015) var2493)
(declare-fun <init>/-1204145418 (var3107 var576 var2493) void)
(declare-fun hbmXsd/1581819551 (var2722) var3849)
(declare-fun getSchema/1885134110 (var3849) var2229)
(declare-fun hbmJaxbContext/1295401774 (var3015) var388)
(declare-fun jaxb/1796402492 (var3507 var576 var2229 var388 var892) var2566)
(declare-fun cast-from-var3015-to-var3507 (var3015) var3507)
(declare-fun cast-from-var3107-to-var576 (var3107) var576)
(declare-fun cast-from-var2566-to-var337 (var2566) var337)
(declare-fun var2189-init () var2189)
(declare-fun <init>/-2022171893 (var2189 var2566 var892) void)
(declare-fun cast-from-var337-to-var2566 (var337) var2566)
(declare-const null-var3015 var3015)
(declare-const null-var576 var576)
(declare-const null-var2588 var2588)
(declare-const null-var892 var892)
(declare-const var3015-log var3344)
(declare-const var2722-INSTANCE var2722)
(declare-const var3645 var3015) ; Statement: r9 := @this: org.hibernate.boot.jaxb.internal.MappingBinder 
(assert (not (= var3645 null-var3015)))
(declare-const var909 var576) ; Statement: r8 := @parameter0: javax.xml.stream.XMLEventReader 
(assert (not (= var909 null-var576)))
(declare-const var838 var2588) ; Statement: r0 := @parameter1: javax.xml.stream.events.StartElement 
(assert (not (= var838 null-var2588)))
(declare-const var3578 var892) ; Statement: r4 := @parameter2: org.hibernate.boot.jaxb.Origin 
(assert (not (= var3578 null-var892)))
(define-const var3963 var247 (var2588_getName/165508916 var838)) ; Statement: $r1 = interfaceinvoke r0.<javax.xml.stream.events.StartElement: javax.xml.namespace.QName getName()>() 
(assert true)
(define-const var3271 String (getLocalPart/-809441474 var3963)) ; Statement: r2 = virtualinvoke $r1.<javax.xml.namespace.QName: java.lang.String getLocalPart()>() 
(define-const var2094 String "hibernate-mapping") ; Statement: $r3 = "hibernate-mapping" 
(assert true)
(define-const var2511 Bool (= var2094 var3271)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r5 = <org.hibernate.boot.jaxb.internal.MappingBinder: org.jboss.logging.Logger log> 
(assert (not (= (ite var2511 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2151 var3344 var3015-log) ; Statement: $r17 = <org.hibernate.boot.jaxb.internal.MappingBinder: org.jboss.logging.Logger log> 
(assert true)
(define-const var167 String (toString/2078675381 var3578)) ; Statement: $r18 = virtualinvoke r4.<org.hibernate.boot.jaxb.Origin: java.lang.String toString()>() 
(assert true)
;(assert (debugf/-1161213948 var2151 "Performing JAXB binding of hbm.xml document : %s" (cast-from-String-to-var2566 var167))) ; Statement: virtualinvoke $r17.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Performing JAXB binding of hbm.xml document : %s", $r18) 

(declare-const var2151!1 var3344)
(declare-const var2608 String)
(declare-const var167!1 String)
(define-const var1226 var3107 var3107-init) ; Statement: $r32 = new org.hibernate.boot.jaxb.internal.stax.HbmEventReader 
(define-const var571 var2493 (xmlEventFactory/-903377122 var3645)) ; Statement: $r20 = r9.<org.hibernate.boot.jaxb.internal.MappingBinder: javax.xml.stream.XMLEventFactory xmlEventFactory> 
(assert true)
;(assert (<init>/-1204145418 var1226 var909 var571)) ; Statement: specialinvoke $r32.<org.hibernate.boot.jaxb.internal.stax.HbmEventReader: void <init>(javax.xml.stream.XMLEventReader,javax.xml.stream.XMLEventFactory)>(r8, $r20) 

(declare-const var1226!1 var3107)
(declare-const var909!1 var576)
(declare-const var571!1 var2493)
(define-const var1960 var2722 var2722-INSTANCE) ; Statement: $r21 = <org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.MappingXsdSupport INSTANCE> 
(assert true)
(define-const var3405 var3849 (hbmXsd/1581819551 var1960)) ; Statement: $r22 = virtualinvoke $r21.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor hbmXsd()>() 
(assert true)
(define-const var3912 var2229 (getSchema/1885134110 var3405)) ; Statement: $r24 = virtualinvoke $r22.<org.hibernate.boot.xsd.XsdDescriptor: javax.xml.validation.Schema getSchema()>() 
(assert true)
(define-const var2482 var388 (hbmJaxbContext/1295401774 var3645)) ; Statement: $r23 = specialinvoke r9.<org.hibernate.boot.jaxb.internal.MappingBinder: javax.xml.bind.JAXBContext hbmJaxbContext()>() 
(assert true)
(define-const var3749 var2566 (jaxb/1796402492 (cast-from-var3015-to-var3507 var3645) (cast-from-var3107-to-var576 var1226!1) var3912 var2482 var3578)) ; Statement: $r25 = virtualinvoke r9.<org.hibernate.boot.jaxb.internal.MappingBinder: java.lang.Object jaxb(javax.xml.stream.XMLEventReader,javax.xml.validation.Schema,javax.xml.bind.JAXBContext,org.hibernate.boot.jaxb.Origin)>($r32, $r24, $r23, r4) 
(define-const var3055 var337 (cast-from-var2566-to-var337 var3749)) ; Statement: r30 = (org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping) $r25 
(define-const var3686 var2189 var2189-init) ; Statement: $r33 = new org.hibernate.boot.jaxb.spi.Binding 
(assert true)
;(assert (<init>/-2022171893 var3686 (cast-from-var337-to-var2566 var3055) var3578)) ; Statement: specialinvoke $r33.<org.hibernate.boot.jaxb.spi.Binding: void <init>(java.lang.Object,org.hibernate.boot.jaxb.Origin)>(r30, r4) 

(declare-const var3686!1 var2189)
(declare-const var3055!1 var337)
(declare-const var3578!1 var892)
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var2588_getName/165508916=([javax.xml.stream.events.StartElement], javax.xml.namespace.QName), getLocalPart/-809441474=([javax.xml.namespace.QName], java.lang.String), toString/2078675381=([org.hibernate.boot.jaxb.Origin], java.lang.String), debugf/-1161213948=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var2566=([java.lang.String], java.lang.Object), var3107-init=([], org.hibernate.boot.jaxb.internal.stax.HbmEventReader), xmlEventFactory/-903377122=([org.hibernate.boot.jaxb.internal.MappingBinder], javax.xml.stream.XMLEventFactory), <init>/-1204145418=([org.hibernate.boot.jaxb.internal.stax.HbmEventReader, javax.xml.stream.XMLEventReader, javax.xml.stream.XMLEventFactory], void), hbmXsd/1581819551=([org.hibernate.boot.xsd.MappingXsdSupport], org.hibernate.boot.xsd.XsdDescriptor), getSchema/1885134110=([org.hibernate.boot.xsd.XsdDescriptor], javax.xml.validation.Schema), hbmJaxbContext/1295401774=([org.hibernate.boot.jaxb.internal.MappingBinder], javax.xml.bind.JAXBContext), jaxb/1796402492=([org.hibernate.boot.jaxb.internal.AbstractBinder, javax.xml.stream.XMLEventReader, javax.xml.validation.Schema, javax.xml.bind.JAXBContext, org.hibernate.boot.jaxb.Origin], java.lang.Object), cast-from-var3015-to-var3507=([org.hibernate.boot.jaxb.internal.MappingBinder], org.hibernate.boot.jaxb.internal.AbstractBinder), cast-from-var3107-to-var576=([org.hibernate.boot.jaxb.internal.stax.HbmEventReader], javax.xml.stream.XMLEventReader), cast-from-var2566-to-var337=([java.lang.Object], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping), var2189-init=([], org.hibernate.boot.jaxb.spi.Binding), <init>/-2022171893=([org.hibernate.boot.jaxb.spi.Binding, java.lang.Object, org.hibernate.boot.jaxb.Origin], void), cast-from-var337-to-var2566=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping], java.lang.Object)}
; {var3015=org.hibernate.boot.jaxb.internal.MappingBinder, var3645=r9, var576=javax.xml.stream.XMLEventReader, var909=r8, var2588=javax.xml.stream.events.StartElement, var838=r0, var892=org.hibernate.boot.jaxb.Origin, var3578=r4, var247=javax.xml.namespace.QName, var3963=$r1, var3271=r2, var2094=$r3, var2511=$z0, var3344=org.jboss.logging.Logger, var2151=$r17, var167=$r18, var2566=java.lang.Object, var2608="Performing JAXB binding of hbm.xml document : %s", var3107=org.hibernate.boot.jaxb.internal.stax.HbmEventReader, var1226=$r32, var2493=javax.xml.stream.XMLEventFactory, var571=$r20, var2722=org.hibernate.boot.xsd.MappingXsdSupport, var1960=$r21, var3849=org.hibernate.boot.xsd.XsdDescriptor, var3405=$r22, var2229=javax.xml.validation.Schema, var3912=$r24, var388=javax.xml.bind.JAXBContext, var2482=$r23, var3507=org.hibernate.boot.jaxb.internal.AbstractBinder, var3749=$r25, var337=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping, var3055=r30, var2189=org.hibernate.boot.jaxb.spi.Binding, var3686=$r33}
; {org.hibernate.boot.jaxb.internal.MappingBinder=var3015, r9=var3645, javax.xml.stream.XMLEventReader=var576, r8=var909, javax.xml.stream.events.StartElement=var2588, r0=var838, org.hibernate.boot.jaxb.Origin=var892, r4=var3578, javax.xml.namespace.QName=var247, $r1=var3963, r2=var3271, $r3=var2094, $z0=var2511, org.jboss.logging.Logger=var3344, $r17=var2151, $r18=var167, java.lang.Object=var2566, "Performing JAXB binding of hbm.xml document : %s"=var2608, org.hibernate.boot.jaxb.internal.stax.HbmEventReader=var3107, $r32=var1226, javax.xml.stream.XMLEventFactory=var2493, $r20=var571, org.hibernate.boot.xsd.MappingXsdSupport=var2722, $r21=var1960, org.hibernate.boot.xsd.XsdDescriptor=var3849, $r22=var3405, javax.xml.validation.Schema=var2229, $r24=var3912, javax.xml.bind.JAXBContext=var388, $r23=var2482, org.hibernate.boot.jaxb.internal.AbstractBinder=var3507, $r25=var3749, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping=var337, r30=var3055, org.hibernate.boot.jaxb.spi.Binding=var2189, $r33=var3686}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<org.hibernate.boot.jaxb.Origin: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: org.hibernate.boot.jaxb.internal.MappingBinder;	r8 := @parameter0: javax.xml.stream.XMLEventReader;	r0 := @parameter1: javax.xml.stream.events.StartElement;	r4 := @parameter2: org.hibernate.boot.jaxb.Origin;	$r1 = interfaceinvoke r0.<javax.xml.stream.events.StartElement: javax.xml.namespace.QName getName()>();	r2 = virtualinvoke $r1.<javax.xml.namespace.QName: java.lang.String getLocalPart()>();	$r3 = "hibernate-mapping";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r5 = <org.hibernate.boot.jaxb.internal.MappingBinder: org.jboss.logging.Logger log>;	$r17 = <org.hibernate.boot.jaxb.internal.MappingBinder: org.jboss.logging.Logger log>;	$r18 = virtualinvoke r4.<org.hibernate.boot.jaxb.Origin: java.lang.String toString()>();	virtualinvoke $r17.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Performing JAXB binding of hbm.xml document : %s", $r18);	$r32 = new org.hibernate.boot.jaxb.internal.stax.HbmEventReader;	$r20 = r9.<org.hibernate.boot.jaxb.internal.MappingBinder: javax.xml.stream.XMLEventFactory xmlEventFactory>;	specialinvoke $r32.<org.hibernate.boot.jaxb.internal.stax.HbmEventReader: void <init>(javax.xml.stream.XMLEventReader,javax.xml.stream.XMLEventFactory)>(r8, $r20);	$r21 = <org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.MappingXsdSupport INSTANCE>;	$r22 = virtualinvoke $r21.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor hbmXsd()>();	$r24 = virtualinvoke $r22.<org.hibernate.boot.xsd.XsdDescriptor: javax.xml.validation.Schema getSchema()>();	$r23 = specialinvoke r9.<org.hibernate.boot.jaxb.internal.MappingBinder: javax.xml.bind.JAXBContext hbmJaxbContext()>();	$r25 = virtualinvoke r9.<org.hibernate.boot.jaxb.internal.MappingBinder: java.lang.Object jaxb(javax.xml.stream.XMLEventReader,javax.xml.validation.Schema,javax.xml.bind.JAXBContext,org.hibernate.boot.jaxb.Origin)>($r32, $r24, $r23, r4);	r30 = (org.hibernate.boot.jaxb.hbm.spi.JaxbHbmHibernateMapping) $r25;	$r33 = new org.hibernate.boot.jaxb.spi.Binding;	specialinvoke $r33.<org.hibernate.boot.jaxb.spi.Binding: void <init>(java.lang.Object,org.hibernate.boot.jaxb.Origin)>(r30, r4);	return $r33
;block_num 2