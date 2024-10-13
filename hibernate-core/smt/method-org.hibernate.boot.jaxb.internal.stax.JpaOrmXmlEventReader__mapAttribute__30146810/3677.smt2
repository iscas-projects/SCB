(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var2215 0)
(declare-sort var1659 0)
(declare-sort var550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2215_getName/165508916 (var2215) var550)
(declare-fun getLocalPart/-809441474 (var550) String)
(declare-const null-var2600 var2600)
(declare-const null-var2215 var2215)
(declare-const null-var1659 var1659)
(declare-const var3874 var2600) ; Statement: r9 := @this: org.hibernate.boot.jaxb.internal.stax.JpaOrmXmlEventReader 
(assert (not (= var3874 null-var2600)))
(declare-const var3553 var2215) ; Statement: r0 := @parameter0: javax.xml.stream.events.StartElement 
(assert (not (= var3553 null-var2215)))
(declare-const var2764 var1659) ; Statement: r4 := @parameter1: javax.xml.stream.events.Attribute 
(assert (not (= var2764 null-var1659)))
(define-const var1013 String "entity-mappings") ; Statement: $r3 = "entity-mappings" 
(define-const var403 var550 (var2215_getName/165508916 var3553)) ; Statement: $r1 = interfaceinvoke r0.<javax.xml.stream.events.StartElement: javax.xml.namespace.QName getName()>() 
(assert true)
(define-const var232 String (getLocalPart/-809441474 var403)) ; Statement: $r2 = virtualinvoke $r1.<javax.xml.namespace.QName: java.lang.String getLocalPart()>() 
(assert true)
(define-const var1780 Bool (= var1013 var232)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return r4 
(assert (= (ite var1780 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2215_getName/165508916=([javax.xml.stream.events.StartElement], javax.xml.namespace.QName), getLocalPart/-809441474=([javax.xml.namespace.QName], java.lang.String)}
; {var2600=org.hibernate.boot.jaxb.internal.stax.JpaOrmXmlEventReader, var3874=r9, var2215=javax.xml.stream.events.StartElement, var3553=r0, var1659=javax.xml.stream.events.Attribute, var2764=r4, var1013=$r3, var550=javax.xml.namespace.QName, var403=$r1, var232=$r2, var1780=$z0}
; {org.hibernate.boot.jaxb.internal.stax.JpaOrmXmlEventReader=var2600, r9=var3874, javax.xml.stream.events.StartElement=var2215, r0=var3553, javax.xml.stream.events.Attribute=var1659, r4=var2764, $r3=var1013, javax.xml.namespace.QName=var550, $r1=var403, $r2=var232, $z0=var1780}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: org.hibernate.boot.jaxb.internal.stax.JpaOrmXmlEventReader;	r0 := @parameter0: javax.xml.stream.events.StartElement;	r4 := @parameter1: javax.xml.stream.events.Attribute;	$r3 = "entity-mappings";	$r1 = interfaceinvoke r0.<javax.xml.stream.events.StartElement: javax.xml.namespace.QName getName()>();	$r2 = virtualinvoke $r1.<javax.xml.namespace.QName: java.lang.String getLocalPart()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return r4;	return r4
;block_num 2