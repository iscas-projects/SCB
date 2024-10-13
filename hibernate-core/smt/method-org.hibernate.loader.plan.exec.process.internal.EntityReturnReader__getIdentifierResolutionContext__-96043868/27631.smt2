(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2643 0)
(declare-sort var1016 0)
(declare-sort var976 0)
(declare-sort var2350 0)
(declare-sort var2493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityReturn/-2053522021 (var2643) var976)
(declare-fun var1016_getProcessingState/1977400263 (var1016 var2493) var2350)
(declare-fun cast-from-var976-to-var2493 (var976) var2493)
(declare-const null-var2643 var2643)
(declare-const null-var1016 var1016)
(declare-const null-var2350 var2350)
(declare-const var3299 var2643) ; Statement: r1 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReturnReader 
(assert (not (= var3299 null-var2643)))
(declare-const var3197 var1016) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext 
(assert (not (= var3197 null-var1016)))
(define-const var1872 var976 (entityReturn/-2053522021 var3299)) ; Statement: $r2 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn> 
(define-const var3714 var2350 (var1016_getProcessingState/1977400263 var3197 (cast-from-var976-to-var2493 var1872))) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState getProcessingState(org.hibernate.loader.plan.spi.EntityReference)>($r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3714 null-var2350))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {entityReturn/-2053522021=([org.hibernate.loader.plan.exec.process.internal.EntityReturnReader], org.hibernate.loader.plan.spi.EntityReturn), var1016_getProcessingState/1977400263=([org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, org.hibernate.loader.plan.spi.EntityReference], org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState), cast-from-var976-to-var2493=([org.hibernate.loader.plan.spi.EntityReturn], org.hibernate.loader.plan.spi.EntityReference)}
; {var2643=org.hibernate.loader.plan.exec.process.internal.EntityReturnReader, var3299=r1, var1016=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, var3197=r0, var976=org.hibernate.loader.plan.spi.EntityReturn, var1872=$r2, var2350=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState, var2493=org.hibernate.loader.plan.spi.EntityReference, var3714=r3}
; {org.hibernate.loader.plan.exec.process.internal.EntityReturnReader=var2643, r1=var3299, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext=var1016, r0=var3197, org.hibernate.loader.plan.spi.EntityReturn=var976, $r2=var1872, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState=var2350, org.hibernate.loader.plan.spi.EntityReference=var2493, r3=var3714}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReturnReader;	r0 := @parameter0: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext;	$r2 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn>;	r3 = interfaceinvoke r0.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState getProcessingState(org.hibernate.loader.plan.spi.EntityReference)>($r2);	if r3 != null goto return r3;	return r3
;block_num 2