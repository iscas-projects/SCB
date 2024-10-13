(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1090 0)
(declare-sort var2204 0)
(declare-sort var1881 0)
(declare-sort var3114 0)
(declare-sort var3829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var1090) var1881)
(declare-fun var1881_checkOpen/1415919888 (var1881 Bool) void)
(declare-fun getParameterMetadata/-437200728 (var1090) var3114)
(declare-fun var3114_getQueryParameter/286389064 (var3114 String) var3829)
(declare-fun var3829_getParameterType/1551337797 (var3829) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var1090 var1090)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3351 var1090) ; Statement: r0 := @this: org.hibernate.query.internal.AbstractProducedQuery 
(assert (not (= var3351 null-var1090)))
(declare-const var513 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var513 null-String)))
(declare-const var2457 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var2457 null-ClassObject)))
(assert true)
(define-const var1241 var1881 (getProducer/-1443624759 var3351)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
;(assert (var1881_checkOpen/1415919888 var1241 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0) 

(declare-const var1241!1 var1881)
(declare-const var543 Int)
(assert true)
(define-const var1801 var3114 (getParameterMetadata/-437200728 var3351)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>() 
(define-const var2502 var3829 (var3114_getQueryParameter/286389064 var1801 var513)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r2) 
(define-const var755 ClassObject (var3829_getParameterType/1551337797 var2502)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>() 
(assert true)
(define-const var1011 Bool (isAssignableFrom/-1028998700 var755 var2457)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5) 
 ; Statement: if $z0 != 0 goto return r4 
(assert (not (= (ite var1011 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), var1881_checkOpen/1415919888=([org.hibernate.engine.spi.SharedSessionContractImplementor, boolean], void), getParameterMetadata/-437200728=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.query.ParameterMetadata), var3114_getQueryParameter/286389064=([org.hibernate.query.ParameterMetadata, java.lang.String], org.hibernate.query.QueryParameter), var3829_getParameterType/1551337797=([org.hibernate.query.QueryParameter], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var1090=org.hibernate.query.internal.AbstractProducedQuery, var3351=r0, var513=r2, var2204=null_type, var2457=r5, var1881=org.hibernate.engine.spi.SharedSessionContractImplementor, var1241=$r1, var543=0, var3114=org.hibernate.query.ParameterMetadata, var1801=$r3, var3829=org.hibernate.query.QueryParameter, var2502=r4, var755=$r6, var1011=$z0}
; {org.hibernate.query.internal.AbstractProducedQuery=var1090, r0=var3351, r2=var513, null_type=var2204, r5=var2457, org.hibernate.engine.spi.SharedSessionContractImplementor=var1881, $r1=var1241, 0=var543, org.hibernate.query.ParameterMetadata=var3114, $r3=var1801, org.hibernate.query.QueryParameter=var3829, r4=var2502, $r6=var755, $z0=var1011}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.AbstractProducedQuery;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Class;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0);	$r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>();	r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r2);	$r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>();	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5);	if $z0 != 0 goto return r4;	return r4
;block_num 2