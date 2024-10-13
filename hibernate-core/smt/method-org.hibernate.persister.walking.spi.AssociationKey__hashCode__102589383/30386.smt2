(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun table/879341128 (var3792) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3792 var3792)
(declare-const var722 var3792) ; Statement: r0 := @this: org.hibernate.persister.walking.spi.AssociationKey 
(assert (not (= var722 null-var3792)))
(define-const var221 String (table/879341128 var722)) ; Statement: $r1 = r0.<org.hibernate.persister.walking.spi.AssociationKey: java.lang.String table> 
(assert true)
(define-const var438 Int (hashCode/-467973558 var221)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {table/879341128=([org.hibernate.persister.walking.spi.AssociationKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3792=org.hibernate.persister.walking.spi.AssociationKey, var722=r0, var221=$r1, var438=$i0}
; {org.hibernate.persister.walking.spi.AssociationKey=var3792, r0=var722, $r1=var221, $i0=var438}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.persister.walking.spi.AssociationKey;	$r1 = r0.<org.hibernate.persister.walking.spi.AssociationKey: java.lang.String table>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1