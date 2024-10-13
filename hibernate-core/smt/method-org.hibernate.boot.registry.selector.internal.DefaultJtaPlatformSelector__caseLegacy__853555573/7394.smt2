(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3957 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var3030 var3030)
(declare-const var2673 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2673 null-String)))
(declare-const var3169 var3030) ; Statement: r4 := @parameter1: org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector 
(assert (not (= var3169 null-var3030)))
(assert true)
(define-const var394 Bool (= var2673 "org.hibernate.service.jta.platform.internal.BorlandEnterpriseServerJtaPlatform")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.hibernate.service.jta.platform.internal.BorlandEnterpriseServerJtaPlatform") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.hibernate.service.jta.platform.internal.JBossAppServerJtaPlatform") 
(assert (not (= (ite var394 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/engine/transaction/jta/platform/internal/BorlandEnterpriseServerJtaPlatform;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2673=r0, var3957=null_type, var3030=org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector, var3169=r4, var394=$z0}
; {r0=var2673, null_type=var3957, org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector=var3030, r4=var3169, $z0=var394}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.hibernate.service.jta.platform.internal.BorlandEnterpriseServerJtaPlatform");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.hibernate.service.jta.platform.internal.JBossAppServerJtaPlatform");	return class "Lorg/hibernate/engine/transaction/jta/platform/internal/BorlandEnterpriseServerJtaPlatform;"
;block_num 2