(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var43 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fullPath/-1863940065 (var43) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var43 var43)
(declare-const var3511 var43) ; Statement: r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey 
(assert (not (= var3511 null-var43)))
(define-const var3607 String (fullPath/-1863940065 var3511)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath> 
(assert true)
(define-const var3780 Bool (contains/1009244746 var3607 (cast-from-String-to-String ".collection&&element"))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".collection&&element") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {fullPath/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var43=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3511=r0, var3607=$r1, var3780=$z0}
; {org.hibernate.boot.model.source.spi.AbstractAttributeKey=var43, r0=var3511, $r1=var3607, $z0=var3780}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey;	$r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".collection&&element");	return $z0
;block_num 1