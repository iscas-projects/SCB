(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3229 0)
(declare-sort var3574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3229_getProviderClassName/398710613 (var3229) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3229 var3229)
(declare-const null-String String)
(declare-const var2593 var3229) ; Statement: r0 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor 
(assert (not (= var2593 null-var3229)))
(define-const var1434 String (var3229_getProviderClassName/398710613 var2593)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getProviderClassName()>() 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var1434 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var434 String (trim/-847153721 var1434)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3229_getProviderClassName/398710613=([org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3229=org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor, var2593=r0, var1434=r1, var3574=null_type, var434=$r2}
; {org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor=var3229, r0=var2593, r1=var1434, null_type=var3574, $r2=var434}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor;	r1 = interfaceinvoke r0.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getProviderClassName()>();	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	return $r2
;block_num 3