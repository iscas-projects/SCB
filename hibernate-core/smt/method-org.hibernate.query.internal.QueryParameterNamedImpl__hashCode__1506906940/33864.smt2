(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1467710818 (var3184) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3184 var3184)
(declare-const var3431 var3184) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterNamedImpl 
(assert (not (= var3431 null-var3184)))
(assert true)
(define-const var347 String (getName/1467710818 var3431)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.QueryParameterNamedImpl: java.lang.String getName()>() 
(assert true)
(define-const var742 Int (hashCode/-467973558 var347)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1467710818=([org.hibernate.query.internal.QueryParameterNamedImpl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3184=org.hibernate.query.internal.QueryParameterNamedImpl, var3431=r0, var347=$r1, var742=$i0}
; {org.hibernate.query.internal.QueryParameterNamedImpl=var3184, r0=var3431, $r1=var347, $i0=var742}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterNamedImpl;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.QueryParameterNamedImpl: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1