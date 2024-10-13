(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1857153984 (var2795) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2795 var2795)
(declare-const var2281 var2795) ; Statement: r0 := @this: org.hibernate.engine.query.spi.NamedParameterDescriptor 
(assert (not (= var2281 null-var2795)))
(assert true)
(define-const var2337 String (getName/1857153984 var2281)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.engine.query.spi.NamedParameterDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2233 Int (hashCode/-467973558 var2337)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1857153984=([org.hibernate.engine.query.spi.NamedParameterDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2795=org.hibernate.engine.query.spi.NamedParameterDescriptor, var2281=r0, var2337=$r1, var2233=$i0}
; {org.hibernate.engine.query.spi.NamedParameterDescriptor=var2795, r0=var2281, $r1=var2337, $i0=var2233}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.NamedParameterDescriptor;	$r1 = virtualinvoke r0.<org.hibernate.engine.query.spi.NamedParameterDescriptor: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1