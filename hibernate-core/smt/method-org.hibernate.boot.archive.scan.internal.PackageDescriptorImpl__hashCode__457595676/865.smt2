(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1651861587 (var1933) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1933 var1933)
(declare-const var1073 var1933) ; Statement: r0 := @this: org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl 
(assert (not (= var1073 null-var1933)))
(define-const var2526 String (name/1651861587 var1073)) ; Statement: $r1 = r0.<org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl: java.lang.String name> 
(assert true)
(define-const var1700 Int (hashCode/-467973558 var2526)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1651861587=([org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1933=org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl, var1073=r0, var2526=$r1, var1700=$i0}
; {org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl=var1933, r0=var1073, $r1=var2526, $i0=var1700}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl;	$r1 = r0.<org.hibernate.boot.archive.scan.internal.PackageDescriptorImpl: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1