(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var3950 0)
(declare-sort var3234 0)
(declare-sort var2654 0)
(declare-sort var3601 0)
(declare-sort var1974 0)
(declare-sort var970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var3188) var3234)
(declare-fun var3234_containsReference/1710341324 (var3234 var3950) Bool)
(declare-fun var3950_getHibernateType/-414938688 (var3950) var2654)
(declare-fun makeBinding/-33587292 (var3188 var2654) var3601)
(declare-fun parameterBindingMap/-1176242348 (var3188) var1974)
(declare-fun var1974_put/1464166817 (var1974 var970 var970) var970)
(declare-fun cast-from-var3950-to-var970 (var3950) var970)
(declare-fun cast-from-var3601-to-var970 (var3601) var970)
(declare-const null-var3188 var3188)
(declare-const null-var3950 var3950)
(declare-const var3188-$assertionsDisabled Bool)
(declare-const var2000 var3188) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var2000 null-var3188)))
(declare-const var446 var3950) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var446 null-var3950)))
(define-const var958 Bool var3188-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.query.internal.QueryParameterBindingsImpl: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(assert (not (= (ite var958 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2465 var3234 (parameterMetadata/-1176242348 var2000)) ; Statement: $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var2162 Bool (var3234_containsReference/1710341324 var2465 var446)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: boolean containsReference(org.hibernate.query.QueryParameter)>(r1) 
 ; Statement: if $z1 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>() 
(assert (not (= (ite var2162 1 0) 0))) ; Cond: $z1 != 0 
(define-const var32 var2654 (var3950_getHibernateType/-414938688 var446)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>() 
(assert true)
(define-const var2505 var3601 (makeBinding/-33587292 var2000 var32)) ; Statement: r4 = virtualinvoke r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.spi.QueryParameterBinding makeBinding(org.hibernate.type.Type)>($r3) 
(define-const var1224 var1974 (parameterBindingMap/-1176242348 var2000)) ; Statement: $r5 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: java.util.Map parameterBindingMap> 
;(assert (var1974_put/1464166817 var1224 (cast-from-var3950-to-var970 var446) (cast-from-var3601-to-var970 var2505))) ; Statement: interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r4) 

(declare-const var1224!1 var1974)
(declare-const var446!1 var3950)
(declare-const var2505!1 var3601)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), var3234_containsReference/1710341324=([org.hibernate.query.ParameterMetadata, org.hibernate.query.QueryParameter], boolean), var3950_getHibernateType/-414938688=([org.hibernate.query.QueryParameter], org.hibernate.type.Type), makeBinding/-33587292=([org.hibernate.query.internal.QueryParameterBindingsImpl, org.hibernate.type.Type], org.hibernate.query.spi.QueryParameterBinding), parameterBindingMap/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], java.util.Map), var1974_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3950-to-var970=([org.hibernate.query.QueryParameter], java.lang.Object), cast-from-var3601-to-var970=([org.hibernate.query.spi.QueryParameterBinding], java.lang.Object)}
; {var3188=org.hibernate.query.internal.QueryParameterBindingsImpl, var2000=r0, var3950=org.hibernate.query.QueryParameter, var446=r1, var958=$z0, var3234=org.hibernate.query.ParameterMetadata, var2465=$r2, var2162=$z1, var2654=org.hibernate.type.Type, var32=$r3, var3601=org.hibernate.query.spi.QueryParameterBinding, var2505=r4, var1974=java.util.Map, var1224=$r5, var970=java.lang.Object}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var3188, r0=var2000, org.hibernate.query.QueryParameter=var3950, r1=var446, $z0=var958, org.hibernate.query.ParameterMetadata=var3234, $r2=var2465, $z1=var2162, org.hibernate.type.Type=var2654, $r3=var32, org.hibernate.query.spi.QueryParameterBinding=var3601, r4=var2505, java.util.Map=var1974, $r5=var1224, java.lang.Object=var970}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	r1 := @parameter0: org.hibernate.query.QueryParameter;	$z0 = <org.hibernate.query.internal.QueryParameterBindingsImpl: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$z1 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: boolean containsReference(org.hibernate.query.QueryParameter)>(r1);	if $z1 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>();	$r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>();	r4 = virtualinvoke r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.spi.QueryParameterBinding makeBinding(org.hibernate.type.Type)>($r3);	$r5 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: java.util.Map parameterBindingMap>;	interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r4);	return r4
;block_num 3