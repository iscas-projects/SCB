(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-650193531 (var668) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var668 var668)
(declare-const var2581 var668) ; Statement: r0 := @this: org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl 
(assert (not (= var2581 null-var668)))
(define-const var489 String (name/-650193531 var2581)) ; Statement: $r1 = r0.<org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl: java.lang.String name> 
(assert true)
(define-const var2673 Int (hashCode/-467973558 var489)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-650193531=([org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var668=org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl, var2581=r0, var489=$r1, var2673=$i0}
; {org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl=var668, r0=var2581, $r1=var489, $i0=var2673}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl;	$r1 = r0.<org.hibernate.boot.archive.scan.internal.ClassDescriptorImpl: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1