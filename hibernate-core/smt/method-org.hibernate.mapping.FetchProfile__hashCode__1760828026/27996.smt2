(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1193498421 (var567) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var567 var567)
(declare-const var458 var567) ; Statement: r0 := @this: org.hibernate.mapping.FetchProfile 
(assert (not (= var458 null-var567)))
(define-const var3065 String (name/1193498421 var458)) ; Statement: $r1 = r0.<org.hibernate.mapping.FetchProfile: java.lang.String name> 
(assert true)
(define-const var591 Int (hashCode/-467973558 var3065)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1193498421=([org.hibernate.mapping.FetchProfile], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var567=org.hibernate.mapping.FetchProfile, var458=r0, var3065=$r1, var591=$i0}
; {org.hibernate.mapping.FetchProfile=var567, r0=var458, $r1=var3065, $i0=var591}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.mapping.FetchProfile;	$r1 = r0.<org.hibernate.mapping.FetchProfile: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1