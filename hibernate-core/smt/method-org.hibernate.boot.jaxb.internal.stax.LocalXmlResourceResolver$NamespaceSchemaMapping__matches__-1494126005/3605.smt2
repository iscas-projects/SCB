(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2860 0)
(declare-sort var334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/1169654522 (var2860) String)
(declare-const null-var2860 var2860)
(declare-const null-String String)
(declare-const var3745 var2860) ; Statement: r0 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping 
(assert (not (= var3745 null-var2860)))
(declare-const var3935 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3935 null-String)))
(define-const var3402 String (namespace/1169654522 var3745)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping: java.lang.String namespace> 
(assert true)
(define-const var601 Bool (= var3402 var3935)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/1169654522=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping], java.lang.String)}
; {var2860=org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping, var3745=r0, var3935=r1, var334=null_type, var3402=$r2, var601=$z0}
; {org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping=var2860, r0=var3745, r1=var3935, null_type=var334, $r2=var3402, $z0=var601}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$NamespaceSchemaMapping: java.lang.String namespace>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1