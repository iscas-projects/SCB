(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var282 0)
(declare-sort var2686 0)
(declare-sort var2437 0)
(declare-sort var927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var282) var2686)
(declare-fun var2686_checkOpen/1415919888 (var2686 Bool) void)
(declare-fun getParameterMetadata/-437200728 (var282) var2437)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2437_getQueryParameter/969910513 (var2437 Int) var927)
(declare-fun var927_getParameterType/1551337797 (var927) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var282 var282)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var3171 var282) ; Statement: r0 := @this: org.hibernate.query.internal.AbstractProducedQuery 
(assert (not (= var3171 null-var282)))
(declare-const var486 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var486 null-Int)))
(declare-const var3154 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var3154 null-ClassObject)))
(assert true)
(define-const var3181 var2686 (getProducer/-1443624759 var3171)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
;(assert (var2686_checkOpen/1415919888 var3181 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0) 

(declare-const var3181!1 var2686)
(declare-const var3906 Int)
(assert true)
(define-const var705 var2437 (getParameterMetadata/-437200728 var3171)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>() 
(define-const var56 Int (Int_valueOf/-1371140006 var486)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var825 var927 (var2437_getQueryParameter/969910513 var705 var56)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2) 
(define-const var2987 ClassObject (var927_getParameterType/1551337797 var825)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>() 
(assert true)
(define-const var3314 Bool (isAssignableFrom/-1028998700 var2987 var3154)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5) 
 ; Statement: if $z0 != 0 goto return r4 
(assert (not (= (ite var3314 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), var2686_checkOpen/1415919888=([org.hibernate.engine.spi.SharedSessionContractImplementor, boolean], void), getParameterMetadata/-437200728=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.query.ParameterMetadata), Int_valueOf/-1371140006=([int], java.lang.Integer), var2437_getQueryParameter/969910513=([org.hibernate.query.ParameterMetadata, java.lang.Integer], org.hibernate.query.QueryParameter), var927_getParameterType/1551337797=([org.hibernate.query.QueryParameter], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var282=org.hibernate.query.internal.AbstractProducedQuery, var3171=r0, var486=i0, var3154=r5, var2686=org.hibernate.engine.spi.SharedSessionContractImplementor, var3181=$r1, var3906=0, var2437=org.hibernate.query.ParameterMetadata, var705=$r3, var56=$r2, var927=org.hibernate.query.QueryParameter, var825=r4, var2987=$r6, var3314=$z0}
; {org.hibernate.query.internal.AbstractProducedQuery=var282, r0=var3171, i0=var486, r5=var3154, org.hibernate.engine.spi.SharedSessionContractImplementor=var2686, $r1=var3181, 0=var3906, org.hibernate.query.ParameterMetadata=var2437, $r3=var705, $r2=var56, org.hibernate.query.QueryParameter=var927, r4=var825, $r6=var2987, $z0=var3314}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.AbstractProducedQuery;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.Class;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0);	$r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2);	$r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>();	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5);	if $z0 != 0 goto return r4;	return r4
;block_num 2