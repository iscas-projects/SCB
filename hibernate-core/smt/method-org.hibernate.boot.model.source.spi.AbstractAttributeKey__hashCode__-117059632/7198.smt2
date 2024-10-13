(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fullPath/-1863940065 (var2036) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2036 var2036)
(declare-const var1660 var2036) ; Statement: r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey 
(assert (not (= var1660 null-var2036)))
(define-const var3739 String (fullPath/-1863940065 var1660)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath> 
(assert true)
(define-const var817 Int (hashCode/-467973558 var3739)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {fullPath/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2036=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var1660=r0, var3739=$r1, var817=$i0}
; {org.hibernate.boot.model.source.spi.AbstractAttributeKey=var2036, r0=var1660, $r1=var3739, $i0=var817}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey;	$r1 = r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1