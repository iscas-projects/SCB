(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun property/-1863940065 (var2553) String)
(declare-const null-var2553 var2553)
(declare-const var1359 var2553) ; Statement: r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey 
(assert (not (= var1359 null-var2553)))
(define-const var156 String "collection&&element") ; Statement: $r2 = "collection&&element" 
(define-const var289 String (property/-1863940065 var1359)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String property> 
(assert true)
(define-const var1724 Bool (= var156 var289)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {property/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String)}
; {var2553=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var1359=r0, var156=$r2, var289=$r1, var1724=$z0}
; {org.hibernate.boot.model.source.spi.AbstractAttributeKey=var2553, r0=var1359, $r2=var156, $r1=var289, $z0=var1724}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey;	$r2 = "collection&&element";	$r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String property>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1