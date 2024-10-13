(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var958 0)
(declare-sort var3802 0)
(declare-sort var2517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var742) var3802)
(declare-fun var3802_getQueryParameter/286389064 (var3802 String) var2517)
(declare-const null-var742 var742)
(declare-const null-String String)
(declare-const null-var2517 var2517)
(declare-const var229 var742) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var229 null-var742)))
(declare-const var2380 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2380 null-String)))
(define-const var3808 var3802 (parameterMetadata/-1176242348 var229)) ; Statement: $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var1405 var2517 (var3802_getQueryParameter/286389064 var3808 var2380)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1405 null-var2517))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), var3802_getQueryParameter/286389064=([org.hibernate.query.ParameterMetadata, java.lang.String], org.hibernate.query.QueryParameter)}
; {var742=org.hibernate.query.internal.QueryParameterBindingsImpl, var229=r0, var2380=r1, var958=null_type, var3802=org.hibernate.query.ParameterMetadata, var3808=$r2, var2517=org.hibernate.query.QueryParameter, var1405=r3}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var742, r0=var229, r1=var2380, null_type=var958, org.hibernate.query.ParameterMetadata=var3802, $r2=var3808, org.hibernate.query.QueryParameter=var2517, r3=var1405}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	r3 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2