(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var405 0)
(declare-sort var46 0)
(declare-sort var683 0)
(declare-sort var468 0)
(declare-sort var3151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaders/824079012 (var1831) var46)
(declare-fun var468_bootstrap$/1858615197 (var1831) var683)
(declare-fun getOrCreateByInternalFetchProfileMerge/457491060 (var46 var683) var3151)
(declare-const null-var1831 var1831)
(declare-const null-String String)
(declare-const var1199 var1831) ; Statement: r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var1199 null-var1831)))
(declare-const var3428 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3428 null-String)))
(define-const var1874 String "merge") ; Statement: $r1 = "merge" 
(assert true)
(define-const var3679 Bool (= var1874 var3428)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "refresh" 
(assert (not (= (ite var3679 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2880 var46 (loaders/824079012 var1199)) ; Statement: $r7 = r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.EntityLoaderLazyCollection loaders> 
(define-const var1130 var683 (var468_bootstrap$/1858615197 var1199)) ; Statement: $r8 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister$buildMergeCascadeEntityLoader__277: java.util.function.Function bootstrap$(org.hibernate.persister.entity.AbstractEntityPersister)>(r3) 
(assert true)
(define-const var2321 var3151 (getOrCreateByInternalFetchProfileMerge/457491060 var2880 var1130)) ; Statement: $r9 = virtualinvoke $r7.<org.hibernate.persister.entity.EntityLoaderLazyCollection: org.hibernate.loader.entity.UniqueEntityLoader getOrCreateByInternalFetchProfileMerge(java.util.function.Function)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {loaders/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityLoaderLazyCollection), var468_bootstrap$/1858615197=([org.hibernate.persister.entity.AbstractEntityPersister], java.util.function.Function), getOrCreateByInternalFetchProfileMerge/457491060=([org.hibernate.persister.entity.EntityLoaderLazyCollection, java.util.function.Function], org.hibernate.loader.entity.UniqueEntityLoader)}
; {var1831=org.hibernate.persister.entity.AbstractEntityPersister, var1199=r3, var3428=r0, var405=null_type, var1874=$r1, var3679=$z0, var46=org.hibernate.persister.entity.EntityLoaderLazyCollection, var2880=$r7, var683=java.util.function.Function, var468=org.hibernate.persister.entity.AbstractEntityPersister$buildMergeCascadeEntityLoader__277, var1130=$r8, var3151=org.hibernate.loader.entity.UniqueEntityLoader, var2321=$r9}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1831, r3=var1199, r0=var3428, null_type=var405, $r1=var1874, $z0=var3679, org.hibernate.persister.entity.EntityLoaderLazyCollection=var46, $r7=var2880, java.util.function.Function=var683, org.hibernate.persister.entity.AbstractEntityPersister$buildMergeCascadeEntityLoader__277=var468, $r8=var1130, org.hibernate.loader.entity.UniqueEntityLoader=var3151, $r9=var2321}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r0 := @parameter0: java.lang.String;	$r1 = "merge";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "refresh";	$r7 = r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.EntityLoaderLazyCollection loaders>;	$r8 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister$buildMergeCascadeEntityLoader__277: java.util.function.Function bootstrap$(org.hibernate.persister.entity.AbstractEntityPersister)>(r3);	$r9 = virtualinvoke $r7.<org.hibernate.persister.entity.EntityLoaderLazyCollection: org.hibernate.loader.entity.UniqueEntityLoader getOrCreateByInternalFetchProfileMerge(java.util.function.Function)>($r8);	return $r9
;block_num 2