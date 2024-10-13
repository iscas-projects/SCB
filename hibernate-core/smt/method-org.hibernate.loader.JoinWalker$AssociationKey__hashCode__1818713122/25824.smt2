(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun table/-1660491123 (var429) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var429 var429)
(declare-const var3948 var429) ; Statement: r0 := @this: org.hibernate.loader.JoinWalker$AssociationKey 
(assert (not (= var3948 null-var429)))
(define-const var1232 String (table/-1660491123 var3948)) ; Statement: $r1 = r0.<org.hibernate.loader.JoinWalker$AssociationKey: java.lang.String table> 
(assert true)
(define-const var68 Int (hashCode/-467973558 var1232)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {table/-1660491123=([org.hibernate.loader.JoinWalker$AssociationKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var429=org.hibernate.loader.JoinWalker$AssociationKey, var3948=r0, var1232=$r1, var68=$i0}
; {org.hibernate.loader.JoinWalker$AssociationKey=var429, r0=var3948, $r1=var1232, $i0=var68}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.loader.JoinWalker$AssociationKey;	$r1 = r0.<org.hibernate.loader.JoinWalker$AssociationKey: java.lang.String table>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1